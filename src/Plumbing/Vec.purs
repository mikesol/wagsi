module Wagsi.Vec where

import Data.Typelevel.Num (class Lt, class Nat, toInt')
import Data.Vec as V
import Type.Proxy (Proxy(..))

foreign import unsafeMapWithTypedIndex :: forall a b n. Int -> (forall i. Nat i => Lt i n => i -> a -> b) -> V.Vec n a -> V.Vec n b

class
  Nat n <= VectorMap n where
  mapWithTypedIndex :: forall a b. (forall i. Nat i => Lt i n => i -> a -> b) -> V.Vec n a -> V.Vec n b

instance vectorMap :: Nat n => VectorMap n where
  mapWithTypedIndex = unsafeMapWithTypedIndex (toInt' (Proxy :: _ n))