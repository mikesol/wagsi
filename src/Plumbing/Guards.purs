module WAGSI.Plumbing.Guards where

import Prelude

import Control.Monad.State (evalState, modify)
import Data.Array as Array
import Data.Compactable (compact)
import Data.Foldable (foldl, fold)
import Data.Function (on)
import Data.Int (toNumber)
import Data.Lens (over, traversed)
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Lens.Tuple (_2)
import Data.List (List(..), sortBy)
import Data.Maybe (Maybe(..))
import Data.Newtype (unwrap)
import Data.Set as Set
import Data.Traversable (traverse)
import Data.Tuple (fst, snd, swap)
import Data.Tuple.Nested (type (/\), (/\))
import Foreign.Object as Object
import Data.Variant.Maybe (maybe)
import WAGS.Lib.Tidal.Types (TheFuture(..))
import WAGS.Lib.Tidal.Util (d2s, v2s)
import WAGS.Lib.Tidal.Types (AFuture)

epsilon = 0.2 :: Number

asFofCycles :: List (Int /\ AFuture) -> AFuture -> { clockTime :: Number } -> AFuture
asFofCycles = asFofTime
  <<< map swap
  <<< flip evalState 0.0
  <<< traverse (traverse (modify <<< (+)))
  <<< map swap
  <<< map \(a /\ b) -> toNumber a * (unwrap (unwrap b).cycleDuration) /\ b

asFofTime :: List (Number /\ AFuture) -> AFuture -> { clockTime :: Number } -> AFuture
asFofTime a wn = go withPreloads
  where
  sorted = sortBy (compare `on` fst) a
  makeSounds = \(TheFuture { sounds }) -> sounds
  makePreload = \(TheFuture { earth, wind, fire, air, heart, preload }) -> Set.toUnfoldable $ Set.fromFoldable (preload
      <> fold (map v2s [ earth, wind, fire ])
      <> (compact $ (map (maybe Nothing Just)) $ ((map <<< map) d2s [ air, heart ])))
  allPreloads =
    ( Array.fromFoldable
        $ join
        $ map makePreload (map snd sorted)
    )
      <> (Array.fromFoldable $ makePreload wn)
  allSounds = (foldl Object.union Object.empty $ map makeSounds (map snd sorted))
    `Object.union` (makeSounds wn)
  withPreloads = over (traversed <<< _2 <<< unto TheFuture)
    (_ { preload = allPreloads, sounds = allSounds })
    sorted
  go Nil _ = wn
  go (Cons (x /\ y) z) { clockTime } = if clockTime < (x - epsilon) then y else go z { clockTime }
