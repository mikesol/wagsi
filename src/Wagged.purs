module Wagged where

import Prelude

import Data.Tuple.Nested (type (/\), (/\))
import Engine (cont)
import WAGS.Change (ichange)
import WAGS.Create.Optionals (speaker, gain, sinOsc)
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

graph = speaker { unit0: gain 0.02 { osc0: sinOsc 440.0 } }

it = cont (\_ a -> a) (\_ a -> a /\ graph) identity
