module WAGSI.Cookbook.Tink where

import Prelude

import Data.Lens (_Just, set)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Samples (sampleTime)
import WAGS.Lib.Tidal.Tidal (lnr, lnv, make, onTag, parse_, s)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGSI.Plumbing.Types (WhatsNext)

wag :: WhatsNext
wag = make 4.0
  { earth: s
      $ onTag "g0" (set (_Just <<< lnr) (lcmap sampleTime \t -> 1.0 - t))
      $ onTag "g1" (set (_Just <<< lnv) (lcmap sampleTime \t -> lfo { amp: 0.4, freq: 20.0, phase: 0.0} t + 0.7))
      $ parse_ " gab lighter gab;g0 lighter gab lighter gab;g1 lighter  , ~ industrial ~ ~ ~ tink ~ ~ "
  , title: "industrial tink"
  }