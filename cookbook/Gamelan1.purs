module WAGSI.Cookbook.Gamelan1 where

import Prelude

import Data.Lens (set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Tidal (lnr, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Sounds.Gamelan as Gamelan

wag :: AFuture
wag = make 2.0
  { earth: s
      $ set (traversed <<< traversed <<< lnr) (lcmap unwrap \{ normalizedBigCycleTime  } -> 1.0 + normalizedBigCycleTime * 0.0)
      $ parse """
      BBPL1 BBPL2h BBPL2h BBPL3 BBPL2h BBPL2h BBPL5 BBPL2h BBPL2h BBPL4 BBPL6 BBPL6 BBPL3h BBPL2h BBPL4 BBPL2h
      """
  , title: "gamelan 1"
  , sounds: Gamelan.sounds
  }