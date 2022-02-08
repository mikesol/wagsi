module WAGSI.Cookbook.Smgrp where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (make, s)

wag0 :: AFuture
wag0 =
  make 1.0
    { earth: s "notes:0 notes:1 notes:2 notes:3"
    , title: "notes0"
    }

wag1 :: AFuture
wag1 =
  make 0.7
    { earth: s "notes:5 notes:6 notes:7 notes:8"
    , title: "notes1"
    }


wag2 :: AFuture
wag2 =
  make 1.3
    { earth: s "notes:9 notes:10 notes:9 notes:10"
    , title: "notes2"
    }

wag3 :: AFuture
wag3 =
  make 1.1
    { earth: s "notes:11 notes:12 notes:11 notes:12"
    , title: "notes3"
    }

wag :: AFuture
wag = (wag0 <> (wag1 <> wag1)) <> ((wag2 <> wag2) <> wag3)
