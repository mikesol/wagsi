module WAGSI.Cookbook.CourseLesson10 where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (wrap)
import Foreign.Object (lookup, singleton)
import WAGS.Create.Optionals (bandpass, highpass, lowpass, convolver, gain)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag =
  make 6.0
    { earth:
        map
          ( addEffect
              \{ buffers, silence } ->
                fx $ goodbye $ convolver
                 (maybe silence _.buffer.forward (lookup "reverb0" buffers)) hello
          ) $ s "future"
    , wind:
        map
          ( addEffect
              \{ clockTime } ->
                fx $ goodbye $ gain 1.0
                  { bp0: lowpass
                      { freq: 500.0 + lfo { amp: 250.0, freq: 0.1, phase: 0.0 } clockTime
                      , q: 10.0
                      }
                      hello
                  , bp1: bandpass
                      { freq: 1000.0 + lfo { amp: 500.0, freq: 0.3, phase: 0.0 } clockTime
                      , q: 15.0
                      }
                      hello
                  , bp2: bandpass
                      { freq: 2000.0 + lfo { amp: 1000.0, freq: 0.7, phase: 0.0 } clockTime
                      , q: 20.0
                      }
                      hello
                  , bp3: highpass
                      { freq: 3000.0 + lfo { amp: 1500.0, freq: 1.0, phase: 0.0 } clockTime
                      , q: 25.0
                      }
                      hello
                  }
          ) $ s "pad:1"
    , preload: map wrap [ "reverb0" ]
    , sounds: map wrap $ singleton "reverb0" "http://reverbjs.org/Library/AbernyteGrainSilo.m4a"
    , title: "course - lesson 10 - filters and reverb"
    }
