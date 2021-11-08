module WAGSI.Cookbook.Gamelan1 where

import Prelude

import Data.Lens (_Just, set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Tidal (lnr, make, parse_, s)
import WAGSI.Plumbing.Types (WhatsNext)
import WAGSI.Sounds.Gamelan as Gamelan

wag :: WhatsNext
wag = make 2.0
  { earth: s 
      $ set (traversed <<< _Just <<< lnr) (lcmap unwrap \{ normalizedBigCycleTime  } -> 1.0 + normalizedBigCycleTime * 0.0)
      $ parse_ """
      BBPL1 BBPL2h BBPL2h BBPL3 BBPL2h BBPL2h BBPL5 BBPL2h BBPL2h BBPL4 BBPL6 BBPL6 BBPL3h BBPL2h BBPL4 BBPL2h
      """
  , title: "gamelan 1"
  , sounds: Gamelan.sounds
  }