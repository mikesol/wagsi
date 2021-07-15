module WAGSI.History.VM0m0p1r1 where

import Math
import Prelude
import WAGS.Create.Optionals

import Control.Comonad.Cofree (head)
import Data.Typelevel.Num (D3)
import Type.Proxy (Proxy(..))
import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.BufferPool (ASnappyBufferPool, bOnOff)
import WAGS.Lib.Cofree (actualizes, heads, tails)
import WAGS.Run (SceneI(..))
import WAGS.Template (fromTemplate)
import WAGSI.Plumbing.Hack ((/@\))
import WAGSI.Plumbing.Types (Extern)

{-
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

-}
type Acc
  = { player0BP0 :: ASnappyBufferPool D3
    , player1BP0 :: ASnappyBufferPool D3
    , player2BP0 :: ASnappyBufferPool D3
    , player3BP0 :: ASnappyBufferPool D3
    }

wagsi (e@(SceneI { time }) :: Extern) (a :: Acc) =
  nextAcc
    /@\ speaker
        { player0:
            gain 0.25
              { oscUnit0Player0:
                  gain (ff 0.04 (pure (sin (pi * time * 3.0) * 0.03 + 0.02)))
                    (sinOsc (184.9972 + sin (pi * time * 2.0) * 40.0 + sin (pi * time * 0.1) * 400.0))
              , bufUnit0Player0:
                  gain 1.3
                    { bufUnit0G0Player0:
                        fromTemplate (Proxy :: _ "bufUnit0B0Player0") (headz.player0BP0) \_ ipt ->
                          gain 1.0
                            { onePad:
                                playBuf
                                  { playbackRate: 1.3 + sin (pi * time) * 0.4
                                  , onOff: (bOnOff time ipt)
                                  }
                                  "lowpad"
                            , twoPad:
                                highpass (3000.0 + sin (pi * time) * 1000.0)
                                  ( gain 0.2
                                      ( playBuf
                                          { playbackRate: 2.0 + sin (pi * time) * 0.4
                                          , onOff: (bOnOff time ipt)
                                          }
                                          "paddd"
                                      )
                                  )
                            }
                    }
              }
        , player1:
            gain 1.0
              { oscUnit0Player1:
                  gain 0.0 -- (0.01 + sin (pi * time * 8.0) * 0.01)
                    (triangleOsc (349.2282 + sin (pi * time * 0.1) * 200.0))
              , bufUnit0Player1:
                  gain 0.2
                    { bufUnit0G0Player1:
                        fromTemplate (Proxy :: _ "bufUnit0B0Player1") (headz.player1BP0) \_ ipt ->
                          gain 1.0
                            ( playBuf
                                { playbackRate: 1.1 + sin (pi * time) * 0.4
                                , onOff: (bOnOff time ipt)
                                }
                                "hi-hat"
                            )
                    , bufUnit0B0Player3LBxxg:
                        gain 1.5
                          ( loopBuf
                              { playbackRate: 1.5 + sin (pi * time) * 0.3
                              , onOff: On
                              , loopStart: 4.3
                              , loopEnd: 5.0
                              }
                              "indian2"
                          )
                    , birdieeeee:
                        gain (1.0 + sin (pi * time * 3.0) * 0.4)
                          ( loopBuf
                              { playbackRate: 1.5 + sin (pi * time) * 0.3
                              , onOff: On
                              , loopStart: 0.0
                              }
                              "birdie"
                          )
                    }
              }
        , player2:
            gain 1.0
              { oscUnit0Player2:
                  gain 0.0 -- (0.005 + sin (pi * time) * 0.0025)
                    (squareOsc (1230.0 + sin (pi * time * 2.0) * 40.0 + sin (pi * time * 0.1) * 400.0))
              , bufUnit0Player2:
                  gain 0.15
                    { bufUnit0G0Player2:
                        fromTemplate (Proxy :: _ "bufUnit0B0Player2") (headz.player2BP0) \_ ipt ->
                          gain 1.0
                            ( playBuf
                                { playbackRate: 1.0
                                , onOff: (bOnOff time ipt)
                                }
                                "kick1"
                            )
                    }
              }
        , player3:
            gain 1.0
              { oscUnit0Player3:
                  gain 0.0 (sawtoothOsc 440.0)
              , bufUnit0Player3:
                  gain 2.0
                    ( loopBuf
                        { playbackRate: 0.80
                        , onOff: On
                        , loopStart: 4.25
                        , loopEnd: 5.3
                        }
                        "indian2"
                    )
              }
        }
  where
  new =
    actualizes a e
      { player0BP0: (1.4 + sin (pi * time) * 0.3)
      , player1BP0: (if (time % 8.0 < 2.0) then 0.6 else 1.2) + sin (pi * time) * 0.3
      , player2BP0: 4.0 + sin (pi * time) * 0.3
      , player3BP0: 2.6
      }
  headz = heads new

  (nextAcc :: Acc) = tails new
