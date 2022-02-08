module WAGSI.Cookbook.Swingin where

import Prelude

import Data.Lens (over)
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Record (prop)
import Math (floor, (%))
import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (c2s, make, parse_, s, s2f)
import WAGS.Lib.Tidal.Types (NoteInFlattenedTime(..), Note(..))

tpo = 2.5 :: Number

-- big cycle
-- little cycle

swingN :: Number -> Number
swingN n = out * tpo / 8.0
  where
  bt = n * 8.0 / tpo
  btfl = floor bt
  btmod = bt % 1.0
  out = btfl + (if btmod > 0.49 then 0.66 else if btmod > 0.24 then 0.33 else 0.0)

swing :: forall event. NoteInFlattenedTime (Note event) -> NoteInFlattenedTime (Note event)
swing = (base $ prop (Proxy :: _ "littleStartsAt")) <<< (base $ prop (Proxy :: _ "bigStartsAt"))
  where
  base l = over (unto NoteInFlattenedTime <<< l) swingN

wag :: AFuture
wag =
  make tpo
    { earth: s $ (map <<< map) swing $ map s2f $ c2s $ parse_ """
    bd
    [hh bd]
    bd
    [hh bd]
    [~ bd]
    [hh bd]
    bd
    hh
    """
    , title: "swing it!"
    }
