module WAGSI.LiveCodeHere.Wagged where

import Prelude

import Data.Tuple.Nested ((/\))
import Foreign.Object as Object
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Tidal (changeRate, changeVolume, make, onTag, parse_, s)
import WAGS.Lib.Tidal.Types (BufferUrl(..))

seq = "bass:1 msg hh ~ [hh:6 bass:0] msg:2 hh ~, ~ chin*4 ~ ~ ~ tech:0*2 ~ ~ , ~ ~ hh:2 ~ ~ newnotes [~ newnotes:2] ~  , ~ ~ ~ ~ hh:7 ~ ~ tech:2*4 , future:0 ~ ~ ~ insect ~ ~ chin:1*2 , pad:3"

wag :: AFuture
wag =
  make (4.0 * 1.0 * 60.0 / 111.0)
    { earth: s seq
    , wind: s
        $ onTag "comp" (changeVolume \{ normalizedLittleCycleTime: t } -> if t < 0.9 then 1.0 else 0.0)
        $ onTag "comp" (changeRate \{ initialEntropy: e } -> 0.95 + 0.1 * e)
        $ parse_ "wdm:1;comp"
    , sounds: map BufferUrl $ Object.fromFoldable $
        (map <<< map)
          (append "https://freesound.org/data/previews/332/")
          [ "wdm:0" /\ "332741_34095-lq.mp3"
          , "wdm:1" /\ "332740_34095-lq.mp3"
          ]
    }