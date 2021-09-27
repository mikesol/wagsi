module WAGSI.LiveCodeHere.Wagged where


import WAGSI.Plumbing.Tidal (TheFuture, make, s)

wag :: TheFuture
wag = make 2.0 { earth: s "" }