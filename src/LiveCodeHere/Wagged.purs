module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGSI.Plumbing.Tidal (TheFuture, make, parse, plainly)

wag :: TheFuture
wag = make 1.0
  { earth: plainly $ parse ""
  }