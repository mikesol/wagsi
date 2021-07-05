module Stash where

import FFIStuff (Stash, stashable)

stash :: Stash
stash =
  stashable
    { buffers: {
      "hi-hat": "https://freesound.org/data/previews/131/131347_1513948-hq.mp3"
    }
    , periodicWaves: {}
    , floatArrays: {}
    }
