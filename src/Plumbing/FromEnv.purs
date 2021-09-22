module WAGSI.Plumbing.FromEnv where

import Prelude

import Data.Maybe.First (First)
import Data.Maybe.Last (Last)
import Data.Monoid.Additive (Additive)
import Data.Monoid.Conj (Conj)
import Data.Monoid.Disj (Disj)
import Data.Monoid.Dual (Dual)
import Data.Monoid.Endo (Endo)
import Data.Monoid.Multiplicative (Multiplicative)
import Data.Newtype (class Newtype)
import Data.Symbol (class IsSymbol)
import Data.Typelevel.Num (class Pos)
import Prim.Row as Row
import Prim.RowList as RowList
import Record as Record
import Type.Proxy (Proxy(..))
import WAGS.Lib.Blip (ABlip, makeBlip)
import WAGS.Lib.BufferPool (ABufferPool, AHotBufferPool, ASnappyBufferPool, makeBufferPool, makeHotBufferPool, makeSnappyBufferPool)
import WAGS.Lib.Emitter (AnEmitter, makeEmitter)
import WAGS.Lib.Impulse (AnImpulse, makeImpulse)
import WAGS.Lib.Latch (ALatchAP, makeLatchAP)
import WAGS.Lib.Rate (ARate, makeRate)
import WAGS.Lib.Trigger (makeTrigger, makeSnappyTrigger, ATrigger, ASnappyTrigger)
import WAGS.Run (SceneI(..))
import WAGSI.Plumbing.Types (Extern)

class FromEnv val where
  fromEnv :: forall buffers floatArrays periodicWaves. Extern buffers floatArrays periodicWaves -> val

instance fromEnvUnit :: FromEnv Unit where
  fromEnv = const unit

instance fromEnvAdditive :: Monoid (Additive a) => FromEnv (Additive a) where
  fromEnv = const mempty

instance fromEnvConj :: Monoid (Conj a) => FromEnv (Conj a) where
  fromEnv = const mempty

instance fromEnvDisj :: Monoid (Disj a) => FromEnv (Disj a) where
  fromEnv = const mempty

instance fromEnvDual :: Monoid (Dual a) => FromEnv (Dual a) where
  fromEnv = const mempty

instance fromEnvEndo :: Monoid (Endo a b) => FromEnv (Endo a b) where
  fromEnv = const mempty

instance fromEnvMultiplicative :: Monoid (Multiplicative a) => FromEnv (Multiplicative a) where
  fromEnv = const mempty

instance fromEnvFirst :: Monoid (First a) => FromEnv (First a) where
  fromEnv = const mempty

instance fromEnvLast :: Monoid (Last a) => FromEnv (Last a) where
  fromEnv = const mempty

class FromEnvRow' (rl :: RowList.RowList Type) (o :: Row Type) | rl -> o where
  fromEnvRow' :: forall buffers floatArrays periodicWaves. Proxy rl -> Extern buffers floatArrays periodicWaves -> { | o }

instance fromEnvRowCons :: (IsSymbol sym, Row.Lacks sym restRow, FromEnv res, FromEnvRow' restRL restRow, Row.Cons sym res restRow o) => FromEnvRow' (RowList.Cons sym res restRL) o where
  fromEnvRow' _ e = Record.insert (Proxy :: _ sym) (fromEnv e) (fromEnvRow' (Proxy :: _ restRL) e)

instance fromEnvRowNil :: FromEnvRow' (RowList.Nil) () where
  fromEnvRow' _ _ = {}

instance fromEnvRow :: (RowList.RowToList o rl, FromEnvRow' rl o) => FromEnv { | o } where
  fromEnv e = fromEnvRow' (Proxy :: _ rl) e

---- lib wrap

newtype NTRate = NTRate ARate

derive instance newtypeNTRate :: Newtype NTRate _
instance fromEnvRate :: FromEnv NTRate where
  fromEnv (SceneI { time }) = NTRate $ makeRate { prevTime: time, startsAt: time }

newtype NTEmitter = NTEmitter AnEmitter

derive instance newtypeNTEmitter :: Newtype NTEmitter _
instance fromEnvEmitter :: FromEnv NTEmitter where
  fromEnv (SceneI { time }) = NTEmitter $ makeEmitter { startsAt: time }

newtype NTBufferPool n = NTBufferPool (ABufferPool n)

derive instance newtypeNTBufferPool :: Newtype (NTBufferPool n) _
instance fromEnvBufferPool :: Pos n => FromEnv (NTBufferPool n) where
  fromEnv _ = NTBufferPool makeBufferPool

newtype NTHotBufferPool n = NTHotBufferPool (AHotBufferPool n)

derive instance newtypeNTHotBufferPool :: Newtype (NTHotBufferPool n) _
instance fromEnvHotBufferPool :: Pos n => FromEnv (NTHotBufferPool n) where
  fromEnv (SceneI { time }) = NTHotBufferPool $ makeHotBufferPool { startsAt: time }

newtype NTSnappyBufferPool n = NTSnappyBufferPool (ASnappyBufferPool n)

derive instance newtypeNTSnappyBufferPool :: Newtype (NTSnappyBufferPool n) _
instance fromEnvSnappyBufferPool :: Pos n => FromEnv (NTSnappyBufferPool n) where
  fromEnv _ = NTSnappyBufferPool makeSnappyBufferPool

newtype NTTrigger = NTTrigger ATrigger

derive instance newtypeNTTrigger :: Newtype NTTrigger _
instance fromEnvTrigger :: FromEnv NTTrigger where
  fromEnv _ = NTTrigger makeTrigger

newtype NTSnappyTrigger = NTSnappyTrigger ASnappyTrigger

derive instance newtypeNTSnappyTrigger :: Newtype NTSnappyTrigger _
instance fromEnvSnappyTrigger :: FromEnv (NTSnappyTrigger) where
  fromEnv _ = NTSnappyTrigger makeSnappyTrigger

instance fromEnvImpulse :: FromEnv AnImpulse where
  fromEnv _ = makeImpulse

instance fromEnvBlip :: FromEnv ABlip where
  fromEnv _ = makeBlip

instance fromEnvLatch :: Eq v => FromEnv (ALatchAP v) where
  fromEnv _ = makeLatchAP