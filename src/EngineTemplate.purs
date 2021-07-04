module EngineTemplate where

import Prelude

import Data.Tuple.Nested ((/\))
import EZCtrl (ezctrl)
import FromEnv (ORow)
import Hack ((/@\))
import Wagsi.Types (Extern)
import WAGS.Create.Optionals (speaker, constant)

-- stopPrelude
wagsi (e :: Extern) (a :: {}) = a /@\ speaker { toSpeaker: constant 0.0 }
