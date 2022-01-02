module WAGSI.Main where

import Prelude

import Control.Comonad.Cofree (Cofree, (:<))
import Control.Promise (toAffE)
import Data.Either (Either(..), either)
import Data.Foldable (for_)
import Data.Maybe (Maybe(..), maybe)
import Data.Newtype (unwrap, wrap)
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec as V
import Effect (Effect)
import Effect.Aff (launchAff_, try)
import Effect.Aff.Class (class MonadAff)
import Effect.Class (class MonadEffect)
import Effect.Class.Console as Log
import Effect.Ref as Ref
import FRP.Behavior (Behavior, behavior)
import FRP.Event (makeEvent, subscribe)
import Foreign (Foreign)
import Foreign.Object as Object
import Halogen (SubscriptionId)
import Halogen as H
import Halogen.Aff (awaitBody, runHalogenAff)
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Halogen.Subscription as HS
import Halogen.VDom.Driver (runUI)
import WAGS.Interpret (close, context, contextResume, contextState, makeFFIAudioSnapshot, makePeriodicWave)
import WAGS.Lib.Learn (Analysers, FullSceneBuilder(..))
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Engine (engine)
import WAGS.Lib.Tidal.Tidal (openFuture)
import WAGS.Lib.Tidal.Types (BufferUrl, ForwardBackwards, TidalRes)
import WAGS.Lib.Tidal.Util (doDownloads)
import WAGS.Run (Run, run)
import WAGS.WebAPI (AudioContext, BrowserPeriodicWave)
import WAGSI.Plumbing.Example as Example
import WAGSI.Plumbing.Repl (src, wag)
import WAGSI.Plumbing.WagsiMode (WagsiMode(..), wagsiMode)

r2b :: Ref.Ref ~> Behavior
r2b r = behavior \e -> makeEvent \f -> subscribe e \v -> Ref.read r >>= f <<< v

main :: String -> Effect Unit
main exmpl =
  runHalogenAff do
    body <- awaitBody
    bufCache <- H.liftEffect $ Ref.new Object.empty
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
  , exampleWag :: FCT
  , tick :: Maybe Int
  , doingGraphRendering :: Boolean
  , bufCache :: Ref.Ref (Object.Object { url :: BufferUrl, buffer :: ForwardBackwards })
  }

data Action
  = Initialize
  | Finalize
  | StartAudio
  | GraphRenderingDone
  | Tick (Maybe Int)
  | Src (Maybe String)
  | StopAudio

component :: forall query input output m. MonadEffect m => MonadAff m => String -> Ref.Ref (Object.Object { url :: BufferUrl, buffer :: ForwardBackwards }) -> FCT -> H.Component query input output m
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

initialState :: forall input. String -> Ref.Ref (Object.Object { url :: BufferUrl, buffer :: ForwardBackwards }) -> FCT -> input -> State
initialState exmpl bufCache ewag _ =
  { unsubscribe: pure unit
  , audioCtx: Nothing
  , audioStarted: false
  , canStopAudio: false
  , loadingHack: Loading
  , exampleCode: exmpl
  , exampleWag: ewag
  , tick: Nothing
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
                            Example -> (unwrap (exampleWag { clockTime: 0.0 })).title
                        ]
                    ]
                      <>
                        ( if doingGraphRendering then
                            [ HH.p [ classes [ "text-center", "text-xxl" ] ]
                                [ HH.text ("Setting phasers on stun (pre-rendering audio graphs)...") ]
                            ]
                          else []
                        )
                      <>
                        ( maybe []
                            ( \v ->
                                [ HH.p [ classes [ "text-center", "text-xxl" ] ]
                                    [ HH.text ("Starting in " <> show v <> "s") ]
                                ]
                            )
                            tick
                        )
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
                        )
            , HH.div [ classes [ "flex-grow" ] ] []
            ]
        , HH.div [ classes [ "flex-grow" ] ] []
        ]
    ]
easingAlgorithm :: Cofree ((->) Int) Int
easingAlgorithm =
  let
    fOf initialTime = initialTime :< \adj -> fOf $ max 15 (initialTime - adj)
  in
    fOf 15

foreign import parseParams_ :: Maybe String -> (String -> Maybe String) -> String -> String -> Effect (Maybe String)

type FCT = { clockTime :: Number } -> AFuture

