module WAGSI.Plumbing.Example where

import Prelude

import Data.Lens (set, traversed)
import Data.List.NonEmpty (NonEmptyList(..))
import Data.List ((..))
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import WAGSI.Plumbing.Cycle (Cycle(..), hh, noteFromSample)
import WAGSI.Plumbing.Tidal (c2s, lct, make, s, s2f, x)
import WAGSI.Plumbing.Types (BufferUrl(..), Note, NoteInFlattenedTime(..), Sample(..), TheFuture)

tpo = 60.0 / 112.0 :: Number

edur = tpo * 4.0 * 9.0 :: Number

i' :: NonEmptyList (Cycle (Maybe Note)) -> Cycle (Maybe Note)
i' nel = Internal { env: { weight: 1.0, tag: Nothing }, nel }

hhs :: NonEmptyList (Cycle (Maybe Note))
hhs = set (traversed <<< lct) (Just "hh") $ NonEmptyList (hh :| (map (const hh) (0 .. 34)))

wag :: TheFuture
wag =
  make edur
    { earth:
        s
          $ (map <<< map)
              ( \(NoteInFlattenedTime i@{ tag }) ->
                  let
                    newi = i { bigStartsAt = i.bigStartsAt + 0.2, littleStartsAt = i.littleStartsAt + 0.2 }
                  in
                    case tag of
                      Just "hh" -> NoteInFlattenedTime newi
                      _ -> NoteInFlattenedTime i
              )
          $ map s2f
          $ c2s
          $ x (noteFromSample (Sample "kissb")) [ i' hhs ]
    , title: "i m a k e n o i s e"
    , sounds: Map.fromFoldable [ Sample "kissb" /\ BufferUrl "https://klank-share.s3.amazonaws.com/prince/kiss/bridge0v.ogg" ]
    }
