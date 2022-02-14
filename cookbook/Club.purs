module WAGSI.Cookbook.Club where

import Prelude

import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (AFuture)

m2 = 4.0 * 1.0 * 60.0/111.0 :: Number

wag :: AFuture
wag =
  make 1.0
    { earth: s seq
    , title: "club"
    }

seq :: String
seq = """<
  [psr:3 bd [notes:2,hh*2] [notes:3,chin*4]]
  [bd bd [notes:4,hh*2] [notes:5,chin*4]]
  [psr:3 bd [notes:6,hh*2] [notes:7,chin*4]]
  [bd bd [notes:8,hh*2] [notes:9,chin*4]]
  [[psr:3 psr:3] bd [notes:2,hh*2] [notes:3,chin*4]]
  [bd bd [notes:8,hh*2] [notes:9,chin*4]]
  [psr:3 bd [notes:9,hh*2] [notes:8,chin*4]]
  [bd bd [notes:10,hh*2] [notes:6,chin*4]]
  [psr:3 bd [notes:9,hh*2] [notes:7,chin*4]]
  [psr:3 bd [notes:10,hh*2] [notes:7,chin*4]]
  [psr:3 bd [notes:12,hh*2] [notes:7,chin*4]]
  [psr:3 bd [notes:14,hh*2] [notes:7,chin*4]]
  [psr:3 bd psr:3 [notes:7,chin*4]]
  [psr:3 bd psr:3 [notes:7,chin*4]]
  [psr:3 [psr:3,bd] [psr:3,notes:7] [psr:3,bd]]
  [[psr:3,notes:0] [psr:3,bd,notes:1] [psr:3,bd,[notes:6 notes:3]] [psr:3,bd,[notes:2 notes:0]]]
>
"""