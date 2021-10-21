module WAGSI.Main where

import Prelude

import Control.Alt ((<|>))
import Control.Comonad.Cofree (Cofree, (:<))
import Data.Compactable (compact)
import Data.Either (either)
import Data.Foldable (fold, for_)
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe, isJust, maybe)
import Data.Newtype (unwrap)
import Data.Set as Set
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec as V
import Effect (Effect)
import Effect.Aff (Aff, launchAff_, try)
import Effect.Aff.Class (class MonadAff)
import Effect.Class (class MonadEffect)
import Effect.Ref as Ref
import FRP.Behavior (Behavior, behavior)
import FRP.Event (EventIO, create, makeEvent, subscribe)
import FRP.Event as E
import FRP.Event.Time (interval)
import Foreign (Foreign)
import Foreign.Object as O
import Halogen (SubscriptionId)
import Halogen as H
import Halogen.Aff (awaitBody, runHalogenAff)
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Halogen.Subscription as HS
import Halogen.VDom.Driver (runUI)
import Control.Promise (toAffE)
import Random.LCG (randomSeed)
import Test.QuickCheck.Gen (evalGen)
import WAGS.Interpret (close, context, contextState, contextResume, defaultFFIAudio, makePeriodicWave, makeUnitCache)
import WAGS.Lib.Learn (FullSceneBuilder(..))
import WAGS.Run (Run, run)
import WAGS.WebAPI (AudioContext, BrowserPeriodicWave)
import WAGSI.Plumbing.Cycle (cycleLength, cycleToString)
import WAGSI.Plumbing.Download (getBuffersUsingCache)
import WAGSI.Plumbing.Engine (engine)
import WAGSI.Plumbing.Example as Example
import WAGSI.Plumbing.Samples (nameToSampleO, sampleToUrls)
import WAGSI.Plumbing.Tidal (djQuickCheck, droneyFuture, massiveFuture, openFuture, src)
import WAGSI.Plumbing.Types (BufferUrl, DroneNote(..), ForwardBackwards, NextCycle(..), Sample(..), SampleCache, TheFuture(..), Voice(..))
import WAGSI.Plumbing.WagsiMode (WagsiMode(..), wagsiMode)
import Web.HTML (window)
import Web.HTML.Location (search)
import Web.HTML.Window (location)

r2b :: Ref.Ref ~> Behavior
r2b r = behavior \e -> makeEvent \f -> subscribe e \v -> Ref.read r >>= f <<< v

main :: String -> Effect Unit
main exmpl =
  runHalogenAff do
    body <- awaitBody
    bufCache <- H.liftEffect $ Ref.new Map.empty
    runUI (component exmpl bufCache Example.wag) unit body

type StashInfo
  = { buffers :: Array String, periodicWaves :: Array String, floatArrays :: Array String }

type State
  =
  { unsubscribe :: Effect Unit
  , unsubscribeFromHalogen :: Maybe SubscriptionId
  , audioCtx :: Maybe AudioContext
  , audioStarted :: Boolean
  , canStopAudio :: Boolean
  , srcCode :: Maybe String
  , exampleCode :: String
  , loadingHack :: LoadingHack
  , exampleWag :: TheFuture
  , djqc :: Maybe String
  , tick :: Maybe Int
  , doingGraphRendering :: Boolean
  , bufCache :: Ref.Ref (Map Sample { url :: BufferUrl, buffer :: ForwardBackwards })
  }

data Action
  = Initialize
  | Finalize
  | StartAudio
  | GraphRenderingDone
  | Tick (Maybe Int)
  | Src (Maybe String)
  | DJQC String
  | StopAudio

component :: forall query input output m. MonadEffect m => MonadAff m => String -> Ref.Ref (Map Sample { url :: BufferUrl, buffer :: ForwardBackwards }) -> TheFuture -> H.Component query input output m
component exmpl bufCache ewag =
  H.mkComponent
    { initialState: initialState exmpl bufCache ewag
    , render
    , eval: H.mkEval $ H.defaultEval
        { initialize = Just Initialize
        , finalize = Just Finalize
        , handleAction = handleAction
        }
    }

