module WAGSI.Plubming.Newtype where

import Data.Newtype (class Newtype, wrap)
import Data.Symbol (class IsSymbol)
import Heterogeneous.Mapping (class HMapWithIndex, class MappingWithIndex, hmapWithIndex)
import Prim.Row as Row
import Type.Proxy (Proxy(..))

data Newtypify (r :: Row Type) = Newtypify

instance newtypifyAll ::
  ( IsSymbol sym
  , Row.Cons sym nt x nts
  , Newtype nt a
  ) =>
  MappingWithIndex (Newtypify nts) (Proxy sym) a nt where
  mappingWithIndex _ _ = wrap

newtypify' :: forall proxy r a b. HMapWithIndex (Newtypify r) { | a } { | b } => proxy r -> { | a } -> { | b }
newtypify' _ = hmapWithIndex (Newtypify :: Newtypify r)

newtypify :: forall r a b. HMapWithIndex (Newtypify r) { | a } { | b } => { | a } -> { | b }
newtypify = newtypify' (Proxy :: _ r)