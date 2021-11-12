module WAGSI.Plumbing.Example where

import Prelude

import Data.List ((:), List(..))
import Data.Tuple.Nested ((/\))
import WAGS.Lib.Tidal.Tidal (make, s)
import WAGSI.Plumbing.Guards (asFofCycles)
import WAGSI.Plumbing.Types (WhatsNext)

wag :: { clockTime :: Number } -> WhatsNext
wag =
  asFofCycles
    ( (4 /\ make 1.0 { earth: s $ "bd:0" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0 hh:0 ~" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0 hh:0 chin:0*4" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0" })
        : (4 /\ make 1.0 { earth: s $ "bd:0" })
        : Nil
    )
    $ make 1.0 { earth: s $ "" }
