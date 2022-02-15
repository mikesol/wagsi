module WAGSI.Cookbook.FastAndFurryous where

import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag =
  make 0.6
    { earth: s
        ( Proxy :: _
            """<
  [bd bd hh*2 [notes:6, chin*4]]
  [bd bd hh*2 [notes:7, chin*4]]
  [bd bd hh*2 [notes:8, chin*4]]
  [psr:2 hh hh hh*2]
  [bd bd hh*2 [notes:10, chin*4]]
  [bd bd hh*3 [notes:12, chin*4]]
  [bd bd hh*2 [notes:13, chin*4]]
  [bd [bd,hh:8] hh [notes:14, chin*4]]
  [bd bd hh*2 [notes:1, chin*4]]

  [[bd,hh:4] bd hh*2 [notes:6, chin*4] bd bd hh*2 [notes:7, chin*4]]
  [bd bd hh*2 [notes:8, chin*4] bd bd hh*2 [notes:9, chin*4]]
  [[bd,hh:5] bd hh*2 [notes:10, chin*4] bd bd hh*2 [notes:12, chin*4]]
  [bd bd hh*2 [notes:13, chin*4] bd bd hh*2 [notes:14, chin*4]]

  [bd bd hh*2 [notes:13, chin*4]]
  [glitch:4 bd hh*2 [notes:14, chin*4]]

  [[bd,hh:1] bd hh*2 [notes:6, chin*4] bd bd hh*2 [notes:7, chin*4]]

  [bd [bd,hh:4] hh*2 [notes:13, chin*4]]
  [bd hh*2 [notes:6, chin*4] bd hh*2 [notes:7, chin*4]]

>"""
        )
    , title: "Fast and Furry-ous"
    }
