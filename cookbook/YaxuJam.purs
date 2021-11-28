module WAGSI.LiveCodeHere.YaxuJam where

import Prelude

import Data.Lens (_Just, set)
import WAGS.Lib.Tidal.Cycle (c2d, hollowair)
import WAGS.Lib.Tidal.Tidal (lnr, make, onTag, parse_, s)
import WAGS.Lib.Tidal (AFuture)

wag :: AFuture
wag = make 1.0
  { earth: s
      $ onTag "lowme" (set (_Just <<< lnr) (const 0.3))
      $ onTag "hime" (set (_Just <<< lnr) (const 1.8))
      $ parse_ "<tabla;lowme bassdm> tech gretsch:0 tabla:6;hime , ~ ~ psr ~ , chin:2 chin:2*4 <chin:22 [~ bd:2]> chin:2 "
  , heart: c2d hollowair
  , title: "Beat with @yaxu"
  }