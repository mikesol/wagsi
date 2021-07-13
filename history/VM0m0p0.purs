module WAGSI.History.VM0m0p0 where

import Math
import Prelude
import WAGS.Create.Optionals

import Control.Comonad (extract)
import Control.Comonad.Cofree.Class (unwrapCofree)
import Data.Newtype (unwrap)
import WAGS.Lib.Rate (ARate)
import WAGS.Run (SceneI(..))
import WAGSI.Plumbing.Hack ((/@\))
import WAGSI.Plumbing.Types (Extern)

-- change this to make sound
-- for example, you can try:
-- a /\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
--wagsi (e :: Extern) (a :: {}) = a /@\ speaker { toSpeaker: constant 0.0 }
wagsi (SceneI { time } :: Extern) ( a ::
    { rate0 :: ARate
    , rate1 :: ARate
    }
) =
  let
    rate0 =
      unwrap a.rate0
        { time
        , rate: 8.0 + sin (pi * time) * 6.0
        }

    rate1 =
      unwrap a.rate1
        { time
        , rate: 2.0 + sin (pi * time) * 1.0
        }
  in
    { rate0: unwrapCofree rate0, rate1: unwrapCofree rate1 }
      /@\ speaker
          { unit0: gain (cos (pi * (extract rate0)) * -0.02 + 0.02) { osc0: sinOsc 440.0 }
          , unit1: gain (cos (pi * (extract rate1)) * -0.02 + 0.02) { osc1: sinOsc 660.0 }
          }
