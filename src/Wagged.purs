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
        { unit0: gain (sin (e.time * pi * 3.0) * 0.04 + 0.09) 
          { osc0: sinOsc (if e.time % 2.0 < 1.4 then 337.0 + sin (pi * e.time * 2.0) * 10.0 else 440.0) }
        }
