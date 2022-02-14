module WAGSI.Cookbook.SitarAndHarmonium where

import Prelude

import Data.Lens (set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import WAGS.Create.Optionals (highpass, pan)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Cycle (c2d)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (changeRate, changeVolume, ldt, ldv, make, onTag, parse, s)
import WAGS.Lib.Tidal.Types (AFuture, getNow)

bells :: Number -> Number
bells t
  | t < 0.25 = 1.2
  | t < 0.5 = 1.8
  | t < 0.75 = 1.5
  | otherwise = 1.1

wag :: AFuture
wag = make 1.5
  { earth: s $ onTag "tk" (changeRate (_.normalizedBigCycleTime >>> bells)) $ parse "<tabla tabla:3 tabla> ~ tabla:3 ~ , ~ tink*4;tk ~ ~ , ~ can  "
  , wind: s $ map (changeVolume (const 0.2)) $ parse "~ ~ ~ <newnotes:1 newnotes:2 newnotes:3>"
  , heart: set (traversed <<< ldv) (lcmap (getNow >>> unwrap >>> _.clockTime) (add 0.2 <<< lfo { phase: 0.0, freq: 0.3, amp: 0.2 })) $ c2d $ parse "harmonium"
  , water:
      set (traversed <<< ldt)
        ( lcmap (getNow >>> unwrap >>> _.clockTime) \t -> fx
            ( goodbye $ pan (0.0) { myhp: highpass (lfo { phase: 0.0, amp: 2000.0, freq: 0.4 } t + 3000.0) hello }
            )
        )
        $ set (traversed <<< ldv) (lcmap (getNow >>> unwrap >>> _.clockTime) (add 0.1 <<< lfo { phase: 0.0, freq: 0.1, amp: 0.1 }))
        $ c2d $ parse "sitar:1"
  , title: "sitar and harmonium"
  }