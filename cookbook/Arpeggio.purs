module WAGSI.Cookbook.Arpeggio where

import Prelude

import Data.Lens (_Just, set)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Samples (littleCycleTime)
import WAGS.Lib.Tidal.Tidal (lnr, lnv, make, onTag, parse_, s)
import WAGSI.Plumbing.Types (WhatsNext)

wag :: WhatsNext
wag = make 1.0
  { earth: s
      $ onTag "psr" (set (_Just <<< lnv) (const 0.1))
      $ onTag "vd" (set (_Just <<< lnr) (lcmap littleCycleTime (add 0.5)))
      $ parse_ "voodoo*6;vd ~ , ~ voodoo:3 , ~ speakspell:4;psr ~ ~"
  , title: "Arpeggio up"
  }