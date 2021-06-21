module Wagged where

import Prelude
import Data.Tuple.Nested (type (/\), (/\))
import Math
import WAGS.Change (ichange)
import WAGS.Create.Optionals
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

control _ a = a

graph e a =
  a
    /\ speaker
        { unit: gain 0.11 { osc: sinOsc (if e.time % 2.0 < 1.4 then 337.0 + sin (pi * e.time * 2.0) * 10.0 else 440.0) }
        , unit0: gain 0.09 { osc0: sinOsc (if e.time % 2.1 < 1.4 then 437.0 + sin (pi * e.time * 0.5) * 20.0 else 550.0) }
        , unit2: gain 0.05 { osc2: sinOsc (if e.time % 1.4 < 0.9 then 460.0 + sin (pi * e.time * 3.0) * 20.0 else 700.0) }
        }
