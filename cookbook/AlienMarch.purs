module WAGSI.Cookbook.AlienMarch where

import Prelude

import Data.Lens (set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Tidal (lnr, lnv, make, onTag, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag = make 2.0
  { earth: s
      $ onTag "k1" (set (traversed <<< lnr) (const 0.5))
      $ onTag "pd" (set (traversed <<< lnv) (lcmap (unwrap >>> _.normalizedSampleTime) $ mul 2.0))
      $ parse " kurt*2;k1 kurt*3 kurt*2 kurt*5 , hit , bass , ~ ~ pad;pd _ _"
  , title: "Alien march, time rising"
  }