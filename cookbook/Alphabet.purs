module WAGSI.Cookbook.Alphabet where

import Prelude

import WAGS.Create.Optionals (bandpass, gain, highpass, ref, sawtoothOsc, triangleOsc)
import Data.Vec as V
import Data.Typelevel.Num.Reps (d0, d1)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal (AFuture)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)

f = ff 0.03

wag :: AFuture
wag =
  make 8.0
    { earth:
        map
          ( addEffect
              \{ clockTime, externalControl: { floats } } ->
                let
                  fAdd = V.index floats d0
                  freqAdd = V.index floats d1
                  fund = 256.0 + fAdd
                in
                  fx $ goodbye $ gain 1.0
                    { ipt: hello
                    , mxr: gain 1.0
                        { bp0: bandpass
                            { freq: f $ pure $ 2000.0 + freqAdd + lfo
                                { phase: 0.0
                                , freq: 0.3
                                , amp: 1500.0
                                }
                                clockTime
                            , q: 40.0
                            }
                            { oscs: ref }
                        , bp1: highpass
                            { freq: f $ pure $ 1500.0 + lfo
                                { phase: 0.0
                                , freq: 0.1
                                , amp: 1400.0
                                }
                                clockTime
                            , q: 30.0
                            }
                            { oscs: ref }
                        , muted: gain 0.0
                            { oscs: gain 1.0
                                { osc0: sawtoothOsc (f $ pure $ fund)
                                , osc1: triangleOsc (f $ pure $ fund * 2.0 + 10.0)
                                }
                            }
                        }
                    }
          ) $ s $ "tink:1 tink:2 tink:3 tink:4"
    , title: "alphabet"
    }