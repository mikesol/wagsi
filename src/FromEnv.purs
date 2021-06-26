module FromEnv where

import Prelude

import Data.Maybe.First (First)
import Data.Maybe.Last (Last)
import Data.Monoid.Additive (Additive)
import Data.Monoid.Conj (Conj)
import Data.Monoid.Disj (Disj)
import Data.Monoid.Dual (Dual)
import Data.Monoid.Endo (Endo)
import Data.Monoid.Multiplicative (Multiplicative)
import Data.Symbol (class IsSymbol)
import Prim.Row as Row
import Prim.RowList as RowList
import Record as Record
import Type.Proxy (Proxy(..))

class FromEnv env val where
  fromEnv :: env -> val

instance fromEnvUnit :: FromEnv anything Unit where
  fromEnv = const unit

instance fromEnvAdditive :: Monoid (Additive a) => FromEnv anything (Additive a) where
  fromEnv = const mempty

instance fromEnvConj :: Monoid (Conj a) => FromEnv anything (Conj a) where
  fromEnv = const mempty

instance fromEnvDisj :: Monoid (Disj a) => FromEnv anything (Disj a) where
  fromEnv = const mempty

instance fromEnvDual :: Monoid (Dual a) => FromEnv anything (Dual a) where
  fromEnv = const mempty

instance fromEnvEndo :: Monoid (Endo a b) => FromEnv anything (Endo a b) where
  fromEnv = const mempty

instance fromEnvMultiplicative :: Monoid (Multiplicative a) => FromEnv anything (Multiplicative a) where
  fromEnv = const mempty

instance fromEnvFirst :: Monoid (First a) => FromEnv anything (First a) where
  fromEnv = const mempty

instance fromEnvLast :: Monoid (Last a) => FromEnv anything (Last a) where
  fromEnv = const mempty

class FromEnvRow' (rl :: RowList.RowList Type) (e :: Type) (o :: Row Type) | rl e -> o where
  fromEnvRow' :: Proxy rl -> e -> { | o }

instance fromEnvRowCons :: (IsSymbol a, Row.Lacks a x, FromEnv e fo, FromEnvRow' c e x, Row.Cons a fo x o) => FromEnvRow' (RowList.Cons a b c) e o where
  fromEnvRow' _ e = Record.insert (Proxy :: _ a) (fromEnv e) (fromEnvRow' (Proxy :: _ c) e)

instance fromEnvRowNil :: FromEnvRow' (RowList.Nil) e () where
  fromEnvRow' _ _ = {}

-- ORow short for OrthogonalRow, meaning a row where the entires are orthogonal
newtype ORow r = ORow r

instance fromEnvORow :: (RowList.RowToList r rl, FromEnvRow' rl e o) => FromEnv e (ORow { | o }) where
  fromEnv e = ORow (fromEnvRow' (Proxy :: _ rl) e)