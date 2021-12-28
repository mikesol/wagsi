module WAGSI.Cookbook.LongestNight2021 where

import Prelude

import WAGS.Create.Optionals (bandpass, gain)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, changeRate, changeVolume, make, onTag, parse_, s)
-- palindromes anyone?
-- what is this backwards?
-- ah that's nice!
-- can we push it further?
-- and now let's flip that?
-- pitches are kinda boring, let's spice it up
-- more internal cycles!
-- [psr:3 psr:3]
-- [psr:3 bd bd psr:3]
-- [[notes:2,hh*2] [notes:3,chin*4] [chin*4, notes:3] [hh*2, notes:2]]
-- [[chin*4, notes:3] [hh*2, notes:2] [notes:2,hh*2] [notes:3,chin*4]]
-- [[chin*4, notes:3] [hh*2, notes:2] bd psr:3]
--   [psr:3 bd [notes:2,hh*2] [notes:3,chin*4]]
-- let's get some double time action going
-- waah that was fast!
-- yesss, flanggggeee (sort of)

-- a bit faster?
-- we can also mess with the durations using map

-- grand finale :=P
-- and that's a wrap!!
wag :: AFuture
wag = make 0.9
  {  earth: map
          ( addEffect
              \{ clockTime } ->
                fx $ goodbye $ gain 1.3 $ bandpass
                  { freq: 2000.0 + lfo
                      { amp:
                          lfo
                            { amp: 801.0
                            , freq: 0.2
                            , phase: 1.0
                            }
                            clockTime + 900.0
                      , freq: lfo { amp: 4.0, freq: 0.2, phase: 1.0 } clockTime + 5.0
                      , phase: 0.0
                      }
                      clockTime
                  , q: 1.0
                  }
                  hello
          ) $ s
      $ map (changeRate (\{ clockTime } -> lfo { phase: 0.0, amp: 0.05, freq: 2.0} clockTime + 1.0))
      $ onTag "nt" (changeVolume (const 0.5))
      $ onTag "nt1" (changeVolume (const 0.2))
      $ parse_ """<
  [psr:3]
  [psr:3 psr:3]
  [psr:3 [psr:3 bd]]
  [psr:3 bd bd psr:3]
  [psr:3 bd [notes:2,hh*2] [notes:3,chin*4]]
  [[notes:2,hh*2] [notes:4,chin*4] [chin*4, notes:4] [hh*2, notes:2]]
  [[chin*4, notes:4;nt] [hh*2, notes:2] [notes:2,hh*2] [notes:4;nt,chin*4]]
  [[chin*4, notes:3;nt1] [hh*2, notes:2] bd psr:3]
  [[psr:3 bd [notes:2;nt,hh*2] [notes:3]]
       [[notes:2;nt] [notes:4,chin*4] [ notes:4] [hh*2, notes:2;nt]]]
  [[notes:2;nt,hh*2] [notes:4;nt,chin*4] [chin*4, notes:4;nt] [hh*2, notes:2;nt]]
  [[chin*4, notes:3;nt1] [hh*2, notes:2;nt] bd psr:3]
  [[psr:3 bd [notes:2] [notes:3,chin*4]]
       [[notes:2;nt] [notes:14;nt1,chin*4] [chin*4] [hh*2, notes:6;nt]]]
  [[notes:3;nt] [hh*2, notes:7;nt1] bd psr:3]
>"""
  , title: "oh hello l_o_g_n_e_s_t night"
  }
