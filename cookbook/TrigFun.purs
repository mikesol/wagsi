module WAGSI.Cookbook.TrigFun where

import Prelude

import Data.Lens (_Just, over, set, traversed)
import Data.Lens.Iso.Newtype (unto)
import Math (pi, cos)
import WAGSI.Plumbing.Tidal (c2s, lnr, lnv, make, onTag, parse, s, s2f)
import WAGSI.Plumbing.Types (TheFuture, NoteInFlattenedTime(..))

trigfun :: Number -> Number
trigfun x
  | x < 0.5 = x
  | otherwise = cos (pi * 2.0 * (x - 0.5)) * 0.25 / (-1.0) + 0.75

wag :: TheFuture
wag = make 2.0
  { earth: s
      $ map
          ( over (traversed <<< unto NoteInFlattenedTime)
              (\i -> i { bigStartsAt = trigfun (i.bigStartsAt / i.bigCycleDuration) * i.bigCycleDuration }) <<< s2f
          )
      $ c2s
      $ parse " bass:3 blip*4 "
  , wind: s $ onTag "x" (set (_Just <<< lnv) (const 0.3))
      $ onTag "x" (set (_Just <<< lnr) (\{ normalizedBigCycleTime } ->  0.7 + (normalizedBigCycleTime * 0.84)))
      $ parse "~ blip*4;x"
  }