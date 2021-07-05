module Wagged where

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
import WAGS.Graph.AudioUnit (APOnOff)
import WAGS.Graph.AudioUnit as A
import WAGS.Graph.Parameter (AudioParameter, ff)
import WAGS.Lib.BufferPool (bGain, bOnOff)
import Wagsi.Types (Extern)

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
  mody = 0.2
  dist = Math.abs ((time + headroom) % mody)
  tmody = time % mody

wagsi ({ time, headroom: headroom' } :: Extern) (a :: Acc) =
  newAcc
    /@\ speaker
        { player0:
            gain 1.0
              { oscUnit0Player0:
                  gain (ff 0.04 (pure (sin (pi * time * 3.0) * 0.03 + 0.02)))
                    { osc0Player0: sinOsc (90.0 + sin (pi * time) * 6.0) }
              , bufUnit0Player0:
                  gain 1.0
                    { bufUnit0G0Player0:
                        gain (bGain (V.index (head newPlayer0BP0) d0))
                          { bufUnit0B0Player0:
                              playBuf
                                { playbackRate: 1.0 + sin (pi * time) * 0.1
                                , onOff: (bOnOff (V.index (head newPlayer0BP0) d0))
                                }
                                "hi-hat"
                          }
                    }
              }
        , player1:
            gain 1.0
              { oscUnit0Player1:
                  gain 0.0
                    { osc0Player1: triangleOsc 440.0 }
              , bufUnit0Player1:
                  gain 0.0
                    { bufUnit0G0Player1:
                        gain (bGain (V.index (head newPlayer1BP0) d0))
                          { bufUnit0B0Player1:
                              playBuf
                                { playbackRate: 1.0
                                , onOff: (bOnOff (V.index (head newPlayer1BP0) d0))
                                }
                                "hi-hat"
                          }
                    }
              }
        , player2:
            gain 1.0
              { oscUnit0Player2:
                  gain 0.0
                    { osc0Player2: squareOsc 440.0 }
              , bufUnit0Player2:
                  gain 0.0
                    { bufUnit0G0Player2:
                        gain (bGain (V.index (head newPlayer2BP0) d0))
                          { bufUnit0B0Player2:
                              playBuf
                                { playbackRate: 1.0
                                , onOff: (bOnOff (V.index (head newPlayer2BP0) d0))
                                }
                                "hi-hat"
                          }
                    }
              }
        , player3:
            gain 1.0
              { oscUnit0Player3:
                  gain 0.0
                    { osc0Player3: sawtoothOsc 440.0 }
              , bufUnit0Player3:
                  gain 0.0
                    { bufUnit0G0Player3:
                        gain (bGain (V.index (head newPlayer3BP0) d0))
                          { bufUnit0B0Player3:
                              playBuf
                                { playbackRate: 1.0
                                , onOff: (bOnOff (V.index (head newPlayer3BP0) d0))
                                }
                                "hi-hat"
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

  newPlayer1BP0 = unwrap a.player1BP0 { time, headroom, offsets: [] }

  newPlayer1Blip0 = unwrap a.player1Blip0 false

  ---
  newPlayer2Rate0 = unwrap a.player2Rate0 { time, rate: 1.0 }

  newPlayer2BP0 = unwrap a.player2BP0 { time, headroom, offsets: [] }

  newPlayer2Blip0 = unwrap a.player2Blip0 false

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
