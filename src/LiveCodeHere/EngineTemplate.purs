module WAGSI.LiveCodeHere.EngineTemplate where

import WAGSI.Plumbing.Hack ((/@\))
import WAGSI.Plumbing.Types (Extern)
import WAGS.Create.Optionals (speaker, constant)

-- stopPrelude
wagsi (e :: Extern) (a :: {}) = a /@\ speaker { toSpeaker: constant 0.0 }
