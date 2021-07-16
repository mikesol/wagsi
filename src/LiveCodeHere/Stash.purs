module WAGSI.LiveCodeHere.Stash where

import WAGSI.Plumbing.FFIStuff (Stash, stashable)

stash :: Stash
stash =
  stashable
    { buffers:
        { kick1: "http://localhost:8000/kick1.mp3"
        , sideStick: "http://localhost:8000/sideStick.mp3"
        , snare: "http://localhost:8000/snare.mp3"
        , clap: "http://localhost:8000/clap.mp3"
        , snareRoll: "http://localhost:8000/snareRoll.mp3"
        , kick2: "http://localhost:8000/kick2.mp3"
        , closedHH: "http://localhost:8000/closedHH.mp3"
        , shaker: "http://localhost:8000/shaker.mp3"
        , openHH: "http://localhost:8000/openHH.mp3"
        , tamb: "http://localhost:8000/tamb.mp3"
        , crash: "http://localhost:8000/crash.mp3"
        , ride: "http://localhost:8000/ride.mp3"
        }
    , periodicWaves: {}
    , floatArrays: {}
    }
