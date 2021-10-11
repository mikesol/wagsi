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
import Data.Traversable (sequence)
import Data.Tuple (uncurry)
import Data.Tuple.Nested (type (/\), (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec ((+>))
import Data.Vec as V
import Effect.Aff (Aff)
import Effect.Random (randomInt)
import FRP.Behavior (Behavior, behavior)
import FRP.Event (Event, makeEvent, subscribe)
import Heterogeneous.Mapping (hmap, hmapWithIndex)
import Prim.Row (class Lacks)
import Prim.RowList (class RowToList)
import Random.LCG (mkSeed)
import Record as Record
import Record.Builder as RB
import Test.QuickCheck (arbitrary)
import Test.QuickCheck.Gen (evalGen)
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
import WAGSI.Plumbing.Types (class HomogenousToVec, Acc, BufferUrl, DroneNote(..), EWF, Globals, NBuf, Next, RBuf, Sample, SampleCache, TheFuture, TimeIs(..), UnsampledTimeIs(..), Voice, ZipProps(..), h2v')

globalFF = 0.03 :: Number
globalSize = 5 :: Int

acc :: Acc
acc =
  { buffers: hmap (\(_ :: Unit) -> emptyPool) (mempty :: { | EWF Unit })
  , backToTheFuture: openFuture
  }

sampleF
  :: Sample
  -> Boolean
  -> BrowserAudioBuffer
  -> Map.Map Sample
       { buffer ::
           { backwards :: BrowserAudioBuffer
           , forward :: BrowserAudioBuffer
           }
       , url :: BufferUrl
       }
  -> BrowserAudioBuffer
sampleF sample forward silence =
  maybe silence
    (if forward then _.buffer.forward else _.buffer.backwards) <<< Map.lookup sample

internal0 :: SubSceneSig "singleton" ()
  { buf :: Maybe (Buffy RBuf)
  , seed :: Int
  , silence :: BrowserAudioBuffer
  , buffers :: SampleCache
  , time :: Number
  }
internal0 = { initialEntropies: { volume: 0.5, rate: 0.5, bufferOffset: 0.5, sample: 0.5 } } # SG.loopUsingScene
  \{ time
   , silence
   , buffers
   , seed
   , buf: buf'
   }
   { initialEntropies: initialEntropiesOld } -> case buf' of
    Nothing ->
      { control: { initialEntropies: initialEntropiesOld }
      , scene: { singleton: gain 0.0 (playBuf { onOff: Off } silence) }
      }
    Just
      ( Buffy
          { starting
          , startTime
          , rest:
              { sampleFoT
              , forward
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
      ) -> { newSeed: mkSeed seed, size: globalSize } # evalGen do
      volumeEntropy <- arbitrary
      rateEntropy <- arbitrary
      offsetEntropy <- arbitrary
      sampleEntropy <- arbitrary
      initialEntropies <-
        if starting then { volume: _, rate: _, sample: _, bufferOffset: _ }
          <$> arbitrary
          <*> arbitrary
          <*> arbitrary
          <*> arbitrary
        else pure initialEntropiesOld
      let
        sampleTime = time - startTime
        bigCycleTime = time - cycleStartsAt
        littleCycleTime = time - (cycleStartsAt + (toNumber currentCycle * littleCycleDuration))
        normalizedBigCycleTime = bigCycleTime / bigCycleDuration
        normalizedLittleCycleTime = littleCycleTime / littleCycleDuration
        normalizedClockTime = 0.0 -- cuz it's infinite :-P
        thisIsUnsampledTime initialEntropy' entropy' =
          UnsampledTimeIs
            { bigCycleTime
            , littleCycleTime
            , clockTime: time
            , normalizedClockTime
            , normalizedBigCycleTime
            , normalizedLittleCycleTime
            , littleCycleDuration
            , bigCycleDuration
            , initialEntropy: initialEntropy'
            , entropy: entropy'
            }
        buf = sampleF (sampleFoT (thisIsUnsampledTime initialEntropies.sample sampleEntropy))
          forward
          silence
          buffers
        normalizedSampleTime = sampleTime / duration
        thisIsTime initialEntropy' entropy' =
          TimeIs
            { sampleTime
            , bigCycleTime
            , littleCycleTime
            , clockTime: time
            , normalizedClockTime
            , normalizedSampleTime
            , normalizedBigCycleTime
            , normalizedLittleCycleTime
            , littleCycleDuration
            , bigCycleDuration
            , bufferDuration: bufferDuration buf
            , initialEntropy: initialEntropy'
            , entropy: entropy'
            }
        vol = ff globalFF $ pure $ volumeFoT (thisIsTime initialEntropies.volume volumeEntropy)
      pure
        { control: { initialEntropies }
        , scene:
            { singleton:
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
                      , bufferOffset: bufferOffsetFoT (thisIsTime initialEntropies.bufferOffset offsetEntropy)
                      , playbackRate: ff globalFF $ pure $ rateFoT (thisIsTime initialEntropies.rate rateEntropy)
                      }
                      buf
                  )
            }
        }

internal1 :: SubSceneSig "singleton" ()
  { fng :: { future :: CfScoredBufferPool Next NBuf RBuf, globals :: Globals, seed :: Int }
  , buffers :: SampleCache
  , silence :: BrowserAudioBuffer
  , time :: Number
  }
internal1 = emptyLags # SG.loopUsingScene
  \{ time, buffers, silence, fng: { future, globals, seed } }
   { timeLag
   , volumeLag
   } -> { newSeed: mkSeed seed, size: globalSize } # evalGen do
    volumeEntropy <- arbitrary
    tumultEntropy <- arbitrary
    seeds <- sequence (V.fill (const arbitrary))
    let
      prevTime = extract timeLag
      prevVolume = extract volumeLag
      thisIsTime = wrap { clockTime: time, entropy: volumeEntropy }
      volumeNow = (unwrap globals).gain $ wrap { timeWas: prevTime, timeIs: thisIsTime, valWas: prevVolume }
    pure
      { control:
          { volumeLag: unwrapCofree volumeLag volumeNow
          , timeLag: unwrapCofree timeLag thisIsTime
          }
      , scene:
          { singleton: gain (ff globalFF $ pure $ volumeNow)
              { tmlt: tumult ((unwrap globals).fx (wrap { clockTime: time, entropy: tumultEntropy }))
                  { voice: subgraph
                      (V.zipWithE (/\) seeds (extract future))
                      (const $ const $ internal0)
                      (const $ uncurry { time, buffers, silence, seed: _, buf: _ })
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
  , seed :: Int
  , time :: Number
  }
droneSg = emptyLags
  # SG.loopUsingScene
      \{ time: time'
       , silence
       , buffers
       , seed
       , buf: buf'
       }
       { timeLag, rateLag, volumeLag, loopStartLag, loopEndLag } ->
        buf' # maybe'
          ( \_ ->
              { control: emptyLags
              , scene: { singleton: gain 0.0 { dronetmlt: tumult calm { voice: loopBuf { onOff: Off } silence } } }
              }
          )
          ( \( DroneNote
                 { sample
                 , forward
                 , volumeFoT
                 , loopStartFoT
                 , loopEndFoT
                 , rateFoT
                 , tumultFoT
                 }
             ) -> { newSeed: mkSeed seed, size: globalSize } # evalGen do
              volumeEntropy <- arbitrary
              loopStartEntropy <- arbitrary
              loopEndEntropy <- arbitrary
              rateEntropy <- arbitrary
              tumultEntropy <- arbitrary
              let
                thisIsTime entropy' = wrap { clockTime: time', entropy: entropy' }
                buf = sampleF sample forward silence buffers
                prevTime = extract timeLag
                prevVolume = extract volumeLag
                volumeNow = volumeFoT $ wrap
                  { timeWas: prevTime
                  , timeIs: thisIsTime volumeEntropy
                  , valWas: prevVolume
                  }
                prevLoopStart = extract loopStartLag
                loopStartNow = loopStartFoT $ wrap
                  { timeWas: prevTime
                  , timeIs: thisIsTime loopStartEntropy
                  , valWas: prevLoopStart
                  }
                prevLoopEnd = extract loopEndLag
                loopEndNow = loopEndFoT $ wrap
                  { timeWas: prevTime
                  , timeIs: thisIsTime loopEndEntropy
                  , valWas: prevLoopEnd
                  }
                prevRate = extract rateLag
                rateNow = rateFoT $ wrap
                  { timeWas: prevTime
                  , timeIs: thisIsTime rateEntropy
                  , valWas: prevRate
                  }
                vol = ff globalFF $ pure $ volumeNow
              pure
                { control:
                    { rateLag: unwrapCofree rateLag rateNow
                    , volumeLag: unwrapCofree volumeLag volumeNow
                    , loopStartLag: unwrapCofree loopStartLag loopStartNow
                    , loopEndLag: unwrapCofree loopEndLag loopEndNow
                    -- for now, the previous time gets no entropy
                    -- we can refactor to change this later (slightly more computationally expensive)
                    , timeLag: unwrapCofree timeLag (thisIsTime 0.0)
                    }
                , scene:
                    { singleton:
                        gain vol
                          { dronetmlt: tumult (tumultFoT (thisIsTime tumultEntropy))
                              { voice: loopBuf
                                  { onOff: ff globalFF $ pure On
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

futureMaker ::
  { | EWF
      ( CfScoredBufferPool Next NBuf RBuf
        -> Globals
        -> { future :: CfScoredBufferPool Next NBuf RBuf
           , globals :: Globals
           }
      )
  }
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
  :: forall r a h s t p
   . Lacks "air" r
  => Lacks "heart" r
  => Lacks "sounds" r
  => Lacks "title" r
  => Lacks "preload" r
  => { air :: a
     , heart :: h
     , sounds :: s
     , title :: t
     , preload :: p
     | r
     }
  -> Record r
delInPlace = RB.build
  ( RB.delete (Proxy :: Proxy "air")
      <<< RB.delete (Proxy :: Proxy "heart")
      <<< RB.delete (Proxy :: Proxy "sounds")
      <<< RB.delete (Proxy :: Proxy "preload")
      <<< RB.delete (Proxy :: Proxy "title")
  )

ntropi :: Behavior Int
ntropi =
  behavior \e ->
    makeEvent \f ->
      e `subscribe` \a2b -> (a2b <$> randomInt bottom top) >>= f

addEntropy
  :: forall trigger world
   . Lacks "entropy" world
  => AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { entropy :: Int | world })
addEntropy (ac /\ aff) = ac /\ do
  trigger /\ world <- aff
  pure (trigger /\ (Record.insert (Proxy :: _ "entropy") <$> ntropi <*> world))

engine
  :: Behavior SampleCache
  -> FullSceneBuilder
       (theFuture :: TheFuture)
       ( buffers :: SampleCache
       , entropy :: Int
       , silence :: BrowserAudioBuffer
       )
       Unit
engine bsc = usingc
  (thePresent wag <<< initialBuffers bsc <<< addEntropy <<< downloadSilence)
  acc
  \(SceneI { time: time', headroomInSeconds, trigger, world: { buffers, silence, entropy: entropy' } }) control ->
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
      , scene: { newSeed: mkSeed entropy', size: globalSize } # evalGen do
          seeds <- sequence (V.fill (const $ map { seed: _ } arbitrary))
          seedsDrone <- sequence (V.fill (const arbitrary))
          let vec = V.zipWithE Record.union forTemplate seeds
          pure $ speaker
            { mix: gain 1.0
                { subs: subgraph vec (const $ const $ internal1)
                    ( const $
                        { time: time'
                        , buffers
                        , silence
                        , fng: _
                        }
                    )
                    {}
                , drones: subgraph
                    (V.zipWithE (/\) seedsDrone ((unwrap theFuture).air +> (unwrap theFuture).heart +> V.empty))
                    (const $ const $ droneSg)
                    ( const $ uncurry
                        { time: time'
                        , buffers
                        , silence
                        , seed: _
                        , buf: _
                        }
                    )
                    {}
                }
            }
      }
