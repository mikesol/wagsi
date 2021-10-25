module WAGSI.Cookbook.TablasAndLighters where

import Prelude

import Data.Lens (_Just, set, traversed)
import Data.Profunctor (lcmap)
import WAGS.Math (calcSlope)
import WAGS.Lib.Tidal.Samples (class SampleTime, sampleTime)
import WAGS.Lib.Tidal.Tidal (betwixt, lnv, make, onTag, parse_, s)
import WAGSI.Plumbing.Types (WhatsNext)

m2 = 4.0 * 1.0 * 60.0/111.0 :: Number

fadeDown ::forall r. SampleTime r => r -> Number
fadeDown = lcmap sampleTime (betwixt 0.0 1.0 <<< calcSlope 0.4 1.0 1.2 0.0)

wag :: WhatsNext
wag =
  make (m2 * 4.0)
    { -- lows
      earth: s $ set (traversed <<< _Just <<< lnv) fadeDown $ parse_ "tabla:23 tabla2:21  tabla2:28 tabla2:41"
    , wind: s  """~ [tabla:3 tabla2:37] ~ tabla2:11   
  ~ tabla:3 ~ tabla2:40 
  ~ tabla:3 ~ ~ 
  ~ tabla:3 ~ tabla2:31"""
    , fire: s $
      onTag "str" (set (_Just <<< lnv) (lcmap sampleTime \t -> betwixt 0.0 1.0 $ 1.0 - t*0.2))
$ parse_ """~ [chin*4 lighter] ~ ~ 
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
