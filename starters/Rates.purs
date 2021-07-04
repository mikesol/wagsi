module WAGSI.Starters.Rates where

import Math
import Prelude
import WAGS.Create.Optionals

import Control.Comonad.Cofree (head, tail)
import Data.Newtype (unwrap)
import Hack ((/@\))
import LibWrap (ARate(..))
import Wagsi.Types (Extern)

-- change this to make sound
-- for example, you can try:
-- a /\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
--wagsi (e :: Extern) (a :: {}) = a /@\ speaker { toSpeaker: constant 0.0 }
wagsi ({ time, headroom } :: Extern) ( a ::
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
    { rate0: (ARate (tail rate0)), rate1: (ARate (tail rate1)) }
      /@\ speaker
          { unit0: gain (cos (pi * (head rate0)) * -0.02 + 0.02) { osc0: sinOsc 440.0 }
          , unit1: gain (cos (pi * (head rate1)) * -0.02 + 0.02) { osc1: sinOsc 660.0 }
          }
