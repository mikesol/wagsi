module WAGSI.LiveCodeHere.Wagged where

import WAGSI.Plumbing.Tidal (make, s)
import WAGSI.Plumbing.Types (TheFuture)

wag :: TheFuture
wag = make 1.0  { earth: s ""  }