module WAGSI.Cookbook.ManyMany where

import Prelude

import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Tidal (changeVolume, make, parse_, s)

wag :: AFuture
wag =
  make 1.6
    { earth: s $ map (changeVolume (const 0.3)) $ parse_ "glitch:0 ~ glitch:1 ~"
    , wind: s $ map (changeVolume (const 0.3)) $ parse_ "~ bd:0 ~ chin:0*4 ~"
    , fire: s $ map (changeVolume (const 0.3)) $ parse_ "~ tink:1 tink:2 tink:3 tink:4 ~"
    , lambert: s $ map (changeVolume (const 0.3)) $ parse_ "notes:0 notes:1"
    , hendricks: s $ map (changeVolume (const 0.3)) $ parse_ "~ [notes:10 notes:11]"
    , ross: s $ map (changeVolume (const 0.3)) $ parse_ "~ psr:3 ~"
    , peter: s $ map (changeVolume (const 0.3)) $ parse_ "~ [~ glitch:4]"
    , paul: s $ map (changeVolume (const 0.3)) $ parse_ "hh ~ ~ hh"
    , mary: s $ map (changeVolume (const 0.3)) $ parse_ "~ sn ~ ~"
    , title: "many many many"
    }
