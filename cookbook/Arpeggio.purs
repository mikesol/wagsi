module WAGSI.Cookbook.Arpeggio where

import Prelude

import Data.Lens (set, traversed)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Samples (littleCycleTime)
import WAGS.Lib.Tidal.Tidal (lnr, lnv, make, onTag, parse_, s)

wag :: AFuture
wag = make 1.0
  { earth: s
      $ onTag "psr" (set (traversed <<< lnv) (const 0.1))
      $ onTag "vd" (set (traversed <<< lnr) (lcmap littleCycleTime (add 0.5)))
      $ parse_ "voodoo*6;vd ~ , ~ voodoo:3 , ~ speakspell:4;psr ~ ~"
  , title: "Arpeggio up"
  }