module WAGSI.Plumbing.Example where

import Prelude

import Data.Lens (_Just, set)
import Data.Profunctor (lcmap)
import WAGSI.Plumbing.Cycle (c2d, lowdark)
import WAGSI.Plumbing.Samples (normalizedSampleTime)
import WAGSI.Plumbing.Tidal (lnr, lnv, make, parse, s)
import WAGSI.Plumbing.Types (TheFuture)

wag :: TheFuture
wag = make 1.0
  { earth: s "newnotes newnotes:1 newnotes:2 newnotes:3"
  -- comment `wind` in and out
  , wind: s
      $ map
          ( set (_Just <<< lnv) (const 0.1)
              <<< set (_Just <<< lnr) (lcmap normalizedSampleTime \t -> 2.0 - t)
          )
      $ parse "newnotes newnotes:1 newnotes:2 newnotes:3 newnotes:6"
  , heart: c2d lowdark
  , title: "Colliding notes"
  }
