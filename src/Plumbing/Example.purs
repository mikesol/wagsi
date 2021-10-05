module WAGSI.Plumbing.Example where

import Prelude

import Data.Lens (_Just, set)
import Data.Maybe (Maybe(..))
import Data.Profunctor (lcmap)
import WAGS.Create.Optionals (highpass)
import WAGSI.Plumbing.Cycle (c2d, lowdark)
import WAGSI.Plumbing.Download (HasOrLacks(..))
import WAGSI.Plumbing.FX (fx, goodbye, hello)
import WAGSI.Plumbing.Samples (clockTime)
import WAGSI.Plumbing.Tidal (ldt, make, s)
import WAGSI.Plumbing.Types (TheFuture)
import Wags.Learn.Oscillator (lfo)

title = "High-pass filter" :: String
hasOrLacks = (Just $ Has [ "tabla_0", "chin_0", "tabla_4", "tabla_6", "lowdark_0" ]) :: Maybe HasOrLacks

example :: TheFuture
example = make 1.0
  { earth: s "tabla chin*4 tabla:4 tabla:6"
  , heart:
      set (_Just <<< ldt)
        ( lcmap clockTime \t -> fx
            ( goodbye $ highpass
                { freq: 3010.0 + lfo { phase: 0.0, freq: 0.1, amp: 3000.0 } t
                , q: 1.0
                }
                hello
            )
        ) $ c2d lowdark
  }