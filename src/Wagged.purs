module Wagged where

import Prelude
import Data.Tuple.Nested (type (/\), (/\))
import Engine (cont)
import WAGS.Change (ichange)
import WAGS.Create.Optionals
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

control _ a = a

graph _ a = a /\ speaker { toSpeaker: constant 0.0 }

-- wag
it = cont control graph identity