initialState :: forall input. String -> Ref.Ref (Map Sample { url :: BufferUrl, buffer :: ForwardBackwards }) -> TheFuture -> input -> State
initialState exmpl bufCache ewag _ =
  { unsubscribe: pure unit
  , audioCtx: Nothing
  , audioStarted: false
  , canStopAudio: false
  , loadingHack: Loading
  , exampleCode: exmpl
  , exampleWag: ewag
  , tick: Nothing
  , djqc: Nothing
  , srcCode: Nothing
  , unsubscribeFromHalogen: Nothing
  , doingGraphRendering: false
  , bufCache
  }

data LoadingHack = Loading | Failed | Loaded

classes :: forall r p. Array String -> HP.IProp (class :: String | r) p
classes = HP.classes <<< map H.ClassName

render :: forall m. State -> H.ComponentHTML Action () m
render
  { audioStarted
  , canStopAudio
  , loadingHack
  , tick
  , djqc
  , doingGraphRendering
  , srcCode
  , exampleCode
  , exampleWag
  } =
  HH.div [ classes [ "w-screen", "h-screen" ] ]
    [ HH.div [ classes [ "flex", "flex-col", "w-full", "h-full" ] ]
        [ HH.div [ classes [ "flex-grow" ] ] [ HH.div_ [] ]
        , HH.div [ classes [ "flex-grow-0", "flex", "flex-row" ] ]
            [ HH.div [ classes [ "flex-grow" ] ]
                []
            , HH.div [ classes [ "flex", "flex-col" ] ]
                case loadingHack of
                  Loading ->
                    [ HH.h1 [ classes [ "text-center", "text-3xl", "font-bold" ] ]
                        [ HH.text "Loading..." ]
                    , HH.p [ classes [ "text-center", "text-xl" ] ]
                        [ HH.text "This should take less than a minute.  If an error happens, we'll let you know." ]
                    ]
                  Failed ->
                    [ HH.p [ classes [ "text-center", "text-xl" ] ]
                        [ HH.text "Well, this is embarassing. We couldn't load your files. Please reload the page. If the error persists, please open an issue on https://github.com/mikesol/wagsi." ]
                    ]
                  Loaded ->
                    [ HH.h1 [ classes [ "text-center", "text-3xl", "font-bold" ] ]
                        [ HH.text $ case wagsiMode of
                            LiveCoding -> "wagsi - The Tidal Cycles jam"
                            DJQuickCheck -> "d j q u i c k c h e c k"
                            Example -> (unwrap exampleWag).title
                        ]
                    ]
                      <>
                        ( if doingGraphRendering then
                            [ HH.p [ classes [ "text-center", "text-xxl" ] ]
                                [ HH.text ("Setting phasers on stun (pre-rendering audio graphs)...") ]
                            ]
                          else []
                        )
                      <> maybe
                        ( maybe []
                            ( \v ->
                                [ HH.p [ classes [ "text-center", "text-xxl" ] ]
                                    [ HH.text ("Starting in " <> show v <> "s") ]
                                ]
                            )
                            tick
                        )
                        ( \v ->
                            [ HH.p [ classes [ "text-center", "text-xl" ] ]
                                [ HH.text "Now Playing (or soon-to-be-playing)" ]
                            , HH.p [ classes [ "text-center", "text-base", "font-mono" ] ]
                                [ HH.text v.djqc ]
                            , HH.p [ classes [ "text-center", "text-xl" ] ]
                                [ HH.text ("Next change in " <> show v.tick <> "s") ]
                            ]
                        )
                        ({ tick: _, djqc: _ } <$> tick <*> djqc)
                      <>
                        [ if not audioStarted then
                            HH.button
                              [ classes [ "text-2xl", "m-5", "bg-indigo-500", "p-3", "rounded-lg", "text-white", "hover:bg-indigo-400" ], HE.onClick \_ -> StartAudio ]
                              [ HH.text "Start audio" ]
                          else
                            HH.button
                              ([ classes [ "text-2xl", "m-5", "bg-pink-500", "p-3", "rounded-lg", "text-white", "hover:bg-pink-400" ] ] <> if canStopAudio then [ HE.onClick \_ -> StopAudio ] else [])
                              [ HH.text "Stop audio" ]
                        ]
                      <>
                        ( let
                            skd = maybe []
                              ( \scd ->
                                  [ HH.pre_
                                      [ HH.code
                                          [ classes [ "language-purescript" ] ]
                                          [ HH.text scd ]
                                      ]
                                  ]
                              )

                          in
                            case wagsiMode of
                              LiveCoding -> skd srcCode
                              Example -> skd (Just exampleCode)
                              _ -> []
                        )
            , HH.div [ classes [ "flex-grow" ] ] []
            ]
        , HH.div [ classes [ "flex-grow" ] ] []
        ]
    ]

