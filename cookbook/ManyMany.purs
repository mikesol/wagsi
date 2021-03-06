module WAGSI.Cookbook.ManyMany where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (changeVolume, make, parse, s)

wag :: AFuture
wag =
  make 1.6
    { earth: s $ map (changeVolume (const 0.3)) $ parse "glitch:0 ~ glitch:1 ~"
    , wind: s $ map (changeVolume (const 0.3)) $ parse "~ bd:0 ~ chin:0*4 ~"
    , fire: s $ map (changeVolume (const 0.3)) $ parse "~ tink:1 tink:2 tink:3 tink:4 ~"
    , lambert: s $ map (changeVolume (const 0.3)) $ parse "notes:0 notes:1"
    , hendricks: s $ map (changeVolume (const 0.3)) $ parse "~ [notes:10 notes:11]"
    , ross: s $ map (changeVolume (const 0.3)) $ parse "~ psr:3 ~"
    , title: "many many many"
    }
