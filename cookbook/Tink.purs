module WAGSI.Cookbook.Tink where

import Prelude

import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (changeRate, changeVolume, make, onTag, parse, s)

wag :: AFuture
wag = make 4.0
  { earth: s
      $ onTag "g0" (changeRate \{sampleTime: t} -> 1.0 - t)
      $ onTag "g1" (changeVolume \{sampleTime:t} -> lfo { amp: 0.4, freq: 20.0, phase: 0.0} t + 0.7)
      $ parse " gab lighter gab;g0 lighter gab lighter gab;g1 lighter  , ~ industrial ~ ~ ~ tink ~ ~ "
  , title: "industrial tink"
  }