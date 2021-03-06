module WAGSI.Cookbook.YaxuJam where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Cycle (c2d)
import WAGS.Lib.Tidal.Tidal (changeRate, make, onTag, parse, s)

wag :: AFuture
wag = make 1.0
  { earth: s
      $ onTag "lowme" (changeRate (const 0.3))
      $ onTag "hime" (changeRate (const 1.8))
      $ parse "<tabla;lowme bassdm> tech gretsch:0 tabla:6;hime , ~ ~ psr ~ , chin:2 chin:2*4 <chin:22 [~ bd:2]> chin:2 "
  , heart: c2d $ parse "hollowair"
  , title: "Beat with @yaxu"
  }