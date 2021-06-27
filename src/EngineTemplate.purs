module EngineTemplate where

import Prelude

import Data.Tuple.Nested ((/\))
import Hack (Extern)
import WAGS.Create.Optionals (speaker, constant)

-- stopPrelude
control (e :: Extern) (a :: Unit) = a

graph (e :: Extern) (a :: Unit) = a /\ speaker { toSpeaker: constant 0.0 }

wagsi = control /\ graph