makeOsc
  :: ∀ m s
   . MonadEffect m
  => Pos s
  => AudioContext
  -> (V.Vec s Number) /\ (V.Vec s Number)
  -> m BrowserPeriodicWave
makeOsc ctx o =
  H.liftEffect
    $ makePeriodicWave ctx (fst o) (snd o)

easingAlgorithm :: Cofree ((->) Int) Int
easingAlgorithm =
  let
    fOf initialTime = initialTime :< \adj -> fOf $ max 15 (initialTime - adj)
  in
    fOf 15

v2s :: Voice -> Set.Set Sample
v2s (Voice { next: NextCycle { samples } }) = samples

d2s :: DroneNote -> Sample
d2s (DroneNote { sample }) = sample

doDownloads :: AudioContext -> Ref.Ref SampleCache -> (TheFuture -> Effect Unit) -> TheFuture -> Aff Unit
doDownloads audioContext cacheRef push future@(TheFuture { earth, wind, fire, air, heart, sounds, preload }) = do
  cache <- H.liftEffect $ Ref.read cacheRef
  let
    sets = Set.fromFoldable preload
      <> fold (map v2s [ earth, wind, fire ])
      <> (Set.fromFoldable $ compact ((map <<< map) d2s [ air, heart ]))
    samplesToUrl = Set.toMap sets # Map.mapMaybeWithKey \samp@(Sample k) _ -> Map.lookup samp sounds <|> do
      nm <- O.lookup k nameToSampleO
      url <- Map.lookup nm sampleToUrls
      pure url
  newMap <- getBuffersUsingCache samplesToUrl audioContext cache
  H.liftEffect do
    Ref.write newMap cacheRef
    push future

foreign import parseParams_ :: Maybe String -> (String -> Maybe String) -> String -> String -> Effect (Maybe String)

