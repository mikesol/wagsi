module WAGSI.Cookbook.SimpleGroove where

import Prelude

import WAGS.Lib.Tidal.Tidal (make, s)
import WAGSI.Plumbing.Types (WhatsNext)

m2 = 4.0 * 1.0 * 60.0/111.0 :: Number

wag :: WhatsNext
wag =
  make (m2 * 2.0)
    { earth: s "bd:3 _ hh _ bd:6 bd hh ~ "
    , title: "smpl grv"
    }
