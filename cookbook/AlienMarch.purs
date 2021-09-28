module WAGSI.Cookbook.AlienMarch where

import Prelude

import Data.Lens (_Just, set)
import WAGSI.Plumbing.Tidal (TheFuture, lnr, lnv, make, onTag, parse, s)

wag :: TheFuture
wag = make 2.0
  { earth: s
      $ onTag "k1" (set (_Just <<< lnr) (const 0.5))
      $ onTag "pd" (set (_Just <<< lnv) (\{ normalizedSampleTime } -> normalizedSampleTime * 2.0))
      $ parse " kurt*2;k1 kurt*3 kurt*2 kurt*5 , hit , bass , ~ ~ pad;pd _ _"
  }