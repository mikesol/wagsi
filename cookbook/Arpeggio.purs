module WAGSI.Cookbook.Arpeggio where

import Prelude

import WAGSI.Plumbing.Types (TheFuture)
import Data.Lens (_Just, set)
import WAGSI.Plumbing.Tidal (lnr, lnv, make, onTag, parse, s)

wag :: TheFuture
wag = make 1.0
  { earth: s
      $ onTag "psr" (set (_Just <<< lnv) (const 0.1))
      $ onTag "vd" (set (_Just <<< lnr) (\{ littleCycleTime } -> 0.5 + littleCycleTime))
      $ parse "voodoo*6;vd ~ , ~ voodoo:3 , ~ speakspell:4;psr ~ ~"
  }