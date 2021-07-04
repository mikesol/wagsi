module Wagged where

import Math
import Prelude
import WAGS.Create.Optionals

import Data.Tuple.Nested (type (/\), (/\))
import EZCtrl (ezctrl)
import FromEnv (ORow)
import Wagsi.Types (Extern)
import Hack ((/@\))
import WAGS.Change (ichange)
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

-- change this to make sound
-- for example, you can try:
-- a /@\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }

wagsi (e :: Extern) (a :: {}) = a /@\ speaker { toSpeaker: constant 0.0 }
