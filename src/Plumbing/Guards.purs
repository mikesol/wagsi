module WAGSI.Plumbing.Guards where

import Prelude

import Data.Array as Array
import Data.Compactable (compact)
import Data.Foldable (fold)
import Data.Function (on)
import Data.Lens (set, traversed)
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Lens.Tuple (_2)
import Data.Lens.Record (prop)
import Data.List (List(..), sortBy)
import Data.Set as Set
import Data.Tuple (fst, snd)
import Data.Tuple.Nested (type (/\), (/\))
import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Types (TheFuture(..))
import WAGS.Lib.Tidal.Util (d2s, v2s)
import WAGSI.Plumbing.Types (WhatsNext)

epsilon = 0.2 :: Number

asFofTime :: List (Number /\ WhatsNext) -> WhatsNext -> { clockTime :: Number } -> WhatsNext
asFofTime a wn = go withPreloads
  where
  sorted = sortBy (compare `on` fst) a
  makePreload = \(TheFuture { earth, wind, fire, air, heart, preload }) -> Set.toUnfoldable $ Set.fromFoldable preload
          <> fold (map v2s [ earth, wind, fire ])
          <> (Set.fromFoldable $ compact ((map <<< map) d2s [ air, heart ]))
  allPreloads = (Array.fromFoldable $ join $ map makePreload (map snd sorted)) <> (Array.fromFoldable $ makePreload wn)
  withPreloads = set (traversed <<< _2 <<< unto TheFuture <<< prop (Proxy :: _ "preload")) allPreloads sorted
  go Nil  _ = wn
  go (Cons (x /\ y) z) { clockTime } = if clockTime < (x - epsilon) then y else go z { clockTime }