module WAGSI.Cookbook.Undulate where

import Prelude

import Data.Foldable (foldl)
import Data.Lens (set)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import Math (pi)
import Type.Proxy (Proxy(..))
import WAGS.Create.Optionals (gain)
import WAGS.Graph.Paramable (paramize)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Sounds.Drones as Drones
import WAGS.Lib.Tidal.Cycle (c2d)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (ldr, ldv, lvt, make, numericTumult, oscWarp, parse, s)
import WAGS.Lib.Tidal.Types (AFuture, getNow)

wag :: AFuture
wag = make 1.0
  { earth:
      map
        ( set lvt \ipt -> fx $ goodbye $ gain 1.0
            { mygain: gain
                ( ff 0.03
                    $ paramize
                    $ oscWarp { upTime: 1.0, downTime: 1.0, upWarp: 0.0, downWarp: 0.0 }
                        ( map
                            (numericTumult 0.0 (Proxy :: _ "makeGain") "mygain" _.gain)
                            ipt
                        )
                )
                hello
            }
        )
        $ s "tech chin*4 tabla:2 tech:12*3"
  , heart:
      map
        ( set ldv (lcmap (getNow >>> unwrap >>> _.clockTime) (add 1.5 <<< lfo { phase: pi, amp: 0.2, freq: 0.3 }))
            <<< set ldr
              ( lcmap (getNow >>> unwrap >>> _.clockTime)
                  ( foldl ((<*>) <<< (<$>) (+)) (const 1.0)
                      [ lfo { phase: 0.0, amp: 0.03, freq: 7.0 }
                      , lfo { phase: 0.0, amp: 0.15, freq: 0.3 }
                      ]
                  )
              )
        ) $ c2d $ parse "hollowair"
  , title: "Undulating drone"
  , sounds: Drones.drones
  }