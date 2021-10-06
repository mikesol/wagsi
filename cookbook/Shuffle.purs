module WAGSI.Cookbook.Shuffle where

import Prelude

import Data.Array.NonEmpty (head, replicate, sortBy, tail)
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (toNumber)
import Data.Lens (_Just, set,  traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import Data.Traversable (traverse)
import Data.Tuple (fst, snd, Tuple(..))
import Test.QuickCheck (arbitrary, mkSeed)
import Test.QuickCheck.Gen (Gen, evalGen)
import WAGS.Create.Optionals (highpass, lowpass, pan)
import WAGS.Math (calcSlope)
import WAGSI.Plumbing.Cycle (pad)
import WAGSI.Plumbing.FX (fx, goodbye, hello)
import WAGSI.Plumbing.Samples (bufferDuration)
import WAGSI.Plumbing.Tidal (i, lnbo, lnf, lnv, lvt, x, make, s)
import WAGSI.Plumbing.Types (TheFuture)
import Wags.Learn.Oscillator (lfo)

shuffle xs = { newSeed: mkSeed 42, size: 10 } # evalGen do
  ns <- traverse (flip map (arbitrary :: Gen Int) <<< Tuple) xs
  pure $ map fst $ sortBy (compare `on` snd) ns

hocket fwd len cyc =
  let
    arr = shuffle $ mapWithIndex (\ix _ -> offsets len ix <<< short len <<< bkwd fwd) (replicate len unit)
  in
    i (head arr $ cyc) (map ((#) cyc) (tail arr))

bkwd fwd = set (traversed <<< _Just <<< lnf) fwd

short dv = set (traversed <<< _Just <<< lnv) $ lcmap unwrap \{ sampleTime, littleCycleDuration } ->
  let
    bar = littleCycleDuration / toNumber dv
    vl
      | sampleTime < 0.1 = min 1.0 $ max 0.0 $ calcSlope 0.0 0.0 0.15 1.0 sampleTime
      | sampleTime < bar = 1.0
      | otherwise = min 1.0 $ max 0.0 $ calcSlope bar 1.0 (bar + 0.2) 0.0 sampleTime
  in
    vl

offsets l i = set (traversed <<< _Just <<< lnbo) $ lcmap bufferDuration \d -> d * (toNumber i) / toNumber l

wag :: TheFuture
wag = make 4.0 { earth: map (set lvt
        ( \{ clockTime } -> fx
            ( goodbye $ pan (1.0) { myhp: lowpass (lfo { phase:0.0, amp:2000.0, freq:0.4 } clockTime + 2000.0) hello}
            )
        )) $ s $ x (hocket true 8 pad ) [ ],
        wind: map (set lvt
        ( \{ clockTime } -> fx
            ( goodbye $ pan (-1.0) { myhp: highpass (lfo { phase:0.0, amp:2000.0, freq:0.4 } clockTime + 3000.0) hello}
            )
        )) $ s $ x (hocket false 8 pad) [  ] }