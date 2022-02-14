module WAGSI.Cookbook.PollyWannaCracker where

import Prelude

import WAGS.Lib.Sounds.Drones as Drones
import WAGS.Lib.Tidal.Cycle (c2d)
import WAGS.Lib.Tidal.Tidal (changeRate, changeVolume, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag = make 1.0
  { earth: s $ map (changeRate (const 1.0)) $ parse "newnotes newnotes:1 newnotes:2 newnotes:3"
  -- comment `wind` in and out
  , wind: s $ map (changeVolume (const 0.1) <<< changeRate (const 2.0)) $ parse "newnotes newnotes:1 newnotes:2 newnotes:3 newnotes:6"
  , heart: c2d $ parse "lowdark"
  , sounds: Drones.drones
  , title: "polyrhythm of notes"
  }