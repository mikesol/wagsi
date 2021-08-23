module Wagsi.Vec where

import Data.Typelevel.Num (class Lt, class Nat, class Pos, class Pred, class Sub, class Succ, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, NumCons(..), d0, d1, d2, d3, d4, d5, d6, d7, d8, d9)
import Data.Vec as V
import Type.Proxy (Proxy(..))

class ProxyToNat n where
  proxyToNat :: Proxy n -> n

instance proxyToNatD0 :: ProxyToNat D0 where
  proxyToNat _ = d0
instance proxyToNatD1 :: ProxyToNat D1 where
  proxyToNat _ = d1
instance proxyToNatD2 :: ProxyToNat D2 where
  proxyToNat _ = d2
instance proxyToNatD3 :: ProxyToNat D3 where
  proxyToNat _ = d3
instance proxyToNatD4 :: ProxyToNat D4 where
  proxyToNat _ = d4
instance proxyToNatD5 :: ProxyToNat D5 where
  proxyToNat _ = d5
instance proxyToNatD6 :: ProxyToNat D6 where
  proxyToNat _ = d6
instance proxyToNatD7 :: ProxyToNat D7 where
  proxyToNat _ = d7
instance proxyToNatD8 :: ProxyToNat D8 where
  proxyToNat _ = d8
instance proxyToNatD9 :: ProxyToNat D9 where
  proxyToNat _ = d9
instance proxyToNatCons :: (ProxyToNat a, ProxyToNat b) => ProxyToNat (NumCons a b) where
  proxyToNat _ = NumCons (proxyToNat (Proxy :: _ a)) (proxyToNat (Proxy :: _ b))

class
  (Nat total, Nat n, ProxyToNat total, ProxyToNat n) <= VectorMap' total n where
  mapWithTypedIndex' :: forall a b. Proxy total -> (forall i. Nat i => ProxyToNat i => Lt i total => Proxy i -> a -> b) -> V.Vec n a -> V.Vec n b

class
  (Nat n, ProxyToNat n) <= VectorMap n where
  mapWithTypedIndex :: forall a b. (forall i. Nat i => ProxyToNat i => Lt i n => Proxy i -> a -> b) -> V.Vec n a -> V.Vec n b

instance vectorMap :: VectorMap' n n => VectorMap n where
  mapWithTypedIndex = mapWithTypedIndex' (Proxy :: _ n)

instance vectorMapD0 :: (Nat n, ProxyToNat n) => VectorMap' n D0 where
  mapWithTypedIndex' _ _ _ = V.empty
else instance vectorMapN ::
  ( Nat x
  , ProxyToNat x
  , ProxyToNat n
  , Lt x total
  , Pos total
  , Pred n n'
  , Succ n' n
  , VectorMap' total n'
  , Sub total n x
  ) =>
  VectorMap' total n where
  mapWithTypedIndex' t f a =
    V.cons (f (Proxy :: _ x) (V.head a))
      (mapWithTypedIndex' t f (V.tail a))