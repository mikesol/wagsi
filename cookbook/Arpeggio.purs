module WAGSI.Cookbook.Arpeggio where

import Prelude

import Data.Lens (_Just, set)
import Data.Profunctor (lcmap)
import WAGSI.Plumbing.Samples (littleCycleTime)
import WAGSI.Plumbing.Tidal (lnr, lnv, make, onTag, parse, s)
import WAGSI.Plumbing.Types (TheFuture)

wag :: TheFuture
wag = make 1.0
  { earth: s
      $ onTag "psr" (set (_Just <<< lnv) (const 0.1))
      $ onTag "vd" (set (_Just <<< lnr) (lcmap littleCycleTime (add 0.5)))
      $ parse "voodoo*6;vd ~ , ~ voodoo:3 , ~ speakspell:4;psr ~ ~"
  }