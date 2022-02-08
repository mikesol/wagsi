module WAGSI.Cookbook.Undulate where

import Prelude

import Data.Foldable (foldl)
import Data.Lens (over, set)
import Data.Profunctor (lcmap)
import Math (pi)
import WAGS.Lib.Tidal.Cycle (c2d, hollowair)
import WAGS.Lib.Tidal.Samples (clockTime)
import WAGS.Lib.Tidal.Tidal (betwixt, derivative, ldr, ldv, lvg, make, s)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
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
  , title: "Undulating drone"
  }