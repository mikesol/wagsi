module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGSI.Plumbing.Tidal (TheFuture, make, parse, plainly)

wag :: TheFuture
wag = make 2.0
  { earth: plainly $ parse ""
  }