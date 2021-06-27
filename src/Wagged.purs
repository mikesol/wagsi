module Wagged where

import Prelude
import Data.Tuple.Nested (type (/\), (/\))
import Math
import Hack (Extern, (/@\))
import WAGS.Change (ichange)
import WAGS.Create.Optionals
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

control (_ :: Extern) (a :: Unit) = a

-- change this to make sound
-- for example, you can try:
-- a /\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
graph (e :: Extern) (a :: Unit) = a /\ speaker { toSpeaker: constant 0.0 }

wagsi = control /@\ graph
