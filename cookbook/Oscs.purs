module WAGSI.Cookbook.Oscs where

import Prelude

import Data.Array (replicate)
import Data.Foldable (foldl)
import Data.Lens (set, traversed)
import Data.NonEmpty ((:|))
import WAGS.Create.Optionals (bandpass, gain, highpass, pan)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Cycle as C
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, b_, i_, lnf, make, s)

fund = 256.0

seq0 = C.alphabet_10 :| [ C.alphabet_13, C.alphabet_14, C.alphabet_2, C.alphabet_1, C.alphabet_7, C.alphabet_9, C.alphabet_20 ]

seq1 = C.alphabet_11 :| [ C.alphabet_16, C.alphabet_15, C.alphabet_3, C.alphabet_4, C.alphabet_8 ]

seq2 = C.alphabet_9 :| [ C.alphabet_12, C.alphabet_14, C.alphabet_0, C.alphabet_25, C.alphabet_6, C.alphabet_22, C.alphabet_23, C.alphabet_24, C.alphabet_17, C.alphabet_18, C.alphabet_19 ]

f n s = b_ (i_ <^> s) [i_ <^> (foldl (<>) s (replicate n s))]
seq00 = f 1 seq0
seq11 = f 2 seq1
seq22 = f 3 seq2

napply f (h :| t) = f h t

infixr 5 napply as <^>

wag :: AFuture
wag =
  make 4.6
    { earth:
        map
          ( addEffect
              \{ clockTime } ->
                fx $ goodbye $ gain 0.02
                  { ipt: hello
                  , mxr: gain 1.0
                      { bp0: bandpass
                          { freq: 2000.0 + lfo
                              { phase: 0.0
                              , freq: 0.3
                              , amp: 1500.0
                              }
                              clockTime
                          , q: 40.0
                          }
                          hello
                      }
                  }
          ) $ s $ seq00
    , wind:
        map
          ( addEffect
              \{ clockTime } ->
                fx $ goodbye $ gain 0.03
                  { ipt: hello
                  , mxr: gain 1.0
                      { bp0: pan
                          ( lfo
                              { phase: 0.0
                              , freq: 3.0
                              , amp: 0.8
                              }
                              clockTime
                          )
                          hello
                      }
                  }
          ) $ s $ seq11
    , fire:
        map
          ( addEffect
              \{ clockTime } ->
                fx $ goodbye $ gain 0.05
                  { ipt: hello
                  , mxr: gain 1.0
                      { bp0: highpass
                          { freq: 2000.0 + lfo
                              { phase: 0.0
                              , freq: 0.15
                              , amp: 1500.0
                              }
                              clockTime
                          , q: 10.0
                          }
                          hello
                      }
                  }
          ) $ s $ (set (traversed <<< traversed <<< lnf) false) seq22
    }
