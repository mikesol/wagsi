module Wagged where

import Prelude
import Data.Tuple.Nested (type (/\), (/\))
import Math
import WAGS.Change (ichange)
import WAGS.Create.Optionals
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

control _ (a :: Unit) = a

graph e (a :: Unit) =
  a
    /\ speaker
        { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 }
        }
