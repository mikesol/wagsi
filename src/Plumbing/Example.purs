module WAGSI.Plumbing.Example where

import Prelude

import WAGS.Lib.Tidal.Tidal (make, s)
import WAGSI.Plumbing.Types (WhatsNext)

wag :: { clockTime :: Number } -> WhatsNext
wag _ =
  make 1.0
    { earth: s $ "bd"
    , title: "an example"
    }
