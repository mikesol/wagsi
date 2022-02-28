module WAGSI.Cookbook.Ziffers where

import Prelude

import Data.Array as A
import Data.Array.NonEmpty as NEA
import Data.Filterable (filter)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (toNumber)
import Data.Lens (over, traversed)
import Data.Lens.Iso.Newtype (unto)
import Data.List (List(..), (:))
import Data.Maybe (Maybe(..), maybe)
import Data.NonEmpty ((:|))
import Data.String as String
import Data.Tuple.Nested (type (/\), (/\))
import Foreign.Object (Object, fromFoldable, lookup)
import WAGS.Create.Optionals (gain, triangleOsc)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Piecewise (APFofT, makePiecewise)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Synth (m2f)
import WAGS.Lib.Tidal.Tidal (make, mseq, nl, s)
import WAGS.Lib.Tidal.Types (AFuture, Note, NoteInFlattenedTime(..), TheFuture, TimeIs(..))

wag :: AFuture
wag = zplay "0 3 2 5 03 37 25 58 37 03 25 2 3 2 0 7"
  # bpm 90.0
  # w

------
------
------
------
------
------
------
------
------

type ZPlay event =
  { end :: Number
  , seq :: NEA.NonEmptyArray (NoteInFlattenedTime (Note event))
  }

bpm :: Number -> ZPlay ~> ZPlay
bpm n { end, seq } =
  let
    fac = 60.0 / n
  in
    { end: end * fac
    , seq: over (traversed <<< unto NoteInFlattenedTime)
        ( \x -> x
            { littleStartsAt = fac * x.littleStartsAt
            , bigStartsAt = fac * x.bigStartsAt
            , littleCycleDuration = fac * x.littleCycleDuration
            , bigCycleDuration = fac * x.bigCycleDuration
            }
        )
        seq
    }

emptyZ = { end: 0.25, seq: mseq 0.25 ((0.0 /\ nl identity) :| []) }

toMidi :: Object Int
toMidi = fromFoldable [ "0" /\ 60, "1" /\ 61, "2" /\ 62, "3" /\ 63, "4" /\ 64, "5" /\ 65, "6" /\ 66, "7" /\ 67, "8" /\ 68, "9" /\ 69, "T" /\ 70, "E" /\ 71 ]

notify :: forall event. Int -> String -> Array (Number /\ Note event)
notify n = String.uncons >>> case _ of
  Nothing -> []
  Just { head, tail } ->
    ( case lookup (String.singleton head) toMidi of
        Just nt ->
          [ toNumber n /\ nl
              ( _
                  { t = \(TimeIs { sampleTime, headroomInSeconds }) -> fx
                      $ goodbye
                      $ gain
                          (ff 0.03 $ defaultPw { time: sampleTime, headroomInSeconds })
                          { ipt: hello
                          , sosc: triangleOsc $ m2f (toNumber nt)
                          }
                  }
              )
          ]
        Nothing -> []
    ) <> notify n tail

defaultPw =
  makePiecewise
    ( (0.0 /\ 0.0)
        :| (0.15 /\ 0.6)
          : (0.25 /\ 0.1)
          : (0.45 /\ 0.0)
          : Nil
    ) :: APFofT

zplay :: forall event. String -> ZPlay event
zplay s = maybe emptyZ (\arr -> { seq: mseq (toNumber $ A.length split) (NEA.toNonEmpty arr), end: toNumber $ A.length split })
  $ NEA.fromArray
  $ join
  $ mapWithIndex notify split
  where
  split = filter ((/=) "")
    $ String.split (String.Pattern " ") s

w :: forall event. ZPlay event -> TheFuture event
w { end, seq } = make end
  { earth: s seq
  , title: "ziffers compat"
  }
