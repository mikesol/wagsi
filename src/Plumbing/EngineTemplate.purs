module WAGSI.Plumbing.EngineTemplate where

import WAGSI.Plumbing.Hack ((/@\))
import WAGSI.Plumbing.Types (Extern)
import WAGS.Create.Optionals (speaker, constant)

-- stopPrelude
wagsi (e :: Extern) (a :: {}) = a /@\ speaker { zeros: constant 0.0 }
