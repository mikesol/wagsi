module WAGSI.Cookbook.Oscs where

import Prelude

import Data.Array (replicate)
import Data.Foldable (foldl)
import Data.Lens (set, traversed)
import Data.NonEmpty ((:|))
import WAGS.Create.Optionals (bandpass, gain, highpass, pan)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Cycle as C
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, b, i, lnf, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

fund = 256.0

alphabet_0 = parse "alphabet:0"
alphabet_1 = parse "alphabet:1"
alphabet_2 = parse "alphabet:2"
alphabet_3 = parse "alphabet:3"
alphabet_4 = parse "alphabet:4"
alphabet_5 = parse "alphabet:5"
alphabet_6 = parse "alphabet:6"
alphabet_7 = parse "alphabet:7"
alphabet_8 = parse "alphabet:8"
alphabet_9 = parse "alphabet:9"
alphabet_10 = parse "alphabet:10"
alphabet_11 = parse "alphabet:11"
alphabet_12 = parse "alphabet:12"
alphabet_13 = parse "alphabet:13"
alphabet_14 = parse "alphabet:14"
alphabet_15 = parse "alphabet:15"
alphabet_16 = parse "alphabet:16"
alphabet_17 = parse "alphabet:17"
alphabet_18 = parse "alphabet:18"
alphabet_19 = parse "alphabet:19"
alphabet_20 = parse "alphabet:20"
alphabet_21 = parse "alphabet:21"
alphabet_22 = parse "alphabet:22"
alphabet_23 = parse "alphabet:23"
alphabet_24 = parse "alphabet:24"
alphabet_25 = parse "alphabet:25"
seq0 = alphabet_10 :| [ alphabet_13, alphabet_14, alphabet_2, alphabet_1, alphabet_7, alphabet_9, alphabet_20 ]

seq1 = alphabet_11 :| [ alphabet_16, alphabet_15, alphabet_3, alphabet_4, alphabet_8 ]

seq2 = alphabet_9 :| [ alphabet_12, alphabet_14, alphabet_0, alphabet_25, alphabet_6, alphabet_22, alphabet_23, alphabet_24, alphabet_17, alphabet_18, alphabet_19 ]

f n s = b (i <^> s) [ i <^> (foldl (<>) s (replicate n s)) ]
seq00 = f 1 seq0
seq11 = f 2 seq1
seq22 = f 3 seq2

napply fn (h :| t) = fn h t

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
          ) $ s $ (set (traversed <<< traversed <<< lnf) (const false)) seq22
    , title: "alphabet"
    }