handleAction :: forall output m. MonadEffect m => MonadAff m => Action -> H.HalogenM State Action () output m Unit
handleAction = case _ of
  Tick tick -> do
    H.modify_ _ { tick = tick }
  Src srcCode -> do
    H.modify_ _ { srcCode = srcCode }
  GraphRenderingDone -> do
    H.modify_ _ { doingGraphRendering = false }
  Initialize -> do
    ctx <- H.liftEffect context
    { bufCache, exampleWag } <- H.get
    res <- case wagsiMode of
      Example -> H.liftAff $ try $ doDownloads ctx bufCache (const $ pure unit) ((#) { clockTime: 0.0 }) (exampleWag)
      LiveCoding -> H.liftAff $ try do
        cw' <- H.liftEffect $ cachedWag Nothing Just
        for_ cw' \cw -> do
          doDownloads ctx bufCache (const $ pure unit) identity cw
    either
      ( \e -> do
          Log.error (show e)
          H.modify_ _ { loadingHack = Failed }
      )
      (\_ -> H.modify_ _ { loadingHack = Loaded })
      res
  Finalize -> handleAction StopAudio
  StartAudio -> do
    handleAction StopAudio
    { bufCache, exampleWag } <- H.get
    let ohBehave = r2b bufCache
    nextRef <- H.liftEffect $ Ref.new $ openFuture (wrap 1.0)
    H.modify_ _ { audioStarted = true, canStopAudio = false, doingGraphRendering = true }
    { emitter, listener } <- H.liftEffect HS.create
    unsubscribeFromHalogen <- H.subscribe emitter
    { ctx, unsubscribeFromWags } <-
      H.liftAff do
        ctx <- H.liftEffect context
        waStatus <- H.liftEffect $ contextState ctx
        when (waStatus /= "running") (H.liftAff $ toAffE $ contextResume ctx)
        ffiAudio <- H.liftEffect $ makeFFIAudioSnapshot ctx
        case wagsiMode of
          LiveCoding -> do
            -- we prime the pump by pushing an empty future
            H.liftEffect (cachedSrc Nothing Just >>= flip for_ (HS.notify listener <<< Src <<< Just))
            unsub0 <- H.liftEffect $ subscribe wag \whatsNext ->
              do
                launchAff_ do
                  doDownloads ctx bufCache mempty identity whatsNext
                  H.liftEffect $ Ref.write whatsNext nextRef
            unsub1 <- H.liftEffect $ subscribe src
              (HS.notify listener <<< Src <<< Just)
            H.liftEffect $ HS.notify listener GraphRenderingDone
            let FullSceneBuilder { triggerWorld, piece } = engine (pure unit) (map (const <<< const) (r2b nextRef)) (Left ohBehave)
            trigger /\ world <- H.liftAff $ snd $ triggerWorld (ctx /\ pure (pure {} /\ pure {}))
            unsub2 <- H.liftEffect $ subscribe
              (run trigger world { easingAlgorithm } ffiAudio piece)
              (\(_ :: Run TidalRes Analysers) -> pure unit)
            cw' <- H.liftEffect $ cachedWag Nothing Just
            for_ cw' \cw -> H.liftAff do
              doDownloads ctx bufCache (const $ pure unit) identity cw
              H.liftEffect $ Ref.write cw nextRef
            pure { ctx, unsubscribeFromWags: unsub0 *> unsub1 *> unsub2 }
          Example -> do
            doDownloads ctx bufCache (const $ pure unit) ((#) { clockTime: 0.0 }) exampleWag
            H.liftEffect $ HS.notify listener GraphRenderingDone
            H.liftEffect $ HS.notify listener (Tick $ Nothing)
            let FullSceneBuilder { triggerWorld, piece } = engine (pure unit) (pure (const exampleWag)) (Left ohBehave)
            trigger /\ world <- H.liftAff $ snd $ triggerWorld (ctx /\ pure (pure {} /\ pure {}))
            unsubscribeFromWags <- H.liftEffect $ subscribe
              (run trigger world { easingAlgorithm } ffiAudio piece)
              (\(_ :: Run TidalRes Analysers) -> pure unit)
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
    H.modify_ _
      { unsubscribe = pure unit
      , audioCtx = Nothing
      , audioStarted = false
      , canStopAudio = false
      , tick = Nothing
      , srcCode = Nothing
      }

foreign import cachedWag :: Maybe AFuture -> (AFuture -> Maybe AFuture) -> Effect (Maybe AFuture)
foreign import storeWag :: Foreign
foreign import cachedSrc :: Maybe String -> (String -> Maybe String) -> Effect (Maybe String)
foreign import storeSrc :: Foreign