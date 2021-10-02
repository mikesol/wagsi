module WAGSI.Cookbook.Shuffle where

import Prelude

import WAGSI.Plumbing.Types (TheFuture)
import Data.Array.NonEmpty (head, replicate, sortBy, tail)
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (toNumber)
import Data.Lens (_Just, set, traversed)
import Data.Traversable (traverse)
import Data.Tuple (fst, snd, Tuple(..))
import Test.QuickCheck (arbitrary, mkSeed)
import Test.QuickCheck.Gen (Gen, evalGen)
import WAGS.Math (calcSlope)
import WAGSI.Plumbing.Cycle (pad)
import WAGSI.Plumbing.Tidal (i, lnbo, lnf, lnv, make, x, s)

shuffle xs = { newSeed: mkSeed 42, size: 10 } # evalGen do
  ns <- traverse (flip map (arbitrary :: Gen Int) <<< Tuple) xs
  pure $ map fst $ sortBy (compare `on` snd) ns

hocket fwd len cyc =
  let
    arr = shuffle $ mapWithIndex (\ix _ -> offsets len ix <<< short len <<< bkwd fwd) (replicate len unit)
  in
    i (head arr $ cyc) (map ((#) cyc) (tail arr))

bkwd fwd = set (traversed <<< _Just <<< lnf) fwd

short dv = set (traversed <<< _Just <<< lnv) \{ sampleTime, littleCycleDuration } ->
  let
    bar = littleCycleDuration / toNumber dv
    vl
      | sampleTime < 0.1 = min 1.0 $ max 0.0 $ calcSlope 0.0 0.0 0.15 1.0 sampleTime
      | sampleTime < bar = 1.0
      | otherwise = min 1.0 $ max 0.0 $ calcSlope bar 1.0 (bar + 0.2) 0.0 sampleTime
  in
    vl

offsets l i = set (traversed <<< _Just <<< lnbo) \{ bufferDuration } -> bufferDuration * (toNumber i) / toNumber l

wag :: TheFuture
wag = make 4.0 { earth: s $ x (hocket false 8 pad) [ hocket true 8 pad ] }