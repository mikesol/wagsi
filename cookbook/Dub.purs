module WAGSI.Cookbook.Dub where

import Prelude

import Math (pow, (%))
import WAGS.Create.Optionals (bandpass, gain, lowpass, sawtoothOsc, squareOsc)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)

m = 1.2
facH1 = 0.6
toffset = 0.2

pitch :: Number -> Number
pitch tm' = midiToFreq val
  where
  tm = (tm' + toffset) % (m * 4.0)
  val = if tm < m then 33.0 else if tm < 2.0 * m then 28.0 else if tm < 3.0 * m then 36.0 else if   tm < 4.0 * m then 31.0 else 33.0

lfofq :: Number -> Number
lfofq tm' = val
  where
  tm = (tm' + toffset) % (m * 4.0)
  val =  if tm < m then 6.0 else if tm < 2.0 * m then 12.0 else if tm < 3.0 * m then 4.0 else if tm < 4.0 * m then 8.0 else 6.0

midiToFreq :: Number -> Number
midiToFreq n = 440.0 * (2.0 `pow` ((n - 69.0) / 12.0))

wag :: AFuture
wag = make (m * 4.0)
  { earth:
      map
        ( addEffect \{ clockTime } ->
            fx $ goodbye $ gain 1.0
              { bassdm: hello
              , osc0: gain (ff 0.03 $ pure $ lfo { amp: 0.25, freq: (lfofq clockTime) / m, phase: 0.4 } clockTime + 0.52) { osc0o: lowpass { freq: 110.0, q: 7.0 } $ squareOsc (pitch clockTime) }
              , osc1: gain ((ff 0.03 $ pure $ (lfo { amp: 0.25, freq: (lfofq clockTime) / m, phase: 0.4 } clockTime + 0.52) * facH1))  { osc1o: bandpass { freq: 330.0, q: 3.0 } $ sawtoothOsc (pitch clockTime * 1.97) }
              }
        ) $ s "bd*8"
  , title: "dubstep"
  }
