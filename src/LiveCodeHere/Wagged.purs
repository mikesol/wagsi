module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (betwixt, changeVolume, make, onTag, parse, s)
import WAGS.Math (calcSlope)

m2 = 4.0 * 1.0 * 60.0 / 111.0 :: Number

fadeDown :: Number -> Number
fadeDown = betwixt 0.0 1.0 <<< calcSlope 0.4 1.0 1.2 0.0

wag :: AFuture
wag =
  make (m2 * 4.0)
    { -- lows
      earth: s $ map (changeVolume (_.sampleTime >>> fadeDown)) $ parse "tabla:23 tabla2:21  tabla2:28 tabla2:41"
    , wind: s
        """~ [tabla:3 tabla2:37] ~ tabla2:11
  ~ tabla:3 ~ tabla2:40
  ~ tabla:3 ~ ~
  ~ tabla:3 ~ tabla2:31"""
    , fire: s
        $ onTag "str" (changeVolume \{ sampleTime: t } -> betwixt 0.0 1.0 $ 1.0 - t * 0.2)
        $ parse
            """~ [chin*4 lighter] ~ ~
    ~ [lighter:4 lighter:3 ] ~ [~ lighter:6]
    ~ ~ ~ [~ lighter:13]
    ~ ~ ~ [~ lighter:12] ,
      ~ sitar:3;str ~ ~
      ~ ~ ~ ~
      sitar:4;str  ~ ~
      ~ ~ ~ ~ , ~ tink ~ ~   ~ tink ~ ~   ~ tink ~ ~    ~ tink ~ ~
    """
    , title: "tablas and lighters"
    }
