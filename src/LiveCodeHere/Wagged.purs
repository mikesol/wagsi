module WAGSI.LiveCodeHere.Wagged where

import WAGS.Lib.Tidal.Tidal (make, s)
import WAGSI.Plumbing.Types (WhatsNext)

wag :: WhatsNext
wag =
  make 1.0
    { earth: s ""
    , title: "i m a k e n o i s e"
    }
