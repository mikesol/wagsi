module Wagged where

import Math
import Prelude
import WAGS.Create.Optionals

import Control.Comonad.Cofree (head, tail)
import Data.Int (toNumber)
import Data.Newtype (unwrap, wrap)
import Data.Tuple.Nested (type (/\), (/\))
import EZCtrl (ezctrl)
import FromEnv (ORow(..))
import Hack ((/@\))
import LibWrap (ARate(..))
import WAGS.Change (ichange)
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)
import Wagsi.Types (Extern)

control :: Extern -> ORow (rate0 :: ARate) -> ORow (rate0 :: ARate)
control = ezctrl

-- change this to make sound
-- for example, you can try:
-- a /\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }

graph ({ time, headroom } :: Extern) (a :: ORow (rate0 :: ARate)) =
  let
    rate = unwrap (unwrap a).rate0 { time,  rate: 8.0 + sin (pi * time) * 6.0 }
  in
    (wrap {rate0: (ARate (tail rate))}) /\ speaker { unit0: gain (cos (pi * (head rate)) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }

wagsi = control /@\ graph
