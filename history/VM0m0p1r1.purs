module WAGSI.History.VM0m0p1r1 where

import Prelude
import WAGS.Create.Optionals
import Control.Comonad.Cofree (head)
import Data.Int (toNumber)
import Data.Maybe (Maybe(..), fromMaybe, isJust)
import Data.Newtype (unwrap, wrap)
import Data.Tuple (Tuple)
import Data.Typelevel.Num (D1, D3, d0)
import Data.Vec as V
import Math (pi, sin, cos, (%))
import Math as Math
import WAGS.Graph.AudioUnit (APOnOff, OnOff(..))
import WAGS.Graph.AudioUnit as A
import WAGS.Graph.Parameter (AudioParameter, ff)
import WAGS.Lib.BufferPool (ABufferPool, ASnappyBufferPool, bGain, bOnOff)
import WAGS.Lib.Cofree (actualize, tail)
import WAGS.Lib.Emitter (fEmitter)
import WAGS.Lib.Impulse (ABlip)
import WAGS.Lib.Rate (ARate)
import WAGS.Run (SceneI(..))
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
  = { player0BP0 :: ASnappyBufferPool D1
    ---
    , player1BP0 :: ASnappyBufferPool D1
    ---
    , player2BP0 :: ASnappyBufferPool D1
    ---
    , player3BP0 :: ASnappyBufferPool D1
    }

wagsi (e@(SceneI { time, headroom: headroom' }) :: Extern) (a :: Acc) =
  newAcc
    /@\ speaker
        { player0:
            gain 0.25
              { oscUnit0Player0:
                  gain (ff 0.04 (pure (sin (pi * time * 3.0) * 0.03 + 0.02)))
                    { osc0Player0: sinOsc (184.9972 + sin (pi * time * 2.0) * 40.0 + sin (pi * time * 0.1) * 400.0) }
              , bufUnit0Player0:
                  gain 1.3
                    { bufUnit0G0Player0:
                        gain (bGain (V.index (head newPlayer0BP0) d0))
                          { bufUnit0B0Player0:
                              playBuf
                                { playbackRate: 1.3 + sin (pi * time) * 0.4
                                , onOff: (bOnOff (V.index (head newPlayer0BP0) d0))
                                }
                                "lowpad"
                          }
                    , bufUnit0B0Playerrrrrrr0:
                        highpass (3000.0 + sin (pi * time) * 1000.0)
                          { hpdddd:
                              gain 0.1
                                { origPad:
                                    playBuf
                                      { playbackRate: 2.0 + sin (pi * time) * 0.4
                                      , onOff: (bOnOff (V.index (head newPlayer1BP0) d0))
                                      }
                                      "paddd"
                                }
                          }
                    }
              }
        , player1:
            gain 1.0
              { oscUnit0Player1:
                  gain 0.0 -- (0.01 + sin (pi * time * 8.0) * 0.01)
                    { osc0Player1: triangleOsc (349.2282 + sin (pi * time * 0.1) * 200.0) }
              , bufUnit0Player1:
                  gain 0.2
                    { bufUnit0G0Player1:
                        gain (bGain (V.index (head newPlayer1BP0) d0))
                          { bufUnit0B0Player1:
                              playBuf
                                { playbackRate: 1.1 + sin (pi * time) * 0.4
                                , onOff: (bOnOff (V.index (head newPlayer1BP0) d0))
                                }
                                "hi-hat"
                          }
                    , bufUnit0B0Player3LBxxg:
                        gain 1.5
                          { lbbbbb:
                              loopBuf
                                { playbackRate: 1.5 + sin (pi * time) * 0.3
                                , onOff: On
                                , loopStart: 4.3
                                , loopEnd: 5.0
                                }
                                "indian2"
                          }
                    , birdieeeee:
                        gain (1.0 + sin (pi * time * 3.0) * 0.4)
                          { birdieBuff:
                              loopBuf
                                { playbackRate: 1.5 + sin (pi * time) * 0.3
                                , onOff: On
                                , loopStart: 0.0
                                }
                                "birdie"
                          }
                    }
              }
        , player2:
            gain 1.0
              { oscUnit0Player2:
                  gain 0.0 -- (0.005 + sin (pi * time) * 0.0025)
                    { osc0Player2: squareOsc (1230.0 + sin (pi * time * 2.0) * 40.0 + sin (pi * time * 0.1) * 400.0) }
              , bufUnit0Player2:
                  gain 0.15
                    { bufUnit0G0Player2:
                        gain (bGain (V.index (head newPlayer2BP0) d0))
                          { bufUnit0B0Player2:
                              playBuf
                                { playbackRate: 1.0
                                , onOff: (bOnOff (V.index (head newPlayer2BP0) d0))
                                }
                                "kick1"
                          }
                    }
              }
        , player3:
            gain 1.0
              { oscUnit0Player3:
                  gain 0.0
                    { osc0Player3: sawtoothOsc 440.0 }
              , bufUnit0Player3:
                  gain 2.0
                    { bufUnit0B0Player3LBx:
                        loopBuf
                          { playbackRate: 0.80
                          , onOff: On
                          , loopStart: 4.25
                          , loopEnd: 5.3
                          }
                          "indian2"
                    }
              }
        }
  where
  headroom = toNumber headroom' / 1000.0

  newPlayer0BP0 = actualize a.player0BP0 e (1.4 + sin (pi * time) * 0.3)

  newPlayer1BP0 = actualize a.player1BP0 e ((if (time % 8.0 < 2.0) then 0.6 else 1.2) + sin (pi * time) * 0.3)

  newPlayer2BP0 = actualize a.player2BP0 e (4.0 + sin (pi * time) * 0.3)

  newPlayer3BP0 = actualize a.player3BP0 e 2.6

  (newAcc :: Acc) =
    { player0BP0: wrap (tail newPlayer0BP0)
    ---
    , player1BP0: wrap (tail newPlayer1BP0)
    ---
    , player2BP0: wrap (tail newPlayer2BP0)
    ---
    , player3BP0: wrap (tail newPlayer3BP0)
    }
