module WAGSI.LiveCodeHere.Wagged where

import WAGSI.Plumbing.Types (TheFuture)
import WAGSI.Plumbing.Tidal (make, s)

wag :: TheFuture
wag = make 1.0 { earth: s "" }