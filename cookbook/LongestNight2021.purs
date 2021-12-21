module WAGSI.Cookbook.LongestNight2021 where

import Prelude

import WAGS.Lib.Tidal.Samples as S
import WAGS.Lib.Tidal.Tidal (make, parse_, s)
import WAGS.Lib.Tidal (AFuture)

wag :: AFuture
wag = make 1.0
  { earth: s
      $ parse_ """<
  [psr:3 bd [notes:2,hh*2] [notes:3,chin*4]]
  [bd bd [notes:4,hh*2] [notes:5,chin*4]]
  [psr:3 bd [notes:6,hh*2] [notes:7,chin*4]]
  [bd bd [notes:8,hh*2] [notes:9,chin*4]]
  [[psr:3 psr:3] bd [notes:2,hh*2] [notes:3,chin*4]]
  [bd bd [notes:8,hh*2] [notes:9,chin*4]]
  [psr:3 bd [notes:9,hh*2] [notes:8,chin*4]]
  [bd bd [notes:10,hh*2] [notes:6,chin*4]]
  [psr:3 bd [notes:9,hh*2] [notes:7,chin*4]]
  [psr:3 bd [notes:10,hh*2] [notes:7,chin*4]]
  [psr:3 bd [notes:12,hh*2] [notes:7,chin*4]]
  [psr:3 bd [notes:14,hh*2] [notes:7,chin*4]]
  [psr:3 bd psr:3 [notes:7,chin*4]]
  [psr:3 bd psr:3 [notes:7,chin*4]]
  [psr:3 [psr:3,bd] [psr:3,notes:7] [psr:3,bd]]
  [[psr:3,notes:0] [psr:3,bd,notes:1] [psr:3,bd,[notes:6 notes:3]] [psr:3,bd,[notes:2 notes:0]]]
>"""
  , title: "oh hello l_o_g_n_e_s_t night"
  , preload: [S.tabla_0__Sample, S.tabla2_0__Sample]
  }