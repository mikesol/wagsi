module WAGSI.Cookbook.SpeedUp where

import Prelude

import Data.Array ((..))
import Data.Array.NonEmpty as NEA
import Data.Array.NonEmpty.Internal (NonEmptyArray)
import Data.Int (toNumber)
import Data.NonEmpty ((:|))
import Data.Variant.Either (right)
import Data.Variant.Maybe (nothing)
import Math (pow)
import WAGS.Create.Optionals (pan)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)
import WAGS.Lib.Tidal.Types (Note(..), NoteInFlattenedTime(..), Sample(..))

nt2nift ::  Int -> Number -> Int -> NoteInFlattenedTime (Note Unit)
nt2nift len dur i =
  let
    fc = toNumber i / toNumber len
    startsAt = (fc `pow` 0.7) * dur
    rt = fc * 4.0 + 0.5
  in
    NoteInFlattenedTime
      { note: Note
          { sampleFoT: right (Sample $ "glitch:" <> show (i `mod` 7))
          , forwardFoT: const true
          , rateFoT: const rt
          , bufferOffsetFoT: const 0.0
          , volumeFoT: const 1.0
          }
      , bigStartsAt: startsAt
      , littleStartsAt: startsAt
      , currentCycle: 0
      , positionInCycle: i
      , elementsInCycle: len
      , nCycles: 1
      , duration: 2.0
      , bigCycleDuration: dur
      , littleCycleDuration: dur
      , tag: nothing
      }

terminus = 101
totalDur = 8.0

notes :: NonEmptyArray (NoteInFlattenedTime (Note Unit))
notes = map (nt2nift terminus totalDur) (NEA.fromNonEmpty (0 :| (1 .. (terminus - 1))))

wag :: AFuture
wag = make 0.9
  {  earth: map
          ( addEffect
              \{ clockTime } ->
                fx $ goodbye $ pan (lfo {phase:0.0, amp: 0.8, freq:0.2} clockTime) hello
          ) $ s notes
  , title: "glitch-up"
  }
