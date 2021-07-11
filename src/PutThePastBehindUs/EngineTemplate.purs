module WAGSI.PutThePastBehindUs.EngineTemplate where

import WAGS.Create.Optionals (speaker, constant)
import WAGS.Lib.Rate (ARate)
import WAGSI.Plumbing.Hack ((/@\))
import WAGSI.Plumbing.Types (Extern)

wagsi (_ :: Extern) (a :: { room0Rate0 :: ARate, room1Rate0 :: ARate }) = a /@\ speaker { zeros: constant 0.0 }
