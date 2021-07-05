module WAGSI.Starters.Jam where

import Math
import Prelude
import WAGS.Create.Optionals
import Control.Comonad.Cofree (head, tail)
import Data.Int (toNumber)
import Data.Newtype (unwrap, wrap)
import Data.Tuple (Tuple)
import Data.Typelevel.Num (D3, d0)
import Data.Vec as V
import Hack ((/@\))
import LibWrap (ABufferPool, ARate)
import WAGS.Graph.AudioUnit (APOnOff)
import WAGS.Graph.AudioUnit as A
import WAGS.Graph.Parameter (AudioParameter, ff)
import WAGS.Lib.BufferPool (bGain, bOnOff)
import Wagsi.Types (Extern)

type Acc
  = { player0Rate0 :: ARate
    , player0Rate1 :: ARate
    , player0Rate2 :: ARate
    , player0Rate3 :: ARate
    , player0BP0 :: ABufferPool D3 Int
    ---
    , player1Rate0 :: ARate
    , player1Rate1 :: ARate
    , player1Rate2 :: ARate
    , player1Rate3 :: ARate
    , player1BP0 :: ABufferPool D3 Int
    ---
    , player2Rate0 :: ARate
    , player2Rate1 :: ARate
    , player2Rate2 :: ARate
    , player2Rate3 :: ARate
    , player2BP0 :: ABufferPool D3 Int
    ---
    , player3Rate0 :: ARate
    , player3Rate1 :: ARate
    , player3Rate2 :: ARate
    , player3Rate3 :: ARate
    , player3BP0 :: ABufferPool D3 Int
    ---
    , player4Rate0 :: ARate
    , player4Rate1 :: ARate
    , player4Rate2 :: ARate
    , player4Rate3 :: ARate
    , player4BP0 :: ABufferPool D3 Int
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
                , oscUnit1Player0 ::
                    Tuple (A.Gain AudioParameter)
                      { osc1Player0 :: Tuple (A.TriangleOsc APOnOff AudioParameter) {}
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
                , oscUnit1Player1 ::
                    Tuple (A.Gain AudioParameter)
                      { osc1Player1 :: Tuple (A.TriangleOsc APOnOff AudioParameter) {}
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
                , oscUnit1Player2 ::
                    Tuple (A.Gain AudioParameter)
                      { osc1Player2 :: Tuple (A.TriangleOsc APOnOff AudioParameter) {}
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
                , oscUnit1Player3 ::
                    Tuple (A.Gain AudioParameter)
                      { osc1Player3 :: Tuple (A.TriangleOsc APOnOff AudioParameter) {}
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
                , oscUnit1Player4 ::
                    Tuple (A.Gain AudioParameter)
                      { osc1Player4 :: Tuple (A.TriangleOsc APOnOff AudioParameter) {}
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
              { oscUnit0Player0: gain 0.0 { osc0Player0: sinOsc 440.0 }
              , oscUnit1Player0: gain 0.0 { osc1Player0: triangleOsc 440.0 }
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
              , oscUnit1Player1: gain 0.0 { osc1Player1: triangleOsc 440.0 }
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
              , oscUnit1Player2: gain 0.0 { osc1Player2: triangleOsc 440.0 }
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
              , oscUnit1Player3: gain 0.0 { osc1Player3: triangleOsc 440.0 }
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
              , oscUnit1Player4: gain 0.0 { osc1Player4: triangleOsc 440.0 }
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

  newPlayer0Rate1 = unwrap a.player0Rate1 { time, rate: 1.0 }

  newPlayer0Rate2 = unwrap a.player0Rate2 { time, rate: 1.0 }

  newPlayer0Rate3 = unwrap a.player0Rate3 { time, rate: 1.0 }

  newPlayer0BP0 = unwrap a.player0BP0 { time, headroom, offsets: [] }

  ---
  newPlayer1Rate0 = unwrap a.player1Rate0 { time, rate: 1.0 }

  newPlayer1Rate1 = unwrap a.player1Rate1 { time, rate: 1.0 }

  newPlayer1Rate2 = unwrap a.player1Rate2 { time, rate: 1.0 }

  newPlayer1Rate3 = unwrap a.player1Rate3 { time, rate: 1.0 }

  newPlayer1BP0 = unwrap a.player1BP0 { time, headroom, offsets: [] }

  ---
  newPlayer2Rate0 = unwrap a.player2Rate0 { time, rate: 1.0 }

  newPlayer2Rate1 = unwrap a.player2Rate1 { time, rate: 1.0 }

  newPlayer2Rate2 = unwrap a.player2Rate2 { time, rate: 1.0 }

  newPlayer2Rate3 = unwrap a.player2Rate3 { time, rate: 1.0 }

  newPlayer2BP0 = unwrap a.player2BP0 { time, headroom, offsets: [] }

  ---
  newPlayer3Rate0 = unwrap a.player3Rate0 { time, rate: 1.0 }

  newPlayer3Rate1 = unwrap a.player3Rate1 { time, rate: 1.0 }

  newPlayer3Rate2 = unwrap a.player3Rate2 { time, rate: 1.0 }

  newPlayer3Rate3 = unwrap a.player3Rate3 { time, rate: 1.0 }

  newPlayer3BP0 = unwrap a.player3BP0 { time, headroom, offsets: [] }

  ---
  newPlayer4Rate0 = unwrap a.player4Rate0 { time, rate: 1.0 }

  newPlayer4Rate1 = unwrap a.player4Rate1 { time, rate: 1.0 }

  newPlayer4Rate2 = unwrap a.player4Rate2 { time, rate: 1.0 }

  newPlayer4Rate3 = unwrap a.player4Rate3 { time, rate: 1.0 }

  newPlayer4BP0 = unwrap a.player4BP0 { time, headroom, offsets: [] }

  (newAcc :: Acc) =
    { player0Rate0: wrap (tail newPlayer0Rate0)
    , player0Rate1: wrap (tail newPlayer0Rate1)
    , player0Rate2: wrap (tail newPlayer0Rate2)
    , player0Rate3: wrap (tail newPlayer0Rate3)
    , player0BP0: wrap (tail newPlayer0BP0)
    ---
    , player1Rate0: wrap (tail newPlayer1Rate0)
    , player1Rate1: wrap (tail newPlayer1Rate1)
    , player1Rate2: wrap (tail newPlayer1Rate2)
    , player1Rate3: wrap (tail newPlayer1Rate3)
    , player1BP0: wrap (tail newPlayer1BP0)
    ---
    , player2Rate0: wrap (tail newPlayer2Rate0)
    , player2Rate1: wrap (tail newPlayer2Rate1)
    , player2Rate2: wrap (tail newPlayer2Rate2)
    , player2Rate3: wrap (tail newPlayer2Rate3)
    , player2BP0: wrap (tail newPlayer2BP0)
    ---
    , player3Rate0: wrap (tail newPlayer3Rate0)
    , player3Rate1: wrap (tail newPlayer3Rate1)
    , player3Rate2: wrap (tail newPlayer3Rate2)
    , player3Rate3: wrap (tail newPlayer3Rate3)
    , player3BP0: wrap (tail newPlayer3BP0)
    ---
    , player4Rate0: wrap (tail newPlayer4Rate0)
    , player4Rate1: wrap (tail newPlayer4Rate1)
    , player4Rate2: wrap (tail newPlayer4Rate2)
    , player4Rate3: wrap (tail newPlayer4Rate3)
    , player4BP0: wrap (tail newPlayer4BP0)
    }
