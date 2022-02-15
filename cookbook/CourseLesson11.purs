module WAGSI.Cookbook.CourseLesson11 where

import Prelude

import Foreign.Object (singleton)
import WAGS.Create.Optionals (delay, gain, ref)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)
import WAGS.Lib.Tidal.Types (AFuture, BufferUrl(..))

f = ff 0.03 <<< pure

wag :: AFuture
wag =
  make 28.0
    { earth:
        map
          ( addEffect
              \{ clockTime } -> fx
                ( goodbye $ gain 1.0
                    { mymix: gain 1.0
                        { ipt: gain 1.0
                            { ipt1: gain 0.5 $ hello
                            , ipt2: gain 0.25
                                $ delay
                                    ( f $
                                        lfo
                                          { phase: 0.0
                                          , amp: 0.03
                                          , freq: 5.0
                                          }
                                          clockTime + 0.06

                                    )
                                    hello
                            , ipt3: gain 0.25 $ delay 0.04 hello
                            }
                        , fback: gain 0.65 { del: delay 0.5 { mymix: ref } }
                        }
                    }
                )
          ) $ s $ "speaky"
    , sounds: singleton "speaky"
        $ BufferUrl "https://freesound.org/data/previews/410/410299_5121236-hq.mp3"
    , title: "course - lesson 11 - delay and flange"
    }
