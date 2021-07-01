module EngineTemplate where

import Prelude

import Data.Tuple.Nested ((/\))
import EZCtrl (ezctrl)
import FromEnv (ORow)
import Hack (Extern, (/@\))
import Hack (Extern)
import WAGS.Create.Optionals (speaker, constant)

-- stopPrelude
control :: Extern -> ORow () -> ORow ()
control = ezctrl

graph (e :: Extern) (a :: ORow ()) = a /\ speaker { toSpeaker: constant 0.0 }

wagsi = control /@\ graph
