module WAGSI.History.VM0m0p1 where

import Prelude
import WAGS.Create.Optionals
import Control.Comonad.Cofree (head, tail)
import Data.Int (toNumber)
import Data.Maybe (Maybe(..), fromMaybe, isJust)
import Data.Newtype (unwrap, wrap)
import Data.Tuple (Tuple)
import Data.Typelevel.Num (D1, D3, d0)
import Data.Vec as V
import Hack ((/@\))
import LibWrap (ABlip, ABufferPool, ARate)
import Math (pi, sin, cos, (%))
import Math as Math
import WAGS.Graph.AudioUnit (APOnOff, OnOff(..))
import WAGS.Graph.AudioUnit as A
import WAGS.Graph.Parameter (AudioParameter, ff)
import WAGS.Lib.BufferPool (bGain, bOnOff)
import Wagsi.Types (Extern)

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
  = { player0Rate0 :: ARate
    , player0Blip0 :: ABlip
    , player0BP0 :: ABufferPool D1 Int
    ---
    , player1Rate0 :: ARate
    , player1Blip0 :: ABlip
    , player1BP0 :: ABufferPool D1 Int
    ---
    , player2Rate0 :: ARate
    , player2Blip0 :: ABlip
    , player2BP0 :: ABufferPool D1 Int
    ---
    , player3Rate0 :: ARate
    , player3Blip0 :: ABlip
    , player3BP0 :: ABufferPool D1 Int
    }

playHH0 :: { time :: Number, headroom :: Number } -> Maybe Number
playHH0 { time, headroom } = if dist < sensitivity then Just (if tmody < (mody / 2.0) then 0.0 else (mody - tmody)) else Nothing
  where
  sensitivity = 0.04

  mody = 1.4 + sin (pi * time) * 0.3

  dist = Math.abs ((time + headroom) % mody)

  tmody = time % mody

playHH1 :: { time :: Number, headroom :: Number } -> Maybe Number
playHH1 { time, headroom } = if dist < sensitivity then Just (if tmody < (mody / 2.0) then 0.0 else (mody - tmody)) else Nothing
  where
  sensitivity = 0.04

  mody = (if (time % 8.0 < 2.0) then 0.6 else 1.2) + sin (pi * time) * 0.3

  dist = Math.abs ((time + headroom) % mody)

  tmody = time % mody

playHH2 :: { time :: Number, headroom :: Number } -> Maybe Number
playHH2 { time, headroom } = if dist < sensitivity then Just (if tmody < (mody / 2.0) then 0.0 else (mody - tmody)) else Nothing
  where
  sensitivity = 0.04

  mody = 4.0 + sin (pi * time) * 0.3

  dist = Math.abs ((time + headroom) % mody)

  tmody = time % mody

wagsi ({ time, headroom: headroom' } :: Extern) (a :: Acc) =
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
                    { bufUnit0G0Player3:
                        gain 1.0
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
        }
  where
  headroom = toNumber headroom' / 1000.0

  newPlayer0Rate0 = unwrap a.player0Rate0 { time, rate: 1.0 }

  playHH0Now = playHH0 { time, headroom }

  newPlayer0Blip0 = unwrap a.player0Blip0 (isJust playHH0Now)

  newPlayer0BP0 =
    unwrap a.player0BP0
      { time
      , headroom
      , offsets: if (head newPlayer0Blip0) then fromMaybe [] (pure <<< { offset: _, rest: 0 } <$> playHH0Now) else []
      }

  ---
  newPlayer1Rate0 = unwrap a.player1Rate0 { time, rate: 1.0 }

  playHH1Now = playHH1 { time, headroom }

  newPlayer1Blip0 = unwrap a.player1Blip0 (isJust playHH1Now)

  newPlayer1BP0 =
    unwrap a.player1BP0
      { time
      , headroom
      , offsets: if (head newPlayer1Blip0) then fromMaybe [] (pure <<< { offset: _, rest: 0 } <$> playHH1Now) else []
      }

  ---
  newPlayer2Rate0 = unwrap a.player2Rate0 { time, rate: 1.0 }

  playHH2Now = playHH2 { time, headroom }

  newPlayer2Blip0 = unwrap a.player2Blip0 (isJust playHH2Now)

  newPlayer2BP0 =
    unwrap a.player2BP0
      { time
      , headroom
      , offsets: if (head newPlayer2Blip0) then fromMaybe [] (pure <<< { offset: _, rest: 0 } <$> playHH2Now) else []
      }

  ---
  newPlayer3Rate0 = unwrap a.player3Rate0 { time, rate: 1.0 }

  newPlayer3BP0 = unwrap a.player3BP0 { time, headroom, offsets: [] }

  newPlayer3Blip0 = unwrap a.player3Blip0 false

  (newAcc :: Acc) =
    { player0Rate0: wrap (tail newPlayer0Rate0)
    , player0Blip0: wrap (tail newPlayer0Blip0)
    , player0BP0: wrap (tail newPlayer0BP0)
    ---
    , player1Rate0: wrap (tail newPlayer1Rate0)
    , player1Blip0: wrap (tail newPlayer1Blip0)
    , player1BP0: wrap (tail newPlayer1BP0)
    ---
    , player2Rate0: wrap (tail newPlayer2Rate0)
    , player2Blip0: wrap (tail newPlayer2Blip0)
    , player2BP0: wrap (tail newPlayer2BP0)
    ---
    , player3Rate0: wrap (tail newPlayer3Rate0)
    , player3Blip0: wrap (tail newPlayer3Blip0)
    , player3BP0: wrap (tail newPlayer3BP0)
    }
