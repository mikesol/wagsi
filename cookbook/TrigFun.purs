module WAGSI.Cookbook.TrigFun where

import Prelude

import Data.Lens (_Just, over, set, traversed)
import Data.Lens.Iso.Newtype (unto)
import Data.Profunctor (lcmap)
import Math (pi, cos)
import WAGS.Lib.Tidal.Samples (normalizedBigCycleTime)
import WAGS.Lib.Tidal.Tidal (c2s, lnr, lnv, make, onTag, parse_, s, s2f)
import WAGS.Lib.Tidal.Types (NoteInFlattenedTime(..))
import WAGSI.Plumbing.Types (WhatsNext)

trigfun :: Number -> Number
trigfun x
  | x < 0.5 = x
  | otherwise = cos (pi * 2.0 * (x - 0.5)) * 0.25 / (-1.0) + 0.75

wag :: WhatsNext
wag = make 2.0
  { earth: s
      $ map
          ( over (traversed <<< unto NoteInFlattenedTime)
              (\i -> i { bigStartsAt = trigfun (i.bigStartsAt / i.bigCycleDuration) * i.bigCycleDuration }) <<< s2f
          )
      $ c2s
      $ parse_ " bass:3 blip*4 "
  , wind: s $ onTag "x" (set (_Just <<< lnv) (const 0.3))
      $ onTag "x" (set (_Just <<< lnr) (lcmap normalizedBigCycleTime \t ->  0.7 + (t * 0.84)))
      $ parse_ "~ blip*4;x"
  , title: "Rising blips"
  }