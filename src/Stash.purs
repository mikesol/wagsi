module Stash where

import FFIStuff (Stash, stashable)

stash :: Stash
stash =
  stashable
    { buffers:
        { "hi-hat": "https://freesound.org/data/previews/131/131347_1513948-hq.mp3"
        , bell: "https://freesound.org/data/previews/339/339809_5121236-hq.mp3"
        , kick0: "https://freesound.org/data/previews/568/568581_10655277-hq.mp3"
        , kick1: "https://freesound.org/data/previews/568/568581_10655277-hq.mp3"
        , paddd: "https://freesound.org/data/previews/33/33183_250881-hq.mp3"
        , glass: "https://freesound.org/data/previews/440/440773_4236239-hq.mp3"
        , lowpad: "https://freesound.org/data/previews/361/361843_24119-lq.mp3"
        ,"indian-Swarmandal": "https://freesound.org/people/luckylittleraven/sounds/415398/download/415398__luckylittleraven__tuning-swarmandal-indian-harp.wav"
        , squeeeek: "https://freesound.org/data/previews/392/392617_7383104-lq.mp3"
        , indian2: "https://freesound.org/data/previews/415/415398_2112203-hq.mp3"
        , birdie: "https://freesound.org/data/previews/416/416529_5121236-lq.mp3"
        }
    , periodicWaves: {}
    , floatArrays: {}
    }
