with open('src/LiveCodeHere/Wagged.purs','w') as wagged:
  wagged.write('''module WAGSI.LiveCodeHere.Wagged where

import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Tidal (make, s)

wag :: AFuture
wag =
  make 1.0
    { earth: s ""
    , title: "i m a k e n o i s e"
    }

''')
