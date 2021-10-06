module WAGSI.Plumbing.Example where

import Prelude

import Data.Maybe (Maybe(..))
import WAGSI.Plumbing.Download (HasOrLacks(..))
import Data.Lens (_Just, set)
import Data.Profunctor (lcmap)
import WAGSI.Plumbing.Cycle (c2d, lowdark)
import WAGSI.Plumbing.Samples (normalizedSampleTime)
import WAGSI.Plumbing.Tidal (lnr, lnv, make, parse, s)
import WAGSI.Plumbing.Types (TheFuture)

example :: TheFuture
example = make 1.0
  { earth: s "newnotes newnotes:1 newnotes:2 newnotes:3"
  -- comment `wind` in and out
  , wind: s
      $ map
          ( set (_Just <<< lnv) (const 0.1)
              <<< set (_Just <<< lnr) (lcmap normalizedSampleTime \t -> 2.0 - t)
          )
      $ parse "newnotes newnotes:1 newnotes:2 newnotes:3 newnotes:6"
  , heart: c2d lowdark
  }

title = "Colliding notes" :: String
hasOrLacks =
  ( Just $ Has
      [ "newnotes_0"
      , "newnotes_1"
      , "newnotes_2"
      , "newnotes_3"
      , "newnotes_6"
      , "lowdark_0"
      ]
  ) :: Maybe HasOrLacks
