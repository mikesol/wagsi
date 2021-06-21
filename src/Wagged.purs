module Wagged where

import Prelude
import Data.Tuple.Nested (type (/\), (/\))
import Engine (cont)
import Math
import WAGS.Change (ichange)
import WAGS.Create.Optionals
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

control _ a = a

--graph _ a = a /\ speaker { toSpeaker: constant 0.0 }
graph e a =
  a
    /\ speaker
        { unit: gain 0.18 { osc: sinOsc (if e.time % 1.10 < 1.4 then 337.0 + sin (pi * e.time * 2.0) * 10.0 else 440.0)}
        }

-- wag
it = cont control graph identity
