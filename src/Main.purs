module WAGSI.Main where

import Prelude
import Control.Alt ((<|>))
import Control.Comonad.Cofree (Cofree, (:<))
import Control.Promise (toAffE)
import Data.Array ((..))
import Data.Compactable (compact)
import Data.Either (Either(..))
import Data.Foldable (for_)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe, maybe)
import Data.Nullable (toNullable)
import Data.Traversable (sequence, traverse)
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Typelevel.Num (class Nat, class Pos, toInt')
import Data.Vec as V
import Effect (Effect)
import Effect.Aff (Aff, error, forkAff, joinFiber, launchAff_, parallel, sequential, throwError, try)
import Effect.Aff.Class (class MonadAff)
import Effect.Class (class MonadEffect)
import Effect.Class.Console as Log
import Effect.Ref as Ref
import FRP.Behavior (Behavior, behavior)
import FRP.Behavior.Mouse (position)
import FRP.Event (Event, makeEvent, subscribe)
import FRP.Event.Keyboard as Keyboard
import FRP.Event.Mouse (getMouse)
import FRP.Event.Mouse as Mouse
import Foreign (Foreign)
import Foreign.Object (Object)
import Foreign.Object as O
import Halogen as H
import Halogen.Aff (awaitBody, runHalogenAff)
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Halogen.Subscription as HS
import Halogen.VDom.Driver (runUI)
import Record as R
import Type.Proxy (Proxy(..))
import WAGS.Interpret (AudioContext, BrowserAudioBuffer, BrowserFloatArray, BrowserPeriodicWave, FFIAudio(..), close, context, decodeAudioDataFromUri, defaultFFIAudio, getMicrophoneAndCamera, makeFloatArray, makePeriodicWave, makeUnitCache)
import WAGS.Run (run)
import WAGSI.Plumbing.Audio (piece)
import WAGSI.Plumbing.FFIStuff (Stash)
import WAGSI.Plumbing.Hack (stash, wag)
import WAGSI.Plumbing.Types (NKeys, NSliders, NSwitches, NKnobs)
import WAGSI.Plumbing.Types as Types
import Wagsi.Behavior (ref2Behavior)
import Wagsi.Vec (mapWithTypedIndex, proxyToNat)

main :: Effect Unit
main =
  runHalogenAff do
    body <- awaitBody
    runUI component unit body

type StashInfo
  = { buffers :: Array String, periodicWaves :: Array String, floatArrays :: Array String }

type State
  = { unsubscribe :: Effect Unit
    , audioCtx :: Maybe AudioContext
    , audioStarted :: Boolean
    , canStopAudio :: Boolean
    , unsubscribeFromHalogen :: Maybe H.SubscriptionId
    , stashInfo :: StashInfo
    , musicRef :: Maybe (Ref.Ref { | Types.Music })
    }

data Action
  = Initialize
  | UpdateStashInfo StashInfo
  | StartAudio
  | StopAudio

component :: forall query input output m. MonadEffect m => MonadAff m => H.Component query input output m
component =
  H.mkComponent
    { initialState
    , render
    , eval: H.mkEval $ H.defaultEval { initialize = Just Initialize, handleAction = handleAction }
    }

cs :: Event Stash
cs =
  compact
    ( makeEvent \k -> do
        cachedStash Nothing Just >>= k
        pure (pure unit)
    )

vRange :: forall n. Nat n => V.Vec n Int
vRange = V.fill identity

-- todo: avoid code dup in lens decl?
lenses ::
  Ref.Ref { | Types.Music } ->
  { | Types.Music' (Number -> Effect Unit) (Number -> Effect Unit) (Boolean -> Effect Unit) (Boolean -> Effect Unit) }
lenses rf =
  { knobs: mapWithTypedIndex (\px -> let p2n = proxyToNat px in \_ v -> void $ Ref.modify (\r -> r { knobs = V.updateAt p2n v r.knobs }) rf) vRange
  , sliders: mapWithTypedIndex (\px -> let p2n = proxyToNat px in \_ v -> void $ Ref.modify (\r -> r { sliders = V.updateAt p2n v r.sliders }) rf) vRange
  , switches: mapWithTypedIndex (\px -> let p2n = proxyToNat px in \_ v -> void $ Ref.modify (\r -> r { switches = V.updateAt p2n v r.switches }) rf) vRange
  , keyboard: mapWithTypedIndex (\px -> let p2n = proxyToNat px in \_ v -> void $ Ref.modify (\r -> r { keyboard = V.updateAt p2n v r.keyboard }) rf) vRange
  }

foreign import knobCb :: String -> (Number -> Effect Unit) -> Effect Unit

foreign import sliderCb :: String -> (Number -> Effect Unit) -> Effect Unit

foreign import switchCb :: String -> (Boolean -> Effect Unit) -> Effect Unit

foreign import keyboardCb :: String -> Array (Boolean -> Effect Unit) -> Effect Unit

initialMusic :: { | Types.Music }
initialMusic =
  { keyboard: V.fill (const false) :: V.Vec NKeys Boolean
  , knobs: V.fill (const 0.0) :: V.Vec NKnobs Number
  , sliders: V.fill (const 0.0) :: V.Vec NSliders Number
  , switches: V.fill (const false) :: V.Vec NSwitches Boolean
  }

initialState :: forall input. input -> State
initialState _ =
  { unsubscribe: pure unit
  , audioCtx: Nothing
  , audioStarted: false
  , canStopAudio: false
  , unsubscribeFromHalogen: Nothing
  , stashInfo: mempty
  , musicRef: Nothing
  }

classes :: forall r p. Array String -> HP.IProp ( class :: String | r ) p
classes = HP.classes <<< map H.ClassName

knob :: forall w i. String -> HH.HTML w i
knob id =
  HH.div [ classes [ "flex", "flex-col", "p-2" ] ]
    [ HH.p [ classes [ "text-center" ] ] [ HH.text id ]
    , HH.element (HH.ElemName "webaudio-knob") [ HP.id id ] []
    ]

switch :: forall w i. String -> HH.HTML w i
switch id =
  HH.div [ classes [ "flex", "flex-col", "p-2" ] ]
    [ HH.p [ classes [ "text-center" ] ] [ HH.text id ]
    , HH.element (HH.ElemName "webaudio-switch") [ HP.id id ] []
    ]

slider :: forall w i. String -> HH.HTML w i
slider id =
  HH.div [ classes [ "flex", "flex-col" ], classes [ "p-2" ] ]
    [ HH.p [ classes [ "text-center" ] ] [ HH.text id ]
    , HH.element (HH.ElemName "webaudio-slider")
        [ HP.attr (H.AttrName "direction") "vert", HP.id id ]
        []
    ]

render :: forall m. State -> H.ComponentHTML Action () m
render { audioStarted, canStopAudio, stashInfo } =
  HH.div [ classes [ "w-screen", "h-screen" ] ]
    [ HH.div [ classes [ "flex", "flex-col", "w-full", "h-full" ] ]
        [ HH.div [ classes [ "flex-grow" ] ] [ HH.div_ [ HH.p_ [ HH.text ("Stash info: " <> show stashInfo) ] ] ]
        , HH.div [ classes [ "flex-grow-0", "flex", "flex-row" ] ]
            [ HH.div [ classes [ "flex-grow" ] ]
                []
            , HH.div [ classes [ "flex", "flex-col" ] ]
                [ HH.h1 [ classes [ "text-center", "text-3xl", "font-bold" ] ]
                    [ HH.text "wagsi" ]
                , HH.div [ classes [ "flex", "flex-row" ] ]
                    (map (knob <<< append "knob" <<< show <<< add 1) (0 .. 9))
                , HH.div [ classes [ "flex", "flex-row" ] ]
                    (map (slider <<< append "slider" <<< show <<< add 1) (0 .. 9))
                , HH.div [ classes [ "flex", "flex-row" ] ]
                    (map (switch <<< append "switch" <<< show <<< add 1) (0 .. 9))
                , HH.div [ classes [ "flex", "flex-col" ], classes [ "p-2" ] ]
                    [ HH.p [ classes [ "text-center" ] ] [ HH.text "keyboard" ]
                    , HH.element (HH.ElemName "webaudio-keyboard")
                        [ HP.attr (H.AttrName "keys") (show $ toInt' (Proxy :: _ Types.NKeys))
                        , HP.attr (H.AttrName "width") "800"
                        , HP.id "keyboard"
                        ]
                        []
                    ]
                , if not audioStarted then
                    HH.button
                      [ classes [ "text-2xl", "m-5", "bg-indigo-500", "p-3", "rounded-lg", "text-white", "hover:bg-indigo-400" ], HE.onClick \_ -> StartAudio ]
                      [ HH.text "Start audio" ]
                  else
                    HH.button
                      ([ classes [ "text-2xl", "m-5", "bg-pink-500", "p-3", "rounded-lg", "text-white", "hover:bg-pink-400" ] ] <> if canStopAudio then [ HE.onClick \_ -> StopAudio ] else [])
                      [ HH.text "Stop audio" ]
                ]
            , HH.div [ classes [ "flex-grow" ] ] []
            ]
        , HH.div [ classes [ "flex-grow" ] ] []
        ]
    ]

makeOsc ::
  ∀ m s.
  MonadEffect m =>
  Pos s =>
  AudioContext ->
  (V.Vec s Number) /\ (V.Vec s Number) ->
  m BrowserPeriodicWave
makeOsc ctx o =
  H.liftEffect
    $ makePeriodicWave ctx (fst o) (snd o)

easingAlgorithm :: Cofree ((->) Int) Int
easingAlgorithm =
  let
    fOf initialTime = initialTime :< \adj -> fOf $ max 15 (initialTime - adj)
  in
    fOf 15

foreign import cachedScene ::
  Maybe Types.Wag -> (Types.Wag -> Maybe Types.Wag) -> Effect (Maybe Types.Wag)

foreign import storeWag :: Foreign

foreign import cachedStash :: Maybe Stash -> (Stash -> Maybe Stash) -> Effect (Maybe Stash)

foreign import storeStash :: Foreign

oe :: forall a b. (a -> b -> Boolean) -> (a -> Aff b) -> Object a -> Object b -> Aff (Object b)
oe isEq trans template current = O.union <$> (sequential (sequence (map (parallel <<< trans) newStuff))) <*> pure filtered
  where
  -- things from the old to keep. as the above operation is left biased
  -- it will ignore anything in newStuff
  filtered = O.filterKeys (flip O.member template) current

  -- if it is not in current, then it is new
  -- if it is not eq, then it is new
  newStuff = O.filterWithKey (\k v -> maybe true (\v' -> not (isEq v v')) (O.lookup k current)) template

ffiBehavior :: forall a b. Ref.Ref a -> (a -> b) -> Behavior b
ffiBehavior stashRef f =
  behavior \eAToB ->
    makeEvent \fB ->
      subscribe eAToB \aToB -> Ref.read stashRef >>= fB <<< aToB <<< f

arrrr :: Array ~> Array
arrrr = identity

toMap :: forall a. Object a -> Map String a
toMap = Map.fromFoldable <<< arrrr <<< O.toUnfoldable

fromMap :: forall a. Map String a -> Object a
fromMap = O.fromFoldable <<< arrrr <<< Map.toUnfoldable

type CachedStash
  = { buffers :: Object (String /\ BrowserAudioBuffer)
    , floatArrays :: Object ((Array Number) /\ BrowserFloatArray)
    , periodicWaves :: Object ((Array Number /\ Array Number) /\ BrowserPeriodicWave)
    }

handleAction :: forall output m. MonadEffect m => MonadAff m => Action -> H.HalogenM State Action () output m Unit
handleAction = case _ of
  Initialize -> do
    musicRef <- H.liftEffect $ Ref.new initialMusic
    let
      lzs = lenses musicRef
    _ <-
      H.liftEffect
        $ sequence
        $ mapWithIndex (\i a -> knobCb ("knob" <> show (i + 1)) a) lzs.knobs
    _ <-
      H.liftEffect
        $ sequence
        $ mapWithIndex (\i a -> sliderCb ("slider" <> show (i + 1)) a) lzs.sliders
    _ <-
      H.liftEffect
        $ sequence
        $ mapWithIndex (\i a -> switchCb ("switch" <> show (i + 1)) a) lzs.switches
    _ <- H.liftEffect $ keyboardCb "keyboard" (V.toArray lzs.keyboard)
    H.modify_ _ { musicRef = Just musicRef }
  UpdateStashInfo s -> H.modify_ _ { stashInfo = s }
  StartAudio -> do
    handleAction StopAudio
    H.modify_ _ { audioStarted = true, canStopAudio = false }
    musicRef <-
      H.gets _.musicRef
        >>= case _ of
            Nothing -> H.liftEffect $ throwError (error "Cannot get music ref")
            Just x -> pure x
    { emitter, listener } <- H.liftEffect HS.create
    unsubscribeFromHalogen <- H.subscribe emitter
    { ctx, unsubscribeFromWags, unsubscribeFromStash } <-
      H.liftAff do
        ctx <- H.liftEffect context
        (stashRef :: Ref.Ref CachedStash) <- H.liftEffect $ Ref.new { buffers: O.empty, periodicWaves: O.empty, floatArrays: O.empty }
        unsubscribeFromStash <-
          H.liftEffect
            $ subscribe (cs <|> stash) \newStash -> do
                oldStash <- Ref.read stashRef
                let
                  newBuffers =
                    oe (\a b -> Just a == map fst b)
                      ( \uri ->
                          (try $ toAffE $ decodeAudioDataFromUri ctx uri)
                            >>= case _ of
                                Left e -> Log.error ("Could not download " <> uri <> ", error: " <> show e) $> Nothing
                                Right a -> pure (Just (uri /\ a))
                      )
                      newStash.buffers
                      (map Just oldStash.buffers)

                  newFloatArrays = oe (\a b -> a == fst b) (\a -> map ((/\) a) (H.liftEffect (makeFloatArray a))) newStash.floatArrays oldStash.floatArrays

                  newPeriodicWaves = oe (\a b -> fst a == fst b) (\(t /\ f) -> map ((/\) t) (H.liftEffect (f ctx))) newStash.periodicWaves oldStash.periodicWaves
                launchAff_ do
                  buffersF <- forkAff newBuffers
                  floatArraysF <- forkAff newFloatArrays
                  periodicWavesF <- forkAff newPeriodicWaves
                  { buffers, floatArrays, periodicWaves } <- { buffers: _, floatArrays: _, periodicWaves: _ } <$> joinFiber buffersF <*> joinFiber floatArraysF <*> joinFiber periodicWavesF
                  H.liftEffect (Ref.write { buffers: (fromMap $ compact $ toMap $ buffers), floatArrays, periodicWaves } stashRef)
                  H.liftEffect (HS.notify listener $ UpdateStashInfo { buffers: O.keys buffers, floatArrays: O.keys floatArrays, periodicWaves: O.keys periodicWaves })
        let
          behaviorBuffers = ffiBehavior stashRef (map snd <<< _.buffers)

          behaviorFloatArrays = ffiBehavior stashRef (map snd <<< _.floatArrays)

          behaviorPeriodicWaves = ffiBehavior stashRef (map snd <<< _.periodicWaves)
        { microphone } <- H.liftAff $ getMicrophoneAndCamera true false
        unitCache <- H.liftEffect makeUnitCache
        let
          ffiAudio =
            (defaultFFIAudio ctx unitCache)
              { microphone = pure (toNullable microphone)
              , buffers = behaviorBuffers
              , floatArrays = behaviorFloatArrays
              , periodicWaves = behaviorPeriodicWaves
              }
        mouse <- H.liftEffect getMouse
        unsubscribeFromWags <-
          H.liftEffect do
            maybeWag <- cachedScene Nothing Just
            subscribe
              ( run
                  ( pure Types.InitialEvent
                      <|> (Types.HotReload <$> wag)
                      <|> (Types.MouseDown <$> Mouse.down)
                      <|> (Types.MouseUp <$> Mouse.up)
                      <|> (Types.KeyboardDown <$> Keyboard.down)
                      <|> (Types.KeyboardUp <$> Keyboard.up)
                  )
                  (R.union <$> ({ mousePosition: _ } <$> position mouse) <*> ref2Behavior musicRef)
                  { easingAlgorithm }
                  (FFIAudio ffiAudio)
                  (fromMaybe piece ((\(Types.Wag wg) -> fst wg) <$> maybeWag))
              )
              (const (pure unit)) -- (Log.info <<< show)
        pure { ctx, unsubscribeFromWags, unsubscribeFromStash }
    H.modify_
      _
        { unsubscribe =
          do
            unsubscribeFromWags
            unsubscribeFromStash
        , audioCtx = Just ctx
        , canStopAudio = true
        , unsubscribeFromHalogen = Just unsubscribeFromHalogen
        }
  StopAudio -> do
    { unsubscribe, unsubscribeFromHalogen, audioCtx } <- H.get
    for_ unsubscribeFromHalogen H.unsubscribe
    H.liftEffect unsubscribe
    for_ audioCtx (H.liftEffect <<< close)
    H.modify_ _ { unsubscribe = pure unit, audioCtx = Nothing, audioStarted = false, canStopAudio = false }
