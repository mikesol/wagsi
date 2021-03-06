module WAGSI.Cookbook.DelayedDrone where

import Prelude

import Data.Lens (set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Create.Optionals (delay, gain, highpass, ref)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Sounds.Drones as Drones
import WAGS.Lib.Tidal.Cycle (c2d)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (ldt, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture, getNow)

wag :: AFuture
wag = make 1.0
  { earth: s "tabla chin*4 tabla:4 tabla:6"
  , heart:
      set (traversed <<< ldt)
        ( lcmap (getNow >>> unwrap >>> _.clockTime) \t -> fx
            ( goodbye $ gain 1.0
                { mymix: highpass
                    { freq: 3010.0 + lfo { phase: 0.0, freq: 0.1, amp: 3000.0 } t
                    , q: 1.0
                    }
                    hello
                , fback: gain 0.3
                    { del: delay (0.5 + lfo { phase: 0.0, freq: 2.0, amp: 0.3 } t) { mymix: ref }
                    }
                }
            )
        ) $ c2d $ parse "lowdark"
  , title: "Drone with delay"
  , sounds: Drones.drones
  }