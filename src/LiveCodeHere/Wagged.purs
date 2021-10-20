module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGSI.Plumbing.Tidal (make, s)
import WAGSI.Plumbing.Types (TheFuture)

m2 = 4.0 * 1.0 * 60.0/111.0 :: Number

-- tok

wag :: TheFuture
wag =
  make m2
    { earth: s "bass:1 msg hh ~ bass:0 msg:2 hh ~, ~ chin*4 ~ ~ ~ chin:1*2 ~ ~ , ~ ~ hh:2 ~ ~ newnotes ~ ~  , pad:0"
    , title: "i m a k e n o i s e"
    }
