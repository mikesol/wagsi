module WAGSI.LiveCodeHere.Undulate where

import Prelude

import Data.Foldable (foldl)
import Data.Lens (over, set)
import Data.Profunctor (lcmap)
import Math (pi)
import WAGSI.Plumbing.Cycle (c2d, hollowair)
import WAGSI.Plumbing.Samples (clockTime)
import WAGSI.Plumbing.Tidal (betwixt, derivative, ldr, ldv, lvg, make, s)
import WAGSI.Plumbing.Types (TheFuture)
import Wags.Learn.Oscillator (lfo)

wag :: TheFuture
wag = make 1.0
  { earth: map (over lvg (map (betwixt 0.0 1.0) <<< flip derivative (0.1))) $ s "tech chin*4 tabla:2 tech:12*3"
  , heart:
      map
        ( set ldv (lcmap clockTime (add 1.5 <<< lfo { phase: pi, amp: 0.2, freq: 0.3 }))
            <<< set ldr
              ( lcmap clockTime
                  ( foldl ((<*>) <<< (<$>) (+)) (const 1.0)
                      [ lfo { phase: 0.0, amp: 0.03, freq: 7.0 }
                      , lfo { phase: 0.0, amp: 0.15, freq: 0.3 }
                      ]
                  )
              )
        ) $ c2d hollowair
  }