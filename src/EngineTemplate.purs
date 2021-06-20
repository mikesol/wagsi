module EngineTemplate where

import Hack (cont')
import WAGS.Create.Optionals (speaker, constant)

-- stopPrelude
graph = speaker { toSpeaker: constant 0.0 }

-- startCont
cont = cont' graph
