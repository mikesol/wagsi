module WAGSI.LiveCodeHere.Stash where

import WAGSI.Plumbing.FFIStuff (Stash, stashable)

stash :: Stash
stash =
  stashable
    { buffers:
        { kick1: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/kick1.mp3"
        , sideStick: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/sideStick.mp3"
        , snare: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/snare.mp3"
        , clap: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/clap.mp3"
        , snareRoll: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/snareRoll.mp3"
        , kick2: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/kick2.mp3"
        , closedHH: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/closedHH.mp3"
        , shaker: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/shaker.mp3"
        , openHH: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/openHH.mp3"
        , tamb: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/tamb.mp3"
        , crash: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/crash.mp3"
        , ride: "https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/smplxmpl/ride.mp3"
        }
    , periodicWaves: {}
    , floatArrays: {}
    }
