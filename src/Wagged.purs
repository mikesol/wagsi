module Wagged where

import Prelude
import Data.Tuple.Nested (type (/\), (/\))
import Math
import Hack (Extern, (/-\))
import WAGS.Change (ichange)
import WAGS.Create.Optionals
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

control (_:: Extern) (a :: Unit) = a

-- change this to make sound
-- for example, you can try:
-- a /-\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
graph (e :: Extern) (a :: Unit) = a /-\ speaker { unit0: gain (cos (pi * e.time) * -0.03 + 0.03) { osc0: sinOsc 440.0 },

unit1: gain (cos (pi * e.time) * -0.03 + 0.03) { osc1: sinOsc 660.0 },
unit2: gain (cos (pi * e.time* 0.99) * -0.03 + 0.03) { osc2: sinOsc 1120.0 },
unit3: gain (cos (pi * e.time * 1.02) * -0.015 + 0.015) { osc3: sinOsc 1900.0 }
 }
