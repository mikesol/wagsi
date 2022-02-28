module WAGSI.Cookbook.CourseLesson12 where

import Prelude

import Data.Lens (set)
import Type.Proxy (Proxy(..))
import WAGS.Create.Optionals (gain, highpass)
import WAGS.Graph.Paramable (paramize)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Sounds.Drones as Drones
import WAGS.Lib.Tidal.Cycle (c2d)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (fadeTo, ldr, ldt, ldv, make, numericTumult, oscWarp, parse)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag = make 1.0
  { heart:
      map
        ( set ldt \ipt -> fx $ goodbye $ gain 1.0
            { myhpf: highpass
                ( ff 0.03
                    $ paramize
                    $ fadeTo { n: 3000.0, duration: 10.0 }
                        ( map
                            ( numericTumult 2000.0
                                (Proxy :: _ "makeHighpass")
                                "myhpf"
                                _.freq
                            )
                            ipt
                        )
                )
                hello
            }
        )
        $ map
            ( set ldv
                ( oscWarp
                    { upTime: 1.0
                    , downTime: 1.0
                    , upWarp: 0.0
                    , downWarp: 0.0
                    }
                )
            )
        $ map (set ldr (fadeTo { duration: 10.0, n: 1.0 }))
        $ c2d
        $ parse "lowdark"
  , title: "course - lesson 12 - drones"
  , sounds: Drones.drones
  }