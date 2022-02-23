module WAGSI.Cookbook.EDM0 where

import Prelude
import Type.Proxy (Proxy(..))
import Foreign.Object as O
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Piecewise (simplePiecewise)
import WAGS.Create.Optionals (highpass, lowpass, pan, gain)
import Data.Tuple.Nested ((/\))
import WAGS.Lib.Tidal.Types (AFuture, BufferUrl(..))
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import Math ((%))
import WAGS.Lib.Tidal.Tidal (make, onTag, s, changeRate, parse, changeVolume, addEffect, changeDroneRate, changeDroneVolume, drone, changeEffect)

earth = Proxy :: _ """
  <
    [kks ~ ~ ~  hh0 ~ ft0 snr  ~ snr ~ kk1  snr ~ ft1;sftr ft0;sftr ]
    [kk1 ~ ~ ~  ~ ~ kk1;lpf kk1;k0  ~ kk1;k1 ~ kk1;k2  kk1 ~ ~ ~ ]
  >
"""

wind = Proxy :: _ """
<
  [~ ~ btl ~   psr:3;pss ~ ~ ~  ~ ~ ~ ~   tink ~ ~ ~]
  [~ ~ btl ~   ~ ~ ~ ~  ~ ~ ~ ~   ~ ~ tink:1 ~]
>
"""

-- [notes:0 notes:1 ~ notes:0  notes:7 ~ notes:8 notes:9  ~ notes:10 ~ notes:11   ~ ~ ~ ~]

fire = Proxy :: _ """
<
  [notes:0 notes:1 ~ notes:0  notes:7 ~ notes:8 notes:9  ~ notes:10 ~ notes:11   ~ ~ ~ ~]
  [notes:0 notes:11 ~ notes:3  notes:10 ~ notes:8 notes:9  ~ notes:12 ~ notes:1   ~ ~ ~ ~]
>
"""

lambertSolo2 = Proxy :: _ """
<
  [ ~ hh ~ ~    ~ hh ~ ~    ~ hh ~ hh   ~ ~ hh hh]
  [ hh ~ ~ ~    hh ~ hh hh    ~ ~ hh ~   ~ hh hh hh]
>
"""

lambertSolo3 = Proxy :: _ """
<
  [ ~ hh ~ hh    ~ hh ~ hh    ~ hh ~ hh   hh ~ hh hh]
  [ hh ~ hh ~    hh ~ hh hh    ~ ~ hh ~   ~ hh hh hh]
>
"""

lambertSolo = Proxy :: _ """
<
  [ ~ hh ~ hh    ~ hh ~ hh    ~ hh ~ hh   hh ~ hh hh]
  [ hh ~ hh ~    hh ~ ~ ~    ~ ~ hh ~   ~ hh hh hh]
>
"""

lambert = Proxy :: _ """
<
  [ ~ ~ ~ ~    ~ ~ ~ ~    ~ ~ ~ ~   ~ ~ hh hh]
  [ ~ ~ ~ ~    ~ ~ ~ ~    ~ ~ ~ ~   ~ hh hh hh]
>
"""

dnt0 = 0.81
dnt1 = 0.7

pwjourney = [
    0.0 /\ 0.0
  , 10.0 /\ 0.5
  , 20.0 /\ 0.0
  , 30.0 /\ 0.6
  , 31.0 /\ 0.0
  , 32.0 /\ 0.0
  , 32.5 /\ 0.4
  , 40.0 /\ 0.0
]

wag :: AFuture
wag =
  make 1.6
    { earth:s
          $ onTag "sftr" (changeVolume (const 0.2))
          $ onTag "k0" (changeVolume (const 0.7))
          $ onTag "k1" (changeVolume (const 0.35))
          $ onTag "k2" (changeVolume (const 0.2))
          $ parse earth
    , wind: s
         $ onTag "pss" (changeRate (const 1.02))
         $ onTag "pss" (changeVolume (const 0.3)) $  parse wind
    , fire: map
        ( addEffect
            ( \{ clockTime } ->
                fx
                  $ goodbye
                  $ pan (lfo { freq: 0.1, amp: 0.4, phase: 0.0 } clockTime) hello
            )
        ) $ s $ map (changeVolume (_.normalizedLittleCycleTime
            >>> simplePiecewise [0.0 /\ 0.2, 0.5 /\ 0.7, 1.0 /\ 0.2]
            )) $ parse fire
    , lambert: map
        ( addEffect
            ( \{clockTime } -> 
                fx
                  ( goodbye $ highpass (lfo { freq: 0.2, amp: 750.0, phase:0.0}  clockTime + 2500.0) hello)
            )
        ) $ s lambert
    , heart: map (changeDroneVolume (const 0.2))
            $ map (changeDroneRate  (const dnt0))
            $ drone "dny"
    , water: map (changeDroneVolume (_.clockTime >>> (_ % 40.0) >>> simplePiecewise pwjourney)) $ drone "wpd"
    , sounds
    , title: "edm 0"
    }

sounds = O.fromFoldable [
  "kk0" /\ BufferUrl "https://freesound.org/data/previews/42/42030_442517-hq.mp3"
  , "kk1" /\ BufferUrl "https://freesound.org/data/previews/183/183098_2394245-hq.mp3" 
  , "hh0" /\ BufferUrl "https://freesound.org/data/previews/561/561237_12517458-hq.mp3"
  , "hh1" /\ BufferUrl "https://freesound.org/data/previews/561/561241_12517458-hq.mp3"
  , "ft0" /\ BufferUrl "https://freesound.org/data/previews/170/170490_1587402-hq.mp3"
  , "ft1" /\ BufferUrl "https://freesound.org/data/previews/34/34851_209299-hq.mp3"
  , "kks" /\ BufferUrl "https://freesound.org/data/previews/568/568581_10655277-hq.mp3"
  , "snr" /\ BufferUrl "https://freesound.org/data/previews/387/387186_7255534-hq.mp3"
  , "btl" /\ BufferUrl "https://freesound.org/data/previews/140/140614_646701-hq.mp3"
  , "bto" /\ BufferUrl "https://freesound.org/data/previews/335/335993_5121236-hq.mp3"
  , "dny" /\ BufferUrl "https://freesound.org/data/previews/511/511438_3315462-hq.ogg"
  , "wpd" /\ BufferUrl "https://freesound.org/data/previews/325/325116_350554-hq.ogg"
]
