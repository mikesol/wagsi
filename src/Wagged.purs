module Wagged where

import Math
import Prelude
import WAGS.Create.Optionals
import Control.Comonad.Cofree (head, tail)
import Data.Int (toNumber)
import Data.Newtype (unwrap, wrap)
import Data.Tuple (Tuple)
import Data.Typelevel.Num (D1, D3, d0)
import Data.Vec as V
import Hack ((/@\))
import LibWrap (ABlip, ABufferPool, ARate)
import WAGS.Graph.AudioUnit (APOnOff)
import WAGS.Graph.AudioUnit as A
import WAGS.Graph.Parameter (AudioParameter)
import WAGS.Lib.BufferPool (bGain, bOnOff)
import Wagsi.Types (Extern)

-- change this to make sound
-- for example, you can try:
-- a /@\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { oscUnit0: sinOsc 440.0 } }
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
    ---
    , player4Rate0 :: ARate
    , player4Blip0 :: ABlip
    , player4BP0 :: ABufferPool D1 Int
    }

type Scene
  = { speaker ::
        Tuple A.Speaker
          { player0 ::
              Tuple (A.Gain AudioParameter)
                { bufUnit0Player0 ::
                    Tuple (A.Gain AudioParameter)
                      { bufUnit0G0Player0 ::
                          Tuple (A.Gain AudioParameter)
                            { bufUnit0B0Player0 :: Tuple (A.PlayBuf String Number APOnOff AudioParameter) {}
                            }
                      }
                , oscUnit0Player0 ::
                    Tuple (A.Gain AudioParameter)
                      { osc0Player0 :: Tuple (A.SinOsc APOnOff AudioParameter) {}
                      }
                }
          , player1 ::
              Tuple (A.Gain AudioParameter)
                { bufUnit0Player1 ::
                    Tuple (A.Gain AudioParameter)
                      { bufUnit0G0Player1 ::
                          Tuple (A.Gain AudioParameter)
                            { bufUnit0B0Player1 :: Tuple (A.PlayBuf String Number APOnOff AudioParameter) {}
                            }
                      }
                , oscUnit0Player1 ::
                    Tuple (A.Gain AudioParameter)
                      { osc0Player1 :: Tuple (A.SinOsc APOnOff AudioParameter) {}
                      }
                }
          , player2 ::
              Tuple (A.Gain AudioParameter)
                { bufUnit0Player2 ::
                    Tuple (A.Gain AudioParameter)
                      { bufUnit0G0Player2 ::
                          Tuple (A.Gain AudioParameter)
                            { bufUnit0B0Player2 :: Tuple (A.PlayBuf String Number APOnOff AudioParameter) {}
                            }
                      }
                , oscUnit0Player2 ::
                    Tuple (A.Gain AudioParameter)
                      { osc0Player2 :: Tuple (A.SinOsc APOnOff AudioParameter) {}
                      }
                }
          , player3 ::
              Tuple (A.Gain AudioParameter)
                { bufUnit0Player3 ::
                    Tuple (A.Gain AudioParameter)
                      { bufUnit0G0Player3 ::
                          Tuple (A.Gain AudioParameter)
                            { bufUnit0B0Player3 :: Tuple (A.PlayBuf String Number APOnOff AudioParameter) {}
                            }
                      }
                , oscUnit0Player3 ::
                    Tuple (A.Gain AudioParameter)
                      { osc0Player3 :: Tuple (A.SinOsc APOnOff AudioParameter) {}
                      }
                }
          , player4 ::
              Tuple (A.Gain AudioParameter)
                { bufUnit0Player4 ::
                    Tuple (A.Gain AudioParameter)
                      { bufUnit0G0Player4 ::
                          Tuple (A.Gain AudioParameter)
                            { bufUnit0B0Player4 :: Tuple (A.PlayBuf String Number APOnOff AudioParameter) {}
                            }
                      }
                , oscUnit0Player4 ::
                    Tuple (A.Gain AudioParameter)
                      { osc0Player4 :: Tuple (A.SinOsc APOnOff AudioParameter) {}
                      }
                }
          }
    }

wagsi :: Extern -> Acc -> Tuple Acc Scene
wagsi { time, headroom: headroom' } a =
  newAcc
    /@\ speaker
        { player0:
            gain 1.0
              { oscUnit0Player0: gain (sin (pi * time * 2.0) * 0.03 + 0.02) { osc0Player0: sinOsc (440.0 + sin (pi * time) * 10.0) }
              , bufUnit0Player0:
                  gain 0.0
                    { bufUnit0G0Player0:
                        gain (bGain (V.index (head newPlayer0BP0) d0))
                          { bufUnit0B0Player0:
                              playBuf
                                { playbackRate: 1.0
                                , onOff: (bOnOff (V.index (head newPlayer0BP0) d0))
                                }
                                "hi-hat"
                          }
                    }
              }
        , player1:
            gain 1.0
              { oscUnit0Player1: gain 0.0 { osc0Player1: sinOsc 440.0 }
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
              { oscUnit0Player2: gain 0.0 { osc0Player2: sinOsc 440.0 }
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
              { oscUnit0Player3: gain 0.0 { osc0Player3: sinOsc 440.0 }
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
        , player4:
            gain 1.0
              { oscUnit0Player4: gain 0.0 { osc0Player4: sinOsc 440.0 }
              , bufUnit0Player4:
                  gain 0.0
                    { bufUnit0G0Player4:
                        gain (bGain (V.index (head newPlayer4BP0) d0))
                          { bufUnit0B0Player4:
                              playBuf
                                { playbackRate: 1.0
                                , onOff: (bOnOff (V.index (head newPlayer4BP0) d0))
                                }
                                "hi-hat"
                          }
                    }
              }
        }
  where
  headroom = toNumber headroom' / 1000.0

  newPlayer0Rate0 = unwrap a.player0Rate0 { time, rate: 1.0 }

  newPlayer0Blip0 = unwrap a.player0Blip0 false

  newPlayer0BP0 = unwrap a.player0BP0 { time, headroom, offsets: [] }

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

  ---
  newPlayer4Rate0 = unwrap a.player4Rate0 { time, rate: 1.0 }

  newPlayer4BP0 = unwrap a.player4BP0 { time, headroom, offsets: [] }

  newPlayer4Blip0 = unwrap a.player4Blip0 false

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
    ---
    , player4Rate0: wrap (tail newPlayer4Rate0)
    , player4Blip0: wrap (tail newPlayer4Blip0)
    , player4BP0: wrap (tail newPlayer4BP0)
    }
