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
        { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc (sin (pi * e.time * 10.0) * 5.0 + 440.0) }
        , unit1: gain (cos (pi * e.time * 1.2) * -0.02 + 0.02) { osc1: sinOsc (sin (pi * e.time * 2.0) * 5.0 + 660.0) }
        , dline: gain 1.0 { unit2: ref, delay: delay (0.6 + sin (e.time * pi * 0.3) * 0.1)  { dgain: gain 0.4 { dline: ref } } }
        , unit2: gain 0.2 { lb0: loopBuf { playbackRate: 1.1 + sin (pi * e.time * 0.4) * 0.4 } "drop" }
        }
