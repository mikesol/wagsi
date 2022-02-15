module WAGSI.Cookbook.CourseLesson9 where

import Prelude

import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import Prim.Symbol (class Append)
import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal.Tidal (i, make, mseq, nefy, nl, parse, s, x)
import WAGS.Lib.Tidal.Types (AFuture)

wag0 :: AFuture
wag0 =
  make 0.4
    { earth: s $ (Proxy :: forall s. Append "future" " bd:4" s => Proxy s)
    , wind: s $ "~ hh hh hh" <> " ~ realclaps ~ realclaps"
    , title: "course"
    }

wag1 :: AFuture
wag1 =
  let
    seq = "~" :| [ "tabla2:17", "notes:3", "hh:3" ]
    op f = nefy f $ map parse seq
  in
    make 0.9
      { wind: s $ op i
      , fire: s $ op x
      , title: "lesson 9"
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
    , title: "appending"
    }

wag :: AFuture
wag = wag0 <> wag1 <> wag2
