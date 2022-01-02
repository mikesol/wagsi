module WAGSI.Cookbook.AuldLangSINE where

import Prelude

import Data.Array (head, last)
import Data.Int (toNumber)
import Data.Lens (_1, over, traversed)
import Data.Map as Map
import Data.Maybe (maybe, maybe')
import Data.Tuple (fst, snd, swap)
import Data.Tuple.Nested (type (/\), (/\))
import Math (pow, (%))
import WAGS.Create.Optionals (bandpass, gain, lowpass, squareOsc, triangleOsc)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)

makePw :: Array (Number /\ Number) -> Number -> Number
makePw arr n = val
  where
  asMap = Map.fromFoldable arr
  lb = Map.lookupLE n asMap
  gb = Map.lookupGE n asMap
  val = maybe' (\_ -> maybe 0.0 _.value gb) _.value lb

piece :: Array (Int /\ Int /\ Number)
piece =
  [ 55 /\ 0 /\ 3.0
  , 60 /\ 1 /\ 0.0
  , 59 /\ 1 /\ 1.5
  , 60 /\ 1 /\ 2.0
  , 64 /\ 1 /\ 3.0
  , 62 /\ 2 /\ 0.0
  , 60 /\ 2 /\ 1.5
  , 62 /\ 2 /\ 2.0
  , 64 /\ 2 /\ 3.0
  , 62 /\ 2 /\ 3.5
  , 60 /\ 3 /\ 0.0
  , 60 /\ 3 /\ 1.5
  , 64 /\ 3 /\ 2.0
  , 67 /\ 3 /\ 3.0
  , 69 /\ 4 /\ 0.0
  , 69 /\ 4 /\ 3.0
  , 67 /\ 5 /\ 0.0
  , 64 /\ 5 /\ 1.5
  , 64 /\ 5 /\ 2.0
  , 60 /\ 5 /\ 3.0
  , 62 /\ 6 /\ 0.0
  , 60 /\ 6 /\ 1.5
  , 62 /\ 6 /\ 2.0
  , 64 /\ 6 /\ 3.0
  , 62 /\ 6 /\ 3.5
  , 60 /\ 7 /\ 0.0
  , 57 /\ 7 /\ 1.5
  , 57 /\ 7 /\ 2.0
  , 55 /\ 7 /\ 3.0
  , 60 /\ 8 /\ 0.0
  , 69 /\ 8 /\ 3.0
  , 67 /\ 9 /\ 0.0
  , 64 /\ 9 /\ 1.5
  , 64 /\ 9 /\ 2.0
  , 60 /\ 9 /\ 3.0
  , 62 /\ 10 /\ 0.0
  , 60 /\ 10 /\ 1.5
  , 62 /\ 10 /\ 2.0
  , 69 /\ 10 /\ 3.0
  , 67 /\ 11 /\ 0.0
  , 64 /\ 11 /\ 1.5
  , 64 /\ 11 /\ 2.0
  , 67 /\ 11 /\ 3.0
  , 69 /\ 12 /\ 0.0
  , 69 /\ 12 /\ 3.0
  , 67 /\ 13 /\ 0.0
  , 64 /\ 13 /\ 1.5
  , 64 /\ 13 /\ 2.0
  , 60 /\ 13 /\ 3.0
  , 62 /\ 14 /\ 0.0
  , 60 /\ 14 /\ 1.5
  , 62 /\ 14 /\ 2.0
  , 64 /\ 14 /\ 3.0
  , 62 /\ 14 /\ 3.5
  , 60 /\ 15 /\ 0.0
  , 57 /\ 15 /\ 1.5
  , 57 /\ 15 /\ 2.0
  , 55 /\ 15 /\ 3.0
  , 60 /\ 16 /\ 0.0
  , 55 /\ 16 /\ 3.0
  ]

midiToFreq :: Number -> Number
midiToFreq n = 440.0 * (2.0 `pow` ((n - 69.0) / 12.0))

-- time to pitch
fac :: Number
fac = 0.75

piece2 :: Array (Int /\ Number)
piece2 = (map <<< map) (mul fac)
  ( ( (map <<< map)
        <$> (add <<< mul (-1.0) <<< maybe 0.0 snd <<< head)
        <*> identity
    )
      ( (map <<< map)
          (add <$> mul 4.0 <<< toNumber <<< fst <*> snd)
          piece
      )
  )

end :: Number
end = maybe 1.0 snd (last piece2)

piecePW :: Number -> Number
piecePW = makePw $ over traversed swap
  $ over (traversed <<< _1) (midiToFreq <<< toNumber)
  $ piece2

pff = ff 0.03 <<< pure

wag :: AFuture
wag =
  make 1.0
    { earth:
        map
          ( addEffect
              ( \{ clockTime } -> fx $ goodbye $ gain 1.0
                  { ipt: hello
                  , swv: gain 0.2 { swvo: lowpass { freq: 110.0, q: 5.0 } $ squareOsc $ pff (piecePW (clockTime % end) * 0.5) }
                  , snv0: gain 0.2 { snv0o: bandpass { freq: pff $ lfo { amp: 20.0, freq: 0.6, phase: 0.0 } clockTime + 400.0, q: 5.0 } $ triangleOsc $ pff (piecePW (clockTime % end) * 1.0 - 2.0) }
                  , snv1: gain 0.03 { snv1o: bandpass {freq: pff $ lfo { amp: 50.0, freq: 0.6, phase: 0.0 } clockTime + 700.0, q: 5.0 } $ triangleOsc $ pff (piecePW (clockTime % end) * 2.0) }
                  , snv2: gain 0.02 { snv2o: bandpass { freq: pff $ lfo { amp: 100.0, freq: 0.3, phase: 0.0 } clockTime + 1200.0, q: 5.0 } $ triangleOsc $ pff (piecePW (clockTime % end) * 3.0) }
                  }
              )
          ) $ s ""
    , title: "ald lang sine (ha!)"
    }
