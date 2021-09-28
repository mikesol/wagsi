module WAGSI.LiveCodeHere.Wagged where

import WAGSI.Plumbing.Tidal (TheFuture, make, s)

wag :: TheFuture
wag = make 1.0 { earth: s "" }