module WAGSI.Cookbook.CourseLesson6 where

import Prelude

import Data.Tuple.Nested ((/\))
import Type.Proxy (Proxy(..))
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Piecewise (simplePiecewise)
import WAGS.Lib.Tidal.Tidal (changeRate, changeVolume, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag =
  make 3.0
    { earth: s
        $ map
            ( changeRate
                ( _.normalizedLittleCycleTime
                    >>> simplePiecewise [ 0.0 /\ 1.0, 0.5 /\ 1.5, 1.0 /\ 1.0 ]
                )
            )
        $ parse
            ( Proxy :: _
                """
        notes:0 ~ notes:1 notes:2 ~ notes:3
        notes:4 ~ notes:5 notes:6 notes:7 notes:8"""
            )
    , wind: s
        $ map
            ( changeVolume
                ( _.normalizedLittleCycleTime
                    >>>
                      ( mul
                          <$> simplePiecewise [ 0.0 /\ 1.0, 1.0 /\ 0.0 ]
                          <*> lfo { amp: 1.0, freq: 2.0, phase: 0.0 }
                      )
                )
            )
        $ parse (Proxy :: _ "pad:2")
    , fire: s
        $ map (changeVolume (_.sampleTime >>> simplePiecewise [ 0.0 /\ 1.0, 0.3 /\ 0.0 ]))
        $ parse
            ( Proxy :: _
                """
         [tabla2 tabla2:3 tabla2:3 tabla2:3]
         [tabla tabla2:12 tabla2:12 tabla2:12 tabla2:12]"""
            )
    , title: "course - lesson 6 - functions"
    }