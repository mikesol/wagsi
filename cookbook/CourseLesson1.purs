module WAGSI.Cookbook.CourseLesson1 where

import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (AFuture)

ohHi = Proxy :: _ """
  hh
"""

wag :: AFuture
wag =
  make 1.1
    { earth: s ohHi
    , title: "course - lesson 1 - hello sample"
    }