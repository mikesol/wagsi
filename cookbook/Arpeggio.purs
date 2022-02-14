module WAGSI.Cookbook.Arpeggio where

import Prelude

import Data.Lens (set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Tidal (lnr, lnv, make, onTag, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag = make 1.0
  { earth: s
      $ onTag "psr" (set (traversed <<< lnv) (const 0.1))
      $ onTag "vd" (set (traversed <<< lnr) (lcmap (unwrap >>> _.littleCycleTime) (add 0.5)))
      $ parse "voodoo*6;vd ~ , ~ voodoo:3 , ~ speakspell:4;psr ~ ~"
  , title: "Arpeggio up"
  }