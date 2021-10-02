module WAGSI.Cookbook.Wagged where

import Prelude

import WAGSI.Plumbing.Types (TheFuture)
import Data.Lens (_Just, set)
import WAGSI.Plumbing.Tidal (lnr, lnv, make, onTag, parse, s)
import Wags.Learn.Oscillator (lfo)

wag :: TheFuture
wag = make 4.0
  { earth: s
      $ onTag "g0" (set (_Just <<< lnr) (\{ sampleTime } -> 1.0 - sampleTime))
      $ onTag "g1" (set (_Just <<< lnv) (\{ sampleTime } -> lfo { amp: 0.4, freq: 20.0, phase: 0.0} sampleTime + 0.7))
      $ parse " gab lighter gab;g0 lighter gab lighter gab;g1 lighter  , ~ industrial ~ ~ ~ tink ~ ~ "
  }