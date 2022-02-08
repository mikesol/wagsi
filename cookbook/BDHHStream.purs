module WAGSI.Cookbook.BDHHStream where

import Prelude

import Data.Array (replicate)
import Data.Int (toNumber)
import Data.List (List(..), (:))
import Data.Newtype (wrap)
import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import Math ((%), pi)
import Random.LCG (mkSeed)
import Test.QuickCheck.Gen (evalGen, frequency)
import WAGS.Create.Optionals (highpass)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Cycle (bd, cycleLength, hh, r)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, changeVolume, i_, make, s)
import WAGS.Math (calcSlope)

snglG = frequency $ wrap ((0.8 /\ pure bd) :| (0.2 /\ pure hh) : (0.1 /\ pure r) : Nil)
seqG = i_ <$> snglG <*> (replicate 100 <$> snglG)
seq = evalGen seqG { newSeed: mkSeed 0, size: 10 }
l = cycleLength seq

type FofTime = Number -> Number

driver1 :: FofTime
driver1 = lfo { phase: 0.0, amp: 2.0, freq: 1.0 }

freq1 :: FofTime
freq1 = lfo { phase: 0.0, amp: 1.0, freq: 2.0 }

driver2 :: FofTime
driver2 = lfo { phase: 0.0, amp: 1.5, freq: 0.25 }

freq2 :: FofTime
freq2 = lfo { phase: pi, amp: 1.0, freq: 1.0 }

base :: FofTime
base = add <$> (freq1 <<< driver1) <*> (freq2 <<< driver2)

vol :: FofTime
vol = min 1.0 <<< mul 0.6 <<< max 0.0 <<< base

dur = 1.0 / 16.0 :: Number

wag :: AFuture
wag =
  make (toNumber l * dur)
    { earth :
        map
          ( addEffect
              \{ clockTime } ->
                fx $ goodbye $ highpass
                  { freq: 2000.0 + lfo
                      { amp:
                          lfo
                            { amp: 801.0
                            , freq: 2.0
                            , phase: 1.0
                            }
                            clockTime + 900.0
                      , freq: lfo { amp: 4.0, freq: 0.2, phase: 1.0 } clockTime + 5.0
                      , phase: 0.0
                      }
                      clockTime
                  , q: 20.0 + lfo
                      { phase: 0.0
                      , amp: 15.0
                      , freq:
                          calcSlope 0.0 8.0 7.0 0.25 (clockTime % 7.0)
                      }
                      clockTime
                  }
                  hello
          ) $ s $ map (changeVolume (_.clockTime >>> vol)) seq
    , title: "bd hh stream"
    }
