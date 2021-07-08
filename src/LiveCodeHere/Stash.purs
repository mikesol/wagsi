module WAGSI.LiveCodeHere.Stash where

import WAGSI.Plumbing.FFIStuff (Stash, stashable)

stash :: Stash
stash =
  stashable
    { buffers: {}
    , periodicWaves: {}
    , floatArrays: {}
    }
