module WAGSI.Cookbook.PollyWannaCracker where

import Prelude

import Data.Lens (_Just, set)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Cycle (c2d, lowdark)
import WAGS.Lib.Tidal.Samples (normalizedSampleTime)
import WAGS.Lib.Tidal.Tidal (lnr, lnv, make, parse_, s)
import WAGS.Lib.Tidal (AFuture)

wag :: AFuture
wag = make 1.0
  { earth: s $ map (set (_Just <<< lnr) (lcmap normalizedSampleTime \_ -> 1.0)) $ parse_ "newnotes newnotes:1 newnotes:2 newnotes:3"
  -- comment `wind` in and out
  , wind: s $ map (set (_Just <<< lnv) (const 0.1) <<< set (_Just <<< lnr) (lcmap normalizedSampleTime \_ -> 2.0 {- -t -} )) $ parse_ "newnotes newnotes:1 newnotes:2 newnotes:3 newnotes:6"
  , heart: c2d lowdark
  , title: "polyrhythm of notes"
  }