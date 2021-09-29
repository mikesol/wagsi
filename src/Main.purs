module WAGSI.Main where

import Prelude

import Control.Comonad.Cofree (Cofree, (:<))
import Control.Monad.Error.Class (try)
import Data.Either (hush)
import Data.Foldable (for_)
import Data.Maybe (Maybe(..), maybe)
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec as V
import Effect (Effect)
import Effect.Aff.Class (class MonadAff)
import Effect.Class (class MonadEffect)
import Effect.Class.Console as Log
import FRP.Behavior (Behavior)
import FRP.Event (Event, EventIO, create, subscribe)
import FRP.Event as E
import FRP.Event.Time (interval)
import Halogen (SubscriptionId)
import Halogen as H
import Halogen.Aff (awaitBody, runHalogenAff)
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Halogen.Subscription as HS
import Halogen.VDom.Driver (runUI)
import Random.LCG (randomSeed)
import Test.QuickCheck.Gen (evalGen)
import WAGS.Interpret (close, context, defaultFFIAudio, makePeriodicWave, makeUnitCache)
import WAGS.Lib.Learn (FullSceneBuilder(..))
import WAGS.Run (Run, run)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer, BrowserPeriodicWave)
import WAGSI.Plumbing.Cycle (cycleToString)
import WAGSI.Plumbing.Samples (Samples)
import WAGSI.Plumbing.Tidal (TheFuture(..), djQuickCheck, openVoice, tidal)
import WAGSI.Plumbing.WagsiMode (WagsiMode(..), wagsiMode)

main :: Effect Unit
main =
  runHalogenAff do
    body <- awaitBody
    runUI component unit body

type StashInfo
  = { buffers :: Array String, periodicWaves :: Array String, floatArrays :: Array String }

type State
  =
  { unsubscribe :: Effect Unit
  , unsubscribeFromHalogen :: Maybe SubscriptionId
  , audioCtx :: Maybe AudioContext
  , audioStarted :: Boolean
  , canStopAudio :: Boolean
  , triggerWorld :: Maybe (Event { theFuture :: TheFuture } /\ Behavior { buffers :: { | Samples BrowserAudioBuffer } })
  , loadingHack :: LoadingHack
  , djqc :: Maybe String
  , tick :: Maybe Int
  }

data Action
  = Initialize
  | StartAudio
  | Tick Int
  | DJQC String
  | StopAudio

component :: forall query input output m. MonadEffect m => MonadAff m => H.Component query input output m
component =
  H.mkComponent
    { initialState
    , render
    , eval: H.mkEval $ H.defaultEval { initialize = Just Initialize, handleAction = handleAction }
    }

initialState :: forall input. input -> State
initialState _ =
  { unsubscribe: pure unit
  , audioCtx: Nothing
  , audioStarted: false
  , canStopAudio: false
  , loadingHack: Loading
  , triggerWorld: Nothing
  , tick: Nothing
  , djqc: Nothing
  , unsubscribeFromHalogen: Nothing
  }

data LoadingHack = Loading | Failed | Loaded

classes :: forall r p. Array String -> HP.IProp (class :: String | r) p
classes = HP.classes <<< map H.ClassName

render :: forall m. State -> H.ComponentHTML Action () m
render { audioStarted, canStopAudio, loadingHack, tick, djqc } =
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
                        ]
                    ]
                      <> maybe
                        ( maybe []
                            ( \v ->
                                [ HH.p [ classes [ "text-center", "text-xxl" ] ]
                                    [ HH.text ("Starting in " <> show v) ]
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

handleAction :: forall output m. MonadEffect m => MonadAff m => Action -> H.HalogenM State Action () output m Unit
handleAction = case _ of
  Tick tick -> do
    H.modify_ _ { tick = Just tick }
  DJQC djqc -> do
    H.modify_ _ { djqc = Just djqc }
  Initialize -> do
    ctx <- H.liftEffect context
    let FullSceneBuilder { triggerWorld } = tidal
    tw <- H.liftAff $ try (snd $ triggerWorld (ctx /\ pure (pure {} /\ pure {})))
    maybe (H.modify_ _ { loadingHack = Failed })
      (\triggerWorld -> H.modify_ _ { triggerWorld = Just triggerWorld, loadingHack = Loaded })
      (hush tw)
  StartAudio -> do
    handleAction StopAudio
    H.modify_ _ { audioStarted = true, canStopAudio = false }
    { emitter, listener } <- H.liftEffect HS.create
    unsubscribeFromHalogen <- H.subscribe emitter
    tw <- H.gets _.triggerWorld
    { ctx, unsubscribeFromWags } <-
      H.liftAff do
        ctx <- H.liftEffect context
        unitCache <- H.liftEffect makeUnitCache
        let
          ffiAudio = defaultFFIAudio ctx unitCache
        let FullSceneBuilder { triggerWorld, piece } = tidal
        trigger' /\ world <- case tw of
          Nothing -> do
            snd $ triggerWorld (ctx /\ pure (pure {} /\ pure {}))
          Just ttww -> pure ttww
        { trigger, unsub } <- case wagsiMode of
          LiveCoding -> pure { trigger: trigger', unsub: pure unit }
          DJQuickCheck -> do
            let ivl = E.fold (const $ add 1) (interval 1000) (-4)
            theFuture :: EventIO TheFuture <- H.liftEffect create
            Log.info "subbing"
            unsub <- H.liftEffect $ subscribe ivl \ck' -> case ck' of
              (-3) -> do
                HS.notify listener (Tick 3)
                theFuture.push $ TheFuture { earth: openVoice, wind: openVoice, fire: openVoice }
              (-2) -> HS.notify listener (Tick 2)
              (-1) -> HS.notify listener (Tick 1)
              ck -> do
                let mod20 = ck `mod` 20
                HS.notify listener (Tick (20 - mod20))
                when (mod20 == 0) do
                  seed <- randomSeed
                  let goDJ = evalGen djQuickCheck { newSeed: seed, size: 10 }
                  HS.notify listener (DJQC $ cycleToString goDJ.cycle)
                  theFuture.push goDJ.future
            pure { trigger: { theFuture: _ } <$> theFuture.event, unsub }
        unsubscribeFromWags <-
          H.liftEffect do
            usu <- subscribe
              (run trigger world { easingAlgorithm } ffiAudio piece)
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
    H.modify_ _ { unsubscribe = pure unit, audioCtx = Nothing, audioStarted = false, canStopAudio = false, tick = Nothing, djqc = Nothing }
