module WAGSI.Cookbook.CourseLesson8 where

import Prelude

import Data.Array (intercalate, (..))
import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import Math ((%))
import WAGS.Lib.Tidal.Tidal (changeSampleF, changeVolume, make, onTag, parse, s, weightedChoice)
import WAGS.Lib.Tidal.Types (AFuture, Sample(..))

dur = 40.0 :: Number

mct r = r { clockTime = r.clockTime % dur } 

tg0 { clockTime }
  | clockTime < dur / 2.0 = Sample "notes:0"
  | otherwise = Sample "notes:14"

tg1 { clockTime, initialEntropy }
  | clockTime < dur / 4.0 = Sample $ weightedChoice (1.0 /\ "notes:2" :| [ 2.0 /\ "notes:3", 3.0 /\ "notes:4" ]) initialEntropy
  | otherwise = Sample $ weightedChoice (3.0 /\ "notes:2" :| [ 2.0 /\ "notes:3", 1.0 /\ "notes:4" ]) initialEntropy

tg2 { clockTime }
  | clockTime < dur / 6.0 = Sample "notes:5"
  | clockTime < 2.0 * dur / 6.0 = Sample "notes:6"
  | clockTime < 3.0 * dur / 6.0 = Sample "notes:7"
  | clockTime < 4.0 * dur / 6.0 = Sample "notes:8"
  | clockTime < 5.0 * dur / 6.0 = Sample "notes:9"
  | otherwise = Sample "notes:10"

tg3 { initialEntropy } = Sample $ weightedChoice
  (2.0 /\ "notes:11":| [ 4.0 /\ "notes:12", 8.0 /\ "notes:13" ])
  initialEntropy

tg4 { clockTime }
  | clockTime < dur / 2.0 = Sample "notes:14"
  | otherwise = Sample "notes:0"

tg5 { clockTime, initialEntropy }
  | clockTime < 3.0 * dur / 4.0 = Sample $ weightedChoice (3.0 /\ "notes:2" :| [ 2.0 /\ "notes:3", 1.0 /\ "notes:4" ]) initialEntropy
  | otherwise = Sample $ weightedChoice (1.0 /\ "notes:2" :| [ 2.0 /\ "notes:3", 3.0 /\ "notes:4" ]) initialEntropy

tg6 { clockTime }
  | clockTime < dur / 6.0 = Sample "notes:10"
  | clockTime < 2.0 * dur / 6.0 = Sample "notes:9"
  | clockTime < 3.0 * dur / 6.0 = Sample "notes:8"
  | clockTime < 4.0 * dur / 6.0 = Sample "notes:7"
  | clockTime < 5.0 * dur / 6.0 = Sample "notes:6"
  | otherwise = Sample "notes:5"

tg7 { initialEntropy } = Sample $ weightedChoice
  (8.0 /\ "notes:11" :| [ 4.0 /\ "notes:12", 2.0 /\ "notes:13" ])
  initialEntropy

wag :: AFuture
wag =
  make 1.0
    { earth: s
        $ map (changeVolume (const 0.3))
        $ onTag "tg0" (changeSampleF (mct >>> tg0))
        $ onTag "tg1" (changeSampleF (mct >>> tg1))
        $ onTag "tg2" (changeSampleF (mct >>> tg2))
        $ onTag "tg3" (changeSampleF (mct >>> tg3))
        $ onTag "tg4" (changeSampleF (mct >>> tg4))
        $ onTag "tg5" (changeSampleF (mct >>> tg5))
        $ onTag "tg6" (changeSampleF (mct >>> tg6))
        $ onTag "tg7" (changeSampleF (mct >>> tg7))
        $ parse (intercalate " " (map (append "x;tg" <<< show) (0 .. 7)))
    , wind: s $ map (changeVolume (const 0.1)) $ parse "tabla2:3 ~ hh ~ ~ hh hh hh"
    , title: "course - lesson 8 - randomness"
    , preload: map (Sample <<< append "notes:" <<< show) (0 .. 14)
    }