module WAGSI.Plumbing.FromEnv where

import Prelude

import Data.Maybe (Maybe(..))
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
  fromEnv :: Extern -> val

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
  fromEnvRow' :: Proxy rl -> Extern -> { | o }

instance fromEnvRowCons :: (IsSymbol sym, Row.Lacks sym restRow, FromEnv res, FromEnvRow' restRL restRow, Row.Cons sym res restRow o) => FromEnvRow' (RowList.Cons sym res restRL) o where
  fromEnvRow' _ e = Record.insert (Proxy :: _ sym) (fromEnv e) (fromEnvRow' (Proxy :: _ restRL) e)

instance fromEnvRowNil :: FromEnvRow' (RowList.Nil) () where
  fromEnvRow' _ _ = {}

-- ORow short for OrthogonalRow, meaning a row where the entires are orthogonal
newtype ORow (r :: Row Type) = ORow { | r }

derive instance newtypeORow :: Newtype (ORow r) _

instance fromEnvORow :: (RowList.RowToList o rl, FromEnvRow' rl o) => FromEnv (ORow o) where
  fromEnv e = ORow (fromEnvRow' (Proxy :: _ rl) e)

newtype Marker = Marker Extern

derive instance newtypeMarker :: Newtype Marker _

instance fromEnvMarker :: FromEnv Marker where
  fromEnv = Marker

---- lib wrap

instance fromEnvRate :: FromEnv ARate where
  fromEnv (SceneI { time }) = makeRate { prevTime: time, startsAt: time }

instance fromEnvEmitter :: FromEnv AnEmitter where
  fromEnv (SceneI { time }) = makeEmitter { prevTime: time, startsAt: time }

instance fromEnvBufferPool :: Pos n => FromEnv (ABufferPool n r) where
  fromEnv _ = makeBufferPool Nothing Nothing

instance fromEnvHotBufferPool :: Pos n => FromEnv (AHotBufferPool n) where
  fromEnv (SceneI { time }) = makeHotBufferPool { prevTime: time, startsAt: time } Nothing Nothing

instance fromEnvSnappyBufferPool :: Pos n => FromEnv (ASnappyBufferPool n) where
  fromEnv _ = makeSnappyBufferPool  Nothing Nothing

instance fromEnvTrigger ::FromEnv (ATrigger) where
  fromEnv _ = makeTrigger

instance fromEnvSnappyTrigger :: FromEnv (ASnappyTrigger) where
  fromEnv _ = makeSnappyTrigger

instance fromEnvImpulse :: FromEnv AnImpulse where
  fromEnv _ = makeImpulse

instance fromEnvBlip :: FromEnv ABlip where
  fromEnv _ = makeBlip

instance fromEnvLatch :: Eq v => FromEnv (ALatchAP v) where
  fromEnv _ = makeLatchAP