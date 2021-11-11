module WAGSI.Plumbing.Example where

import Prelude

import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (Sample(..))
import WAGSI.Plumbing.Types (WhatsNext)

wag :: { clockTime :: Number } -> WhatsNext
wag { clockTime }
  | clockTime < 3.2 =  make 1.0 { earth: s $ "bd:0 bd:0", preload: map Sample ["bd:0", "hh:0", "chin:0"] }
  | otherwise =  make 1.0 { earth: s $ "bd:0 bd:0 hh:0 chin:0*4" }
