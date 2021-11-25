module WAGSI.LiveCodeHere.Wagged where

import Prelude

import Data.Lens (_Just, set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Lib.Tidal.Tidal (lnr, make, parse_, s)
import WAGSI.Plumbing.Types (WhatsNext)
import WAGS.Lib.Sounds.Gamelan as Gamelan

wag :: WhatsNext
wag = make 2.0
  { earth: s
      $ set (traversed <<< _Just <<< lnr) (lcmap unwrap \{ normalizedBigCycleTime  } -> 1.0 + normalizedBigCycleTime * 0.0)
      $ parse_ """
      hh hh hh
      """
  , title: "gamelan 1"
  , sounds: Gamelan.sounds
  }