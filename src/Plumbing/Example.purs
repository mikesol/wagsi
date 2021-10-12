module WAGSI.Plumbing.Example where

import Prelude

import Data.Int (round, toNumber)
import Data.Lens (set)
import Data.List ((..))
import Data.List.NonEmpty (NonEmptyList(..))
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import WAGSI.Plumbing.Cycle (Cycle(..), hh, noteFromSample, tabla2_0, tabla_0)
import WAGSI.Plumbing.Tidal (c2s, lct, make, s, s2f, x)
import WAGSI.Plumbing.Types (BufferUrl(..), Note, NoteInFlattenedTime(..), Sample(..), TheFuture)

tpo = 60.0 / 112.0 :: Number
nbeats = 4 * 9 :: Int
edur = tpo * (toNumber nbeats) :: Number

i' :: NonEmptyList (Cycle (Maybe Note)) -> Cycle (Maybe Note)
i' nel = Internal { env: { weight: 1.0, tag: Nothing }, nel }

hhs :: NonEmptyList (Cycle (Maybe Note))
hhs = map (set lct (Just "hh")) (NonEmptyList (hh :| (map (const hh) (0 .. 34))))

tbls :: NonEmptyList (Cycle (Maybe Note))
tbls = map (set lct (Just "tbl")) (NonEmptyList (tabla_0 :| (map (const tabla_0) (0 .. 34))))


beat2os :: Int -> Number
beat2os bt
  | bt <= 7 = 0.2
  | bt == 8 = 0.19
  | bt == 9 = 0.18
  | bt == 10 = 0.17
  | bt == 11 = 0.17
  | bt == 12 = 0.17
  | otherwise = 0.2

tg2os :: forall note. NoteInFlattenedTime note -> Number
tg2os (NoteInFlattenedTime { bigCycleDuration, bigStartsAt }) =
  beat2os $ round (bigStartsAt * (toNumber nbeats)/ bigCycleDuration)

wag :: TheFuture
wag =
  make edur
    { earth:
        s
          $ (map <<< map)
              ( \nift@(NoteInFlattenedTime i@{ tag }) ->
                  let
                    newi os = i { bigStartsAt = i.bigStartsAt + os, littleStartsAt = i.littleStartsAt + os }
                  in
                    case tag of
                      Just x
                        | x == "tbl" -> NoteInFlattenedTime (newi (tg2os nift))
                        | otherwise -> NoteInFlattenedTime i
                      _ -> NoteInFlattenedTime i
              )
          $ map s2f
          $ c2s
          $ i' tbls
    , wind: s $ noteFromSample (Sample "kissb")
    , title: "kiss"
    , sounds: Map.fromFoldable [ Sample "kissb" /\ BufferUrl "https://klank-share.s3.amazonaws.com/prince/kiss/bridge0v.ogg" ]
    }

{-
s
          $ (map <<< map)
              ( \nift@(NoteInFlattenedTime i@{ tag }) ->
                  let
                    newi os = i { bigStartsAt = i.bigStartsAt + os, littleStartsAt = i.littleStartsAt + os }
                  in
                    case tag of
                      Just "hh" -> NoteInFlattenedTime (newi (tg2os nift))
                      _ -> NoteInFlattenedTime i
              )
          $ map s2f
          $ c2s
          $ i' hhs
-}