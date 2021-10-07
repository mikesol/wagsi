module WAGSI.Plumbing.Engine where

import Prelude

import Control.Comonad (extract)
import Control.Comonad.Cofree (Cofree, (:<))
import Control.Comonad.Cofree.Class (unwrapCofree)
import Data.Int (toNumber)
import Data.Lens (_1, over)
import Data.Map as Map
import Data.Maybe (Maybe(..), maybe, maybe')
import Data.Newtype (unwrap, wrap)
import Data.Tuple.Nested (type (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec ((+>))
import Data.Vec as V
import Effect.Aff (Aff)
import FRP.Behavior (Behavior)
import FRP.Event (Event)
import Heterogeneous.Mapping (hmap, hmapWithIndex)
import Prim.Row (class Lacks)
import Prim.RowList (class RowToList)
import Record as Record
import Record.Builder as RB
import Type.Proxy (Proxy(..))
import WAGS.Control.Functions.Subgraph as SG
import WAGS.Create.Optionals (gain, loopBuf, playBuf, speaker, subgraph, tumult)
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
import WAGSI.Plumbing.Download (downloadSilence, initialBuffers)
import WAGSI.Plumbing.FX (calm)
import WAGSI.Plumbing.Tidal (asScore, intentionalSilenceForInternalUseOnly, openFuture, wag)
import WAGSI.Plumbing.Types (class HomogenousToVec, Acc, DroneNote(..), EWF, FutureAndGlobals, Globals, NBuf, Next, RBuf, TheFuture, TimeIs(..), Voice, ZipProps(..), SampleCache, h2v')

globalFF = 0.03 :: Number

acc :: Acc
acc =
  { buffers: hmap (\(_ :: Unit) -> emptyPool) (mempty :: { | EWF Unit })
  , backToTheFuture: openFuture
  }

internal0 :: SubSceneSig "singleton" ()
  { buf :: Maybe (Buffy RBuf)
  , silence :: BrowserAudioBuffer
  , buffers :: SampleCache
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
                TimeIs
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
  , buffers :: SampleCache
  , silence :: BrowserAudioBuffer
  , time :: Number
  }
internal1 = emptyLags # SG.loopUsingScene
  \{ time, buffers, silence, fng: { future, globals } }
   { timeLag
   , volumeLag
   } ->
    let
      prevTime = extract timeLag
      prevVolume = extract volumeLag
      volumeNow = (unwrap globals).gain $ wrap { timeWas: prevTime, timeIs: thisIsTime, valWas: prevVolume }
      thisIsTime = wrap { clockTime: time }
    in
      { control:
          { volumeLag: unwrapCofree volumeLag volumeNow
          , timeLag: unwrapCofree timeLag thisIsTime
          }
      , scene:
          { singleton: gain (ff globalFF $ pure $ volumeNow)
              { tmlt: tumult ((unwrap globals).fx { clockTime: time })
                  { voice: subgraph
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
      }
  where
  emptyLags =
    { timeLag: makeLag
    , volumeLag: makeLag
    }

type CfLag a
  = Cofree ((->) a) (Maybe a)

makeLag :: forall a. CfLag a
makeLag = Nothing :< go
  where
  go old = Just old :< go

droneSg :: SubSceneSig "singleton" ()
  { buf :: Maybe DroneNote
  , silence :: BrowserAudioBuffer
  , buffers :: SampleCache
  , time :: Number
  }
droneSg = emptyLags
  # SG.loopUsingScene \{ time: time', silence, buffers, buf: buf' } { timeLag, rateLag, volumeLag, loopStartLag, loopEndLag } ->
      buf' # maybe'
        ( \_ ->
            { control: emptyLags
            , scene:
                { singleton: gain 0.0 { dronetmlt: tumult calm { voice: loopBuf { onOff: Off } silence } }
                }
            }
        )
        ( \(DroneNote { sample, forward, volumeFoT, loopStartFoT, loopEndFoT, rateFoT, tumultFoT }) ->
            let
              sampleF = maybe silence (if forward then _.buffer.forward else _.buffer.backwards) <<< Map.lookup sample
              buf = sampleF buffers
              prevTime = extract timeLag
              prevVolume = extract volumeLag
              volumeNow = volumeFoT $ wrap { timeWas: prevTime, timeIs: thisIsTime, valWas: prevVolume }
              prevLoopStart = extract loopStartLag
              loopStartNow = loopStartFoT $ wrap { timeWas: prevTime, timeIs: thisIsTime, valWas: prevLoopStart }
              prevLoopEnd = extract loopEndLag
              loopEndNow = loopEndFoT $ wrap { timeWas: prevTime, timeIs: thisIsTime, valWas: prevLoopEnd }
              prevRate = extract rateLag
              rateNow = rateFoT $ wrap { timeWas: prevTime, timeIs: thisIsTime, valWas: prevRate }
              thisIsTime = wrap { clockTime: time' }
              vol = ff globalFF $ pure $ volumeNow
            in
              { control:
                  { rateLag: unwrapCofree rateLag rateNow
                  , volumeLag: unwrapCofree volumeLag volumeNow
                  , loopStartLag: unwrapCofree loopStartLag loopStartNow
                  , loopEndLag: unwrapCofree loopEndLag loopEndNow
                  , timeLag: unwrapCofree timeLag thisIsTime
                  }
              , scene:
                  { singleton:
                      gain vol
                        { dronetmlt: tumult (tumultFoT thisIsTime)
                            { voice: loopBuf
                                { onOff:
                                    ff globalFF $ pure On
                                , loopStart: loopStartNow
                                , loopEnd: loopEndNow
                                , playbackRate: ff globalFF $ pure $ rateNow
                                }
                                buf
                            }
                        }
                  }
              }
        )
  where
  emptyLags =
    { timeLag: makeLag
    , rateLag: makeLag
    , volumeLag: makeLag
    , loopStartLag: makeLag
    , loopEndLag: makeLag
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

delInPlace
  :: forall r a h s t
   . Lacks "air" r
  => Lacks "heart" r
  => Lacks "sounds" r
  => Lacks "title" r
  => { air :: a
     , heart :: h
     , sounds :: s
     , title :: t
     | r
     }
  -> Record r
delInPlace = RB.build
  ( RB.delete (Proxy :: Proxy "air")
      <<< RB.delete (Proxy :: Proxy "heart")
      <<< RB.delete (Proxy :: Proxy "sounds")
      <<< RB.delete (Proxy :: Proxy "title")
  )

engine
  :: Behavior SampleCache
  -> FullSceneBuilder (theFuture :: TheFuture)
       ( buffers :: SampleCache
       , silence :: BrowserAudioBuffer
       )
       Unit
engine bsc = usingc
  (thePresent wag <<< initialBuffers bsc <<< downloadSilence)
  acc
  \(SceneI { time: time', headroomInSeconds, trigger, world: { buffers, silence } }) control ->
    let
      theFuture = maybe control.backToTheFuture _.theFuture trigger
      ewf = delInPlace (unwrap theFuture)
      toActualize = hmap
        ( \(v :: Voice) ->
            { time: time'
            , headroomInSeconds
            , input: _
            } $ { next: _ } $ _.next $ unwrap v
        )
        ewf
      myGlobals = hmap
        (\(v :: Voice) -> _.globals $ unwrap v)
        ewf
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
              , drones: subgraph
                  ((unwrap theFuture).air +> (unwrap theFuture).heart +> V.empty)
                  (const $ const $ droneSg)
                  ( const $
                      { time: time'
                      , buffers
                      , silence
                      , buf: _
                      }
                  )
                  {}
              }
          }
      }
