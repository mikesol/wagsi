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
import FRP.Behavior (Behavior)
import FRP.Event (Event, subscribe)
import Halogen as H
import Halogen.Aff (awaitBody, runHalogenAff)
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Halogen.VDom.Driver (runUI)
import WAGS.Interpret (close, context, defaultFFIAudio, makePeriodicWave, makeUnitCache)
import WAGS.Lib.Learn (FullSceneBuilder(..))
import WAGS.Run (Run, run)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer, BrowserPeriodicWave)
import WAGSI.Plumbing.Samples (Samples)
import WAGSI.Plumbing.Tidal (TheFuture, tidal)

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
  , audioCtx :: Maybe AudioContext
  , audioStarted :: Boolean
  , canStopAudio :: Boolean
  , triggerWorld :: Maybe (Event { theFuture :: TheFuture } /\ Behavior { buffers :: { | Samples BrowserAudioBuffer } })
  , loadingHack :: LoadingHack
  }

data Action
  = Initialize
  | StartAudio
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
  }

data LoadingHack = Loading | Failed | Loaded

classes :: forall r p. Array String -> HP.IProp (class :: String | r) p
classes = HP.classes <<< map H.ClassName

render :: forall m. State -> H.ComponentHTML Action () m
render { audioStarted, canStopAudio, loadingHack } =
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
                        [ HH.text "wagsi" ]
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
    tw <- H.gets _.triggerWorld
    { ctx, unsubscribeFromWags } <-
      H.liftAff do
        ctx <- H.liftEffect context
        unitCache <- H.liftEffect makeUnitCache
        let
          ffiAudio = defaultFFIAudio ctx unitCache
        let FullSceneBuilder { triggerWorld, piece } = tidal
        trigger /\ world <- case tw of
          Nothing -> do
            snd $ triggerWorld (ctx /\ pure (pure {} /\ pure {}))
          Just ttww -> pure ttww
        unsubscribeFromWags <-
          H.liftEffect do
            subscribe
              (run trigger world { easingAlgorithm } ffiAudio piece)
              (\(_ :: Run Unit ()) -> pure unit) -- (Log.info <<< show)
        pure { ctx, unsubscribeFromWags }
    H.modify_
      _
        { unsubscribe =
            do
              unsubscribeFromWags
        , audioCtx = Just ctx
        , canStopAudio = true
        }
  StopAudio -> do
    { unsubscribe, audioCtx } <- H.get
    H.liftEffect unsubscribe
    for_ audioCtx (H.liftEffect <<< close)
    H.modify_ _ { unsubscribe = pure unit, audioCtx = Nothing, audioStarted = false, canStopAudio = false }
