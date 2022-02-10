module WAGSI.Cookbook.PollyWannaCracker where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Cycle (c2d, lowdark)
import WAGS.Lib.Tidal.Tidal (changeRate, changeVolume, make, parse, s)

wag :: AFuture
wag = make 1.0
  { earth: s $ map (changeRate (const 1.0)) $ parse "newnotes newnotes:1 newnotes:2 newnotes:3"
  -- comment `wind` in and out
  , wind: s $ map (changeVolume (const 0.1) <<< changeRate (const 2.0)) $ parse "newnotes newnotes:1 newnotes:2 newnotes:3 newnotes:6"
  , heart: c2d lowdark
  , title: "polyrhythm of notes"
  }