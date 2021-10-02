module WAGSI.Plumbing.Engine where

import Prelude

import Control.Comonad (extract)
import Data.Int (toNumber)
import Data.Lens (_1, over)
import Data.Maybe (Maybe(..), maybe)
import Data.Newtype (unwrap)
import Data.Tuple.Nested (type (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec as V
import Effect.Aff (Aff)
import FRP.Behavior (Behavior)
import FRP.Event (Event)
import Heterogeneous.Mapping (hmap, hmapWithIndex)
import Prim.Row (class Lacks)
import Prim.RowList (class RowToList)
import Record as Record
import Type.Proxy (Proxy(..))
import WAGS.Control.Functions.Subgraph as SG
import WAGS.Create.Optionals (gain, playBuf, speaker, subgraph)
import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Graph.Parameter (ff)
import WAGS.Interpret (bufferDuration)
import WAGS.Lib.BufferPool (AScoredBufferPool, Buffy(..), CfScoredBufferPool, makeScoredBufferPool)
import WAGS.Lib.Cofree (tails)
import WAGS.Lib.Learn (FullSceneBuilder, usingc)
import WAGS.Math (calcSlope)
import WAGS.Run (SceneI(..))
import WAGS.Subgraph (SubSceneSig)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer)
import WAGSI.Plumbing.Download (HasOrLacks, ForwardBackwards, downloadFiles', downloadSilence)
import WAGSI.Plumbing.Samples as S
import WAGSI.Plumbing.Tidal (asScore, intentionalSilenceForInternalUseOnly, openFuture, wag)
import WAGSI.Plumbing.Types (class HomogenousToVec, Acc, EWF, FutureAndGlobals, Globals, NBuf, Next, RBuf, TheFuture, Voice, ZipProps(..), h2v')

globalFF = 0.03 :: Number

acc :: Acc
acc =
  { buffers: hmap (\(_ :: Unit) -> emptyPool) (mempty :: { | EWF Unit })
  , backToTheFuture: openFuture
  }

internal0 :: SubSceneSig "singleton" ()
  { buf :: Maybe (Buffy RBuf)
  , silence :: BrowserAudioBuffer
  , buffers :: S.Samples (Maybe ForwardBackwards)
  , time :: Number
  }
internal0 = unit # SG.loopUsingScene \{ time, silence, buffers, buf: buf' } _ ->
  { control: unit
  , scene:
      { singleton: case buf' of
          Just
            ( Buffy
                { starting
                , startTime
                , rest:
                    { sampleF
                    , rateFoT
                    , bufferOffsetFoT
                    , volumeFoT
                    , duration
                    , cycleStartsAt
                    , currentCycle
                    , littleCycleDuration
                    , bigCycleDuration
                    }
                }
            ) ->
            let
              sampleTime = time - startTime
              bigCycleTime = time - cycleStartsAt
              littleCycleTime = time - (cycleStartsAt + (toNumber currentCycle * littleCycleDuration))
              buf = sampleF silence buffers
              thisIsTime =
                { sampleTime
                , bigCycleTime
                , littleCycleTime
                , clockTime: time
                , normalizedClockTime: 0.0 -- cuz it's infinite :-P
                , normalizedSampleTime: sampleTime / duration
                , normalizedBigCycleTime: bigCycleTime / bigCycleDuration
                , normalizedLittleCycleTime: littleCycleTime / littleCycleDuration
                , littleCycleDuration
                , bigCycleDuration
                , bufferDuration: bufferDuration buf
                }
              vol = ff globalFF $ pure $ volumeFoT thisIsTime
            in
              gain
                ( if time > startTime + duration then
                    let
                      cs2 x0 x1 y1 t y0 = calcSlope x0 y0 x1 y1 t
                    in
                      cs2 (startTime + duration) (startTime + duration + 0.25) 0.0 time <$> vol
                  else vol
                )
                ( playBuf
                    { onOff:
                        ff globalFF
                          $
                            if starting then
                              ff (max 0.0 (startTime - time)) (pure OffOn)
                            else
                              pure On
                    , bufferOffset: bufferOffsetFoT thisIsTime
                    , playbackRate: ff globalFF $ pure $ rateFoT thisIsTime
                    }
                    buf
                )
          Nothing -> gain 0.0 (playBuf { onOff: Off } silence)

      }
  }

internal1 :: SubSceneSig "singleton" ()
  { fng :: FutureAndGlobals
  , buffers :: S.Samples (Maybe ForwardBackwards)
  , silence :: BrowserAudioBuffer
  , time :: Number
  }
internal1 = unit # SG.loopUsingScene \{ time, buffers, silence, fng: { future, globals } } _ ->
  { control: unit
  , scene:
      { singleton: gain ((unwrap globals).gain { clockTime: time })
          { sg: subgraph
              (extract future)
              (const $ const $ internal0)
              ( const $
                  { time
                  , buffers
                  , silence
                  , buf: _
                  }
              )
              {}
          }
      }
  }

thePresent
  :: forall trigger world
   . Lacks "theFuture" trigger
  => Event TheFuture
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { theFuture :: TheFuture | trigger } /\ Behavior { | world })
thePresent ev = (map <<< map) (over _1 (\e -> Record.insert (Proxy :: _ "theFuture") <$> ev <*> e))

futureMaker :: { | EWF (CfScoredBufferPool Next NBuf RBuf -> Globals -> FutureAndGlobals) }
futureMaker = hmap (\(_ :: Unit) -> { future: _, globals: _ } :: CfScoredBufferPool Next NBuf RBuf -> Globals -> { future :: CfScoredBufferPool Next NBuf RBuf, globals :: Globals }) (mempty :: { | EWF Unit })

h2v :: forall r rl n a. RowToList r rl => HomogenousToVec rl r n a => { | r } -> V.Vec n a
h2v = h2v' (Proxy :: _ rl)

emptyPool :: forall n. Pos n => AScoredBufferPool Next n RBuf
emptyPool = makeScoredBufferPool
  { startsAt: 0.0
  , noteStream: \_ ->
      ( (#)
          { currentCount: 0.0
          , prevCycleEnded: 0.0
          , time: 0.0
          , headroomInSeconds: 0.03
          } $ _.func $ unwrap $ asScore false (pure intentionalSilenceForInternalUseOnly)
      ) # map \{ startsAfter, rest } ->
        { startsAfter
        , rest:
            { rest: const rest
            , duration: const $ const $ const Just rest.duration
            }
        }
  }

engine
  :: Maybe HasOrLacks
  -> FullSceneBuilder (theFuture :: TheFuture)
       ( buffers :: S.Samples (Maybe ForwardBackwards)
       , silence :: BrowserAudioBuffer
       )
       Unit
engine hasOrLacks = usingc
  (thePresent wag <<< downloadFiles' hasOrLacks <<< downloadSilence)
  acc
  \(SceneI { time: time', headroomInSeconds, trigger, world: { buffers, silence } }) control ->
    let
      theFuture = maybe control.backToTheFuture _.theFuture trigger
      toActualize = hmap
        ( \(v :: Voice) ->
            { time: time'
            , headroomInSeconds
            , input: _
            } $ { next: _ } $ _.next $ unwrap v
        )
        (unwrap theFuture)
      myGlobals = hmap
        ( \(v :: Voice) -> _.globals $ unwrap v
        )
        (unwrap theFuture)
      actualized = hmapWithIndex (ZipProps control.buffers) toActualize
      forTemplate' = hmapWithIndex (ZipProps (hmapWithIndex (ZipProps futureMaker) actualized)) myGlobals
      forTemplate = h2v forTemplate'

    in
      { control: { buffers: tails actualized, backToTheFuture: theFuture }
      , scene: speaker
          { mix: gain 1.0
              { subs: subgraph forTemplate (const $ const $ internal1)
                  ( const $
                      { time: time'
                      , buffers
                      , silence
                      , fng: _
                      }
                  )
                  {}
              }
          }
      }
