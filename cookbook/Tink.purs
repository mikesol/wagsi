module WAGSI.Cookbook.Tink where

import Prelude

import Data.Lens (_Just, set)
import Data.Profunctor (lcmap)
import WAGSI.Plumbing.Samples (sampleTime)
import WAGSI.Plumbing.Tidal (lnr, lnv, make, onTag, parse, s)
import WAGSI.Plumbing.Types (TheFuture)
import Wags.Learn.Oscillator (lfo)

wag :: TheFuture
wag = make 4.0
  { earth: s
      $ onTag "g0" (set (_Just <<< lnr) (lcmap sampleTime \t -> 1.0 - t))
      $ onTag "g1" (set (_Just <<< lnv) (lcmap sampleTime \t -> lfo { amp: 0.4, freq: 20.0, phase: 0.0} t + 0.7))
      $ parse " gab lighter gab;g0 lighter gab lighter gab;g1 lighter  , ~ industrial ~ ~ ~ tink ~ ~ "
  , title: "industrial tink"
  }