handleAction :: forall output m. MonadEffect m => MonadAff m => Action -> H.HalogenM State Action () output m Unit
handleAction = case _ of
  Tick tick -> do
    H.modify_ _ { tick = tick }
  Src srcCode -> do
    H.modify_ _ { srcCode = srcCode }
  DJQC djqc -> do
    H.modify_ _ { djqc = Just djqc }
  GraphRenderingDone -> do
    H.modify_ _ { doingGraphRendering = false }
  Initialize -> do
    ctx <- H.liftEffect context
    { bufCache, exampleWag } <- H.get
    res <- case wagsiMode of
      Example -> H.liftAff $ try $ doDownloads ctx bufCache (const $ pure unit) exampleWag
      LiveCoding -> H.liftAff $ try do
        primePump <- fromMaybe openFuture <$> (H.liftEffect $ cachedWag Nothing Just)
        massive <- H.liftEffect do
          w <- window
          loc <- location w
          sc <- search loc
          parseParams_ Nothing Just sc "massive"
        when (isJust massive) (doDownloads ctx bufCache (const $ pure unit) massiveFuture)
        doDownloads ctx bufCache (const $ pure unit) droneyFuture
        doDownloads ctx bufCache (const $ pure unit) primePump
      DJQuickCheck -> H.liftAff $ try $ pure unit
    either (\_ -> H.modify_ _ { loadingHack = Failed }) (\_ -> H.modify_ _ { loadingHack = Loaded }) res
  Finalize -> handleAction StopAudio
  StartAudio -> do
    handleAction StopAudio
    { bufCache, exampleWag } <- H.get
    let ohBehave = r2b bufCache
    nextCycleEnds <- H.liftEffect $ Ref.new 0
    H.modify_ _ { audioStarted = true, canStopAudio = false, doingGraphRendering = true }
    { emitter, listener } <- H.liftEffect HS.create
    unsubscribeFromHalogen <- H.subscribe emitter
    { ctx, unsubscribeFromWags } <-
      H.liftAff do
        ctx <- H.liftEffect context
        waStatus <- H.liftEffect $ contextState ctx
        when (waStatus /= "running") (H.liftAff $ toAffE $ contextResume ctx)
        unitCache <- H.liftEffect makeUnitCache
        let
          ffiAudio = defaultFFIAudio ctx unitCache
        let FullSceneBuilder { triggerWorld, piece } = engine ohBehave
        trigger' /\ world <- snd $ triggerWorld (ctx /\ pure (pure {} /\ pure {}))
        { trigger, unsub } <- case wagsiMode of
          LiveCoding -> H.liftEffect $ do
            -- we prime the pump by pushing an empty future
            theFuture :: EventIO TheFuture <- create
            cachedSrc Nothing Just >>= flip for_ (HS.notify listener <<< Src <<< Just)
            unsub0 <- subscribe trigger' \v -> do
              launchAff_ $ doDownloads ctx bufCache theFuture.push $ v.theFuture
              theFuture.push v.theFuture
            unsub1 <- subscribe src (HS.notify listener <<< Src <<< Just)
            HS.notify listener GraphRenderingDone
            pure
              { trigger: { theFuture: _ } <$> theFuture.event
              , unsub: do
                  _ <- unsub0
                  _ <- unsub1
                  pure unit
              }
          Example -> do
            let ivl = E.fold (const $ add 1) (interval 1000) (-1)
            theFuture :: EventIO TheFuture <- H.liftEffect create
            doDownloads ctx bufCache (const $ pure unit) exampleWag
            unsub <- H.liftEffect $ subscribe ivl \ck' -> case ck' of
              0 -> do
                HS.notify listener GraphRenderingDone
                HS.notify listener (Tick $ Nothing) *> launchAff_ (doDownloads ctx bufCache theFuture.push exampleWag)
              _ -> pure unit
            pure { trigger: { theFuture: _ } <$> theFuture.event, unsub }
          DJQuickCheck -> do
            let ivl = E.fold (const $ add 1) (interval 1000) (-4)
            theFuture :: EventIO TheFuture <- H.liftEffect create
            unsub <- H.liftEffect $ subscribe ivl \ck' -> case ck' of
              (-3) -> do
                HS.notify listener GraphRenderingDone
                HS.notify listener (Tick $ Just 3)
                theFuture.push $ openFuture
              (-2) -> HS.notify listener (Tick $ Just 2)
              (-1) -> HS.notify listener (Tick $ Just 1)
              ck -> do
                nce <- Ref.read nextCycleEnds
                when (ck >= nce) do
                  seed <- randomSeed
                  let goDJ = evalGen djQuickCheck { newSeed: seed, size: 10 }
                  HS.notify listener (DJQC $ cycleToString goDJ.cycle)
                  launchAff_ $ doDownloads ctx bufCache theFuture.push goDJ.future
                  Ref.write (if cycleLength goDJ.cycle < 6 then ck + 6 else ck + 20) nextCycleEnds
                nce2 <- Ref.read nextCycleEnds
                HS.notify listener (Tick $ Just (nce2 - ck))
            pure { trigger: { theFuture: _ } <$> theFuture.event, unsub }
        primePump <- fromMaybe openFuture <$> (H.liftEffect $ cachedWag Nothing Just)
        doDownloads ctx bufCache (const $ pure unit) primePump
        unsubscribeFromWags <-
          H.liftEffect do
            usu <- subscribe
              ( run
                  ( case wagsiMode of
                      LiveCoding -> trigger <|> pure { theFuture: primePump }
                      _ -> trigger <|> pure { theFuture: openFuture }
                  )
                  world
                  { easingAlgorithm }
                  ffiAudio
                  piece
              )
              (\(_ :: Run Unit ()) -> pure unit) -- (Log.info <<< show)
            pure $ do
              _ <- usu
              _ <- unsub
              pure unit
        pure { ctx, unsubscribeFromWags }
    H.modify_
      _
        { unsubscribe = unsubscribeFromWags
        , audioCtx = Just ctx
        , canStopAudio = true
        , unsubscribeFromHalogen = Just unsubscribeFromHalogen
        }
  StopAudio -> do
    { unsubscribe, audioCtx, unsubscribeFromHalogen } <- H.get
    H.liftEffect unsubscribe
    for_ unsubscribeFromHalogen H.unsubscribe
    for_ audioCtx (H.liftEffect <<< close)
    H.modify_ _ { unsubscribe = pure unit, audioCtx = Nothing, audioStarted = false, canStopAudio = false, tick = Nothing, djqc = Nothing, srcCode = Nothing }

foreign import cachedWag :: Maybe TheFuture -> (TheFuture -> Maybe TheFuture) -> Effect (Maybe TheFuture)
foreign import storeWag :: Foreign
foreign import cachedSrc :: Maybe String -> (String -> Maybe String) -> Effect (Maybe String)
foreign import storeSrc :: Foreign