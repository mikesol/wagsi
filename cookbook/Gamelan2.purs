module WAGSI.Cookbook.Gamelan2 where
-- t'was fun!

import Prelude

import Data.Foldable (foldl)
import Data.Lens (_Just, set, traversed)
import Data.Newtype (unwrap)
import Data.Profunctor (lcmap)
import Data.Tuple (Tuple(..))
import Foreign.Object (Object)
import Foreign.Object as Object
import Prelude as Prelude
import WAGS.Create.Optionals (delay, gain, highpass, ref)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Sounds.Gamelan as Gamelan
import WAGS.Lib.Tidal.Cycle (c2d, cycleFromSample)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (lnr, lvt, make, onTag, parse_, s)
import WAGS.Lib.Tidal.Types (BufferUrl(..), Sample(..))
import WAGS.Lib.Tidal (AFuture)

clip :: Number -> Number
clip n = Prelude.max 0.0 (Prelude.min 1.0 n)

fallFromTo :: Number -> Number -> Number -> Number
fallFromTo x y t = clip (1.0 - (t - x)/(y - x))

-- 0.1 * fallFromTo (14.0 / 16.0) (15.0 / 16.0) normalizedBigCycleTime

wag :: AFuture
wag = make 6.0
  { earth: s $ set (traversed <<< _Just <<< lnr)
    (lcmap unwrap \{ normalizedBigCycleTime } ->
      1.0
          - 0.05 * fallFromTo (0.0 / 16.0) (2.0 / 16.0) normalizedBigCycleTime
        --  - 0.05 * fallFromTo (2.0 / 16.0) (4.0 / 16.0) normalizedBigCycleTime
        --  - 0.05 * fallFromTo (4.0 / 16.0) (6.0 / 16.0) normalizedBigCycleTime
        --  - 0.02 * fallFromTo (0.0 / 16.0) (6.0 / 16.0) normalizedBigCycleTime
        --  - 0.05 * fallFromTo (6.0 / 16.0) (8.0 / 16.0) normalizedBigCycleTime
        --  - 0.03 * fallFromTo (6.0 / 16.0) (14.0 / 16.0) normalizedBigCycleTime
        --  + 0.05 * fallFromTo (14.0 / 16.0) (16.0 / 16.0) normalizedBigCycleTime
    )
     $ parse_ seq4
  , fire:  s
    $ onTag "dlang" (set (_Just <<< lnr) (const 0.5))
    $ onTag "kt" (set (_Just <<< lnr) (const 4.0))
    $  parse_ "GAp LUNG*2 ~ TONG*2 KtPL6*2 ~ KtPL6*3;kt GKSL3f ~ KPL1h DLANG*2;dlang ~ KPL1h*3 TAK ~ ~ , DHA*2;dlang ~ ~ ~ DHA ~ TAK TAK"
  , wind: map
        ( set lvt
            (lcmap unwrap \{ clockTime } -> let t = clockTime in fx
            ( goodbye $ gain 1.0
                { mymix: highpass
                    { freq: 3010.0 + lfo { phase: 0.0, freq: 0.1, amp: 3000.0 } t
                    , q: 1.0
                    }
                    hello
                , fback: gain 0.3
                    { del: delay (0.5 + lfo { phase: 0.0, freq: 2.0, amp: 0.3 } t) { mymix: ref }
                    }
                }
            )
            )
        ) (s "KPL1")
  , heart: c2d $ cycleFromSample $ Sample "singing"
  , title: "gamelan 1"
  , sounds: foldl Object.union Object.empty [moreSounds, Gamelan.sounds]
  }
-- c2d $ cycleFromSample "singing"
moreSounds :: Object BufferUrl
moreSounds = map BufferUrl $ Object.fromFoldable $ [Tuple "singing" "https://freesound.org/data/previews/253/253960_2409224-lq.mp3", Tuple "lowdark:0" "https://freesound.org/data/previews/579/579260_10522382-hq.mp3"]

-- Hi Ted - AFC
-- hi! coming to you live and direct from glasgow by the power of the interweb - tedthetrumpet
-- $ set (traversed <<< _Just <<< lnr) (lcmap unwrap \{ normalizedBigCycleTime  } -> 1.0 + normalizedBigCycleTime * 0.0)

seq1 :: String
seq1 = """
      BBPL1*3 ~ BBPL2h BBPL3 BBPL2h BBPL2h BBPL5 BBPL2h*2 BBPL2h BBPL4 BBPL6 BBPL6 BBPL3h BBPL2h BBPL4 BBPL2h, SDPL5
      """

seq2 :: String
seq2 = """
      BBPL1*3 ~ BBPL2h ~ ~ BBPL2h ~ BBPL2h*2 ~ BBPL4 ~ BBPL6 ~ BBPL2h*4 ~ BBPL2h,
      SDPL5*2 ~ SDPL4 ~ SDPL2 ~ SBSL6l ~ SDPL5 ~ SDPL3 ~ SDPL2 ~ SBSL6l ~
      """

seq4 :: String
seq4 = """
      GAp
      """

seq3 :: String
seq3 = """
      BBPL4 ~ BBPL1h BBPL6 BBPL3h BBPL2 BBPL2 BBPL4h*2 BBPL5h BBPL6 BBPL1 BBPL1 BBPL3h BBPL2h BBPL4 BBPL2h, SDPL5
      """
drumz :: String
drumz = "GAp LUNG*2 ~ TONG*2 KtPL6*2 ~ KtPL6*3;kt GKSL3f ~ KPL1h DLANG*2;dlang ~ KPL1h*3 TAK ~ ~ , DHA*2;dlang ~ ~ ~ DHA ~ TAK TAK"
---- staging @mike
{-

-}