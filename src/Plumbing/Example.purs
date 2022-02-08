module WAGSI.Plumbing.Example where

import Prelude

import Data.List ((:), List(..))
import Data.Tuple.Nested ((/\))
import WAGS.Lib.Tidal.Tidal (make, s)
import WAGSI.Plumbing.Guards (asFofCycles)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: { clockTime :: Number } -> AFuture
wag =
  asFofCycles
    ( (2 /\ make 1.0 { earth: s $ "" })
        : (4 /\ make 1.0 { earth: s $ "bd:0" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0 hh:0 ~" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0 hh:0 chin:0*4" })
        : (4 /\ make 1.0 { earth: s $ "bd:0 bd:0" })
        : (4 /\ make 1.0 { earth: s $ "bd:0" })
        : Nil
    )
    $ make 1.0 { earth: s $ "" }
