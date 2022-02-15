module WAGSI.Cookbook.Verb where

import Prelude

import Data.Maybe (maybe)
import Data.Newtype (wrap)
import Data.Tuple.Nested ((/\))
import Foreign.Object (lookup)
import Foreign.Object as Object
import WAGS.Create.Optionals (convolver)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)

verbMe s = addEffect
  \{ buffers, silence } ->
    fx $ goodbye $ convolver (maybe silence _.buffer.forward (lookup s buffers)) hello

wag :: AFuture
wag =
  make 4.0
    { earth:
        map (verbMe "reverb0") $ s "notes:13 notes:14 notes:8 notes:9 notes:5"
    , wind:
        map (verbMe "reverb1") $ s "~ bd:0 ~ ~"
    , preload: map wrap [ "reverb0", "reverb1" ]
    , sounds: map wrap $ Object.fromFoldable
        [ "reverb0" /\ "https://cdn.jsdelivr.net/gh/andibrae/Reverb.js/Library/AbernyteGrainSilo.m4a"
        , "reverb1" /\ "https://cdn.jsdelivr.net/gh/andibrae/Reverb.js/Library/StMarysAbbeyReconstructionPhase3.m4a"
        ]
    , title: "verb-re"
    }
