module WAGSI.LiveCodeHere.Wagged where

import Prelude

import Data.Lens (_Just, set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Lib.Sounds.Gamelan as Gamelan
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Tidal (lnr, make, parse_, s)

wag :: AFuture
wag = make 4.0
  { earth: s "BBPL1 BBPL2h [BBPL2h BBPL3] BBPL3 BBPL2h [BBPL2h BBPL3] BBPL5 BBPL2h"
  , wind: s "<[~ DHA*2 ~ LUNG DHA ~ TAK TAK] [[~ DHA*2 ~ DHA] [~ DHUNG TONG TONG]]>"
  , title: "gamelan 1"
  , sounds: Gamelan.sounds
  }