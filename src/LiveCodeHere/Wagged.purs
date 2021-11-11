module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGS.Lib.Tidal.Tidal (make, parse_, s)

import WAGSI.Plumbing.Types (WhatsNext)

wag :: WhatsNext
wag = make 4.0
  { earth: s
      $ parse_ " gab lighter gab;g0 lighter gab lighter gab;g1 lighter  , ~ industrial ~ ~ ~ tink ~ ~ "
  , title: "industrial tink"
  }