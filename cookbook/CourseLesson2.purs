module WAGSI.Cookbook.CourseLesson2 where

import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (AFuture)

earth = Proxy :: _ "bd bd ~ bd"
wind = Proxy :: _ "hh*8"
fire = Proxy :: _ "notes:3 , [notes:4 notes:8]"
lambert = Proxy :: _ "~ <psr:3 hh:3> ~ ~"
hendricks = Proxy :: _ "~ ~ ~ [clap clap clap]"
ross = Proxy :: _ "glitch [glitch:1 [glitch:2 [glitch:3 glitch:4]]]"

wag :: AFuture
wag =
  make 3.2
    { earth: s earth
    ,  wind: s wind
    ,  fire: s fire
    ,  lambert: s lambert
    ,  hendricks: s hendricks
    ,  ross: s ross
    , title: "course - lesson 2 - mini notatoin"
    }