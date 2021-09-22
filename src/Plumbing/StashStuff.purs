module WAGSI.Plumbing.StashStuff where

import Prelude

import Control.Promise (toAffE)
import Data.Maybe (Maybe(..))
import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Tuple.Nested (type (/\), (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec as V
import Effect (Effect)
import Effect.Aff (Aff, Fiber, forkAff, joinFiber)
import Effect.Class (liftEffect)
import Foreign.Object (fromHomogeneous)
import Foreign.Object as O
import Prim.Row (class Lacks)
import Prim.Row as Row
import Prim.RowList as RowList
import Record as Record
import Type.Proxy (Proxy(..))
import Type.Row.Homogeneous (class Homogeneous)
import WAGS.Interpret (decodeAudioDataFromUri, makeFloatArray, makePeriodicWave)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer, BrowserFloatArray, BrowserPeriodicWave)
import WAGSI.Plumbing.Types (Stash(..))

class ToPeriodicWaveRL (rl :: RowList.RowList Type) ri ro | rl -> ro where
  toPeriodicWaveRL :: Proxy rl -> AudioContext -> O.Object BrowserPeriodicWave -> { | ri } -> Effect { | ro }

instance onlyContainsPeriodicWavesRLNil :: ToPeriodicWaveRL RowList.Nil ri () where
  toPeriodicWaveRL _ _ _ _ = pure {}

instance onlyContainsPeriodicWavesRLCons ::
  ( IsSymbol a
  , Pos n
  , Row.Cons a (V.Vec n Number /\ V.Vec n Number) r' r
  , Row.Cons a BrowserPeriodicWave ro' ro
  , Lacks a ro'
  , ToPeriodicWaveRL c r ro'
  ) =>
  ToPeriodicWaveRL (RowList.Cons a (V.Vec n Number /\ V.Vec n Number) c) r ro where
  toPeriodicWaveRL _ ac obj r = do
    rest <- toPeriodicWaveRL (Proxy :: _ c) ac obj r
    pw <- case O.lookup (reflectSymbol (Proxy :: _ a)) obj of
      Just pw -> pure pw
      Nothing -> do
        let sin /\ cos = Record.get (Proxy :: _ a) r
        makePeriodicWave ac sin cos
    pure $ Record.insert (Proxy :: _ a) pw rest

toPeriodicWave
  :: forall rl r ro
   . RowList.RowToList r rl
  => ToPeriodicWaveRL rl r ro
  => AudioContext
  -> O.Object BrowserPeriodicWave
  -> { | r }
  -> Effect { | ro }
toPeriodicWave = toPeriodicWaveRL (Proxy :: _ rl)

class ToAudioBufferRL (rl :: RowList.RowList Type) ri ro | rl -> ro where
  toAudioBufferRL :: Proxy rl -> AudioContext -> O.Object BrowserAudioBuffer -> { | ri } -> Aff (Fiber { | ro })

instance onlyContainsAudioBuffersRLNil :: ToAudioBufferRL RowList.Nil ri () where
  toAudioBufferRL _ _ _ _ = pure $ pure {}

instance onlyContainsAudioBuffersRLCons ::
  ( IsSymbol a
  , Pos n
  , Row.Cons a String r' r
  , Row.Cons a BrowserAudioBuffer ro' ro
  , Lacks a ro'
  , ToAudioBufferRL c r ro'
  ) =>
  ToAudioBufferRL (RowList.Cons a (V.Vec n Number /\ V.Vec n Number) c) r ro where
  toAudioBufferRL _ ac obj r = do
    rest <- toAudioBufferRL (Proxy :: _ c) ac obj r
    pw <- case O.lookup (reflectSymbol (Proxy :: _ a)) obj of
      Just pw -> pure (pure pw)
      Nothing -> do
        let url = Record.get (Proxy :: _ a) r
        forkAff $ toAffE $ decodeAudioDataFromUri ac url
    pure (Record.insert (Proxy :: _ a) <$> pw <*> rest)

toAudioBuffer
  :: forall rl r ro
   . RowList.RowToList r rl
  => ToAudioBufferRL rl r ro
  => AudioContext
  -> O.Object BrowserAudioBuffer
  -> { | r }
  -> Aff (Fiber { | ro })
toAudioBuffer = toAudioBufferRL (Proxy :: _ rl)

class ToFloatArrayRL (rl :: RowList.RowList Type) ri ro | rl -> ro where
  toFloatArrayRL :: Proxy rl -> O.Object BrowserFloatArray -> { | ri } -> Effect { | ro }

instance onlyContainsFloatArraysRLNil :: ToFloatArrayRL RowList.Nil ri () where
  toFloatArrayRL _ _ _ = pure {}

instance onlyContainsFloatArraysRLCons ::
  ( IsSymbol a
  , Pos n
  , Row.Cons a (Array Number) r' r
  , Row.Cons a BrowserFloatArray ro' ro
  , Lacks a ro'
  , ToFloatArrayRL c r ro'
  ) =>
  ToFloatArrayRL (RowList.Cons a (V.Vec n Number /\ V.Vec n Number) c) r ro where
  toFloatArrayRL _ obj r = do
    rest <- toFloatArrayRL (Proxy :: _ c) obj r
    pw <- case O.lookup (reflectSymbol (Proxy :: _ a)) obj of
      Just pw -> pure pw
      Nothing -> do
        let arr = Record.get (Proxy :: _ a) r
        makeFloatArray arr
    pure $ Record.insert (Proxy :: _ a) pw rest

toFloatArray
  :: forall rl r ro
   . RowList.RowToList r rl
  => ToFloatArrayRL rl r ro
  => O.Object BrowserFloatArray
  -> { | r }
  -> Effect { | ro }
toFloatArray = toFloatArrayRL (Proxy :: _ rl)

type CacheStash = Stash (O.Object BrowserAudioBuffer) (O.Object BrowserFloatArray) (O.Object BrowserPeriodicWave)

type StashSig periodicWavesI periodicWavesO buffersI buffersO floatArraysI floatArraysO =
  AudioContext
  -> CacheStash
  -> Stash { | buffersI } { | floatArraysI } { | periodicWavesI }
  -> Aff { cache :: CacheStash, stash :: Stash { | buffersO } { | floatArraysO } { | periodicWavesO } }

type StashedSig periodicWaves buffers floatArrays =
  AudioContext
  -> CacheStash
  -> Aff { cache :: CacheStash, stash :: Stash { | buffers } { | floatArrays } { | periodicWaves } }


toStash
  :: forall periodicWavesRL periodicWavesI periodicWavesO buffersRL buffersI buffersO floatArraysRL floatArraysI floatArraysO
   . RowList.RowToList periodicWavesI periodicWavesRL
  => RowList.RowToList buffersI buffersRL
  => RowList.RowToList floatArraysI floatArraysRL
  => ToFloatArrayRL floatArraysRL floatArraysI floatArraysO
  => ToAudioBufferRL buffersRL buffersI buffersO
  => ToPeriodicWaveRL periodicWavesRL periodicWavesI periodicWavesO
  => Homogeneous floatArraysO BrowserFloatArray
  => Homogeneous periodicWavesO BrowserPeriodicWave
  => Homogeneous buffersO BrowserAudioBuffer
  => StashSig periodicWavesI periodicWavesO buffersI buffersO floatArraysI floatArraysO
toStash ac (Stash cache) (Stash instr) = do
  buffers <- toAudioBuffer ac cache.buffers instr.buffers >>= joinFiber
  floatArrays <- liftEffect $ toFloatArray cache.floatArrays instr.floatArrays
  periodicWaves <- liftEffect $ toPeriodicWave ac cache.periodicWaves instr.periodicWaves
  pure
    { cache: Stash
        { buffers: O.union (fromHomogeneous buffers) cache.buffers
        , floatArrays: O.union (fromHomogeneous floatArrays) cache.floatArrays
        , periodicWaves: O.union (fromHomogeneous periodicWaves) cache.periodicWaves
        }
    , stash: Stash { buffers, floatArrays, periodicWaves }
    }
