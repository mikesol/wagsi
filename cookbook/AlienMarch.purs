module WAGSI.Cookbook.AlienMarch where

import Prelude

import Data.Lens (set, traversed)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Samples (normalizedSampleTime)
import WAGS.Lib.Tidal.Tidal (lnr, lnv, make, onTag, parse_, s)

wag :: AFuture
wag = make 2.0
  { earth: s
      $ onTag "k1" (set (traversed <<< lnr) (const 0.5))
      $ onTag "pd" (set (traversed <<< lnv) (lcmap normalizedSampleTime $ mul 2.0))
      $ parse_ " kurt*2;k1 kurt*3 kurt*2 kurt*5 , hit , bass , ~ ~ pad;pd _ _"
  , title: "Alien march, time rising"
  }