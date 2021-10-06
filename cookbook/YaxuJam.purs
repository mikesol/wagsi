module WAGSI.LiveCodeHere.YaxuJam where

import Prelude

import Data.Lens (_Just, set)
import WAGSI.Plumbing.Cycle (c2d, hollowair)
import WAGSI.Plumbing.Tidal (lnr, make, onTag, parse, s)
import WAGSI.Plumbing.Types (TheFuture)

wag :: TheFuture
wag = make 1.0
  { earth: s
      $ onTag "lowme" (set (_Just <<< lnr) (const 0.3))
      $ onTag "hime" (set (_Just <<< lnr) (const 1.8))
      $ parse "<tabla;lowme bassdm> tech gretsch:0 tabla:6;hime , ~ ~ psr ~ , chin:2 chin:2*4 <chin:22 [~ bd:2]> chin:2 "
  , heart: c2d hollowair
  }