module Wagged where

import Prelude

import Data.Tuple.Nested (type (/\))
--import Engine (cont, Cont)
import WAGS.Change (ichange)
import WAGS.Graph.AudioUnit (OnOff(..), TGain, TSinOsc, TSpeaker)

type Graph
  = ( speaker :: TSpeaker /\ { unit0 :: Unit }
    , unit0 :: TGain /\ { osc0 :: Unit, osc1 :: Unit }
    , osc0 :: TSinOsc /\ {}
    , osc1 :: TSinOsc /\ {}
    )

type Control
  = Unit

-- wag
it =
  (cont :: forall proof. Cont Graph Control proof)
    ( \a ->
        ichange
          { osc0: {freq: 449.0 }, unit0: 0.05
          }
    )
    ( \e a ->
        ichange
          {}
    )
