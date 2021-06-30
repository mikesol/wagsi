module Stash where

import FFIStuff (Stash, stashable)

stash :: Stash
stash =
  stashable
    { buffers: {}
    , periodicWaves: {}
    , floatArrays: {}
    }
