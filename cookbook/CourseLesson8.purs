module WAGSI.Cookbook.CourseLesson8 where

import Prelude

import Data.Array (intercalate, (..))
import Math ((%))
import WAGS.Lib.Tidal.Tidal (changeSampleF, make, onTag, parse, s)
import WAGS.Lib.Tidal.Types (AFuture, Sample(..))

dur = 120.0 :: Number

tg0 { clockTime }
  | clockTime < dur / 2.0 = Sample "notes:0"
  | otherwise = Sample "notes:7"

wag :: AFuture
wag =
  make 3.0
    { earth: s
        $ onTag "tg0" (changeSampleF tg0)
        $ parse (intercalate " " (map (append "x;tg" <<< show) (0 .. 11)))
    , title: "course - lesson 8 - randomness"
    , preload: map (Sample <<< append "notes:" <<< show) (0 .. 14)
    }