module WAGSI.Cookbook.CourseLesson7 where

import Prelude

import Data.Tuple.Nested ((/\))
import Type.Proxy (Proxy(..))
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Piecewise (simplePiecewise)
import WAGS.Lib.Tidal.Tidal (changeBufferOffset, changeForward, changeVolume, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag =
  make 3.0
    { earth: s
        $ map (changeVolume (_.sampleTime >>> simplePiecewise [ 0.0 /\ 0.0, 0.05 /\ 0.8, 0.25 /\ 0.0 ]))
        $ map (changeBufferOffset (_.clockTime >>> lfo { phase: 0.0, amp: 2.0, freq: 1.0 } >>> add 2.0))
        $ map (changeForward (_.normalizedLittleCycleTime >>> (_ > 0.5) >>> if _ then false else true))
        $ parse (Proxy :: _ "pad:1 [ pad:1 [pad:1 [pad:1 [pad:1 pad:1]]]]")
    , title: "course - lesson 7 - buffers"
    }