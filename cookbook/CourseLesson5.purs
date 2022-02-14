module WAGSI.Cookbook.CourseLesson5 where

import Prelude

import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Tidal (changeRate, changeVolume, make, onTag, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag =
  make 3.2
    { earth: s
        $ onTag "b0" (changeRate (const 1.3))
        $ onTag "b1" (changeRate (const 1.2))
        $ onTag "b2" (changeRate (const 1.1))
        $ onTag "b3" (changeRate (const 1.05))
        $ parse (Proxy :: _ " bd [~ [~ bd;b0]] [~ bd;b1 ~ bd;b2] bd;b3")
    , wind: s
        $ map (changeVolume (const 0.4))
        $ parse (Proxy :: _ " hh hh hh hh hh hh hh hh hh hh hh hh hh hh hh hh")
    , fire: s
        $ onTag "c0" (changeVolume (const 0.8))
        $ parse (Proxy :: _ " ~ clap;c0 ~ clap")
    , title: "course - lesson 5 - volume and rate"
    }