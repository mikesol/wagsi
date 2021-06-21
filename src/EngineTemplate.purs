module EngineTemplate where

import Data.Tuple.Nested ((/\))
import WAGS.Create.Optionals (speaker, constant)

-- stopPrelude
graph _ a = a /\ speaker { toSpeaker: constant 0.0 }
