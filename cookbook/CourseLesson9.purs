module WAGSI.Cookbook.CourseLesson9 where

import Prelude

import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import Prim.Symbol (class Append)
import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Tidal (i, make, mseq, nl, parse, s, x)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag = wag0 <> wag1 <> wag2

wag0 :: AFuture
wag0 =
  make 0.4
    { earth: s $ (Proxy :: forall s. Append "future" " bd:4" s => Proxy s)
    , wind: s $ "~ hh hh hh" <> " ~ realclaps ~ realclaps"
    , title: "course - lesson 9 - appending"
    }

wag1 :: AFuture
wag1 =
  let
    op f x = f (parse x) [ parse x, parse x ]
  in
    make 0.4
      { wind: s $ op i "tabla2:17"
      , fire: s $ op x "tabla2:18"
      }

wag2 :: AFuture
wag2 =
  make 2.0
    { lambert: s $ mseq 2.0
        ( (0.0 /\ nl (_ { s = "notes:1" })) :|
            [ 0.2 /\ nl (_ { s = "notes:2" })
            , 0.7 /\ nl (_ { s = "notes:3" })
            , 0.9 /\ nl (_ { s = "notes:4" })
            ]
        )
    }