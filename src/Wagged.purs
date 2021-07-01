module Wagged where

import Math
import Prelude
import WAGS.Create.Optionals

import Data.Tuple.Nested (type (/\), (/\))
import EZCtrl (ezctrl)
import FromEnv (ORow)
import Hack (Extern, (/@\))
import WAGS.Change (ichange)
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

control :: Extern -> ORow () -> ORow ()
control = ezctrl

-- change this to make sound
-- for example, you can try:
-- a /\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }

graph (e :: Extern) (a :: ORow ()) = a /\ speaker { toSpeaker: constant 0.0 }

wagsi = control /@\ graph
