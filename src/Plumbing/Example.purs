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

globalOffset = 0.11
downbeats :: Array Number
downbeats = map (_ - globalOffset) [0.444, 2.602, 4.719, 6.868, 9.052, 11.252, 13.369, 15.521, 17.674, 19.821, 21.974, 24.124, 26.308, 28.426, 30.609, 32.729, 34.911, 37.03, 39.213, 41.364, 43.483, 45.666, 47.817, 49.968, 52.089, 54.27, 56.421, 58.572, 60.722, 62.901, 65.081, 67.2, 69.384, 71.605, 73.725, 75.905, 78.055, 80.206, 82.323, 84.509, 86.66, 88.811, 90.93, 93.08, 95.265, 97.375, 99.57, 101.69, 103.838, 106.022, 108.14, 110.295, 112.477, 114.628, 116.749, 118.93, 121.049, 123.281, 125.43, 127.581, 129.701, 131.943, 134.125, 136.277, 138.396, 140.579, 142.701, 144.881, 147.032, 149.184, 151.305, 153.486, 155.638, 157.79, 159.939, 162.092, 164.244, 166.398, 168.547, 170.731, 172.853, 175.031, 177.152, 179.335, 181.486, 183.636, 185.789, 187.907, 190.061, 192.24, 194.362, 196.51, 198.665, 200.812, 202.997, 205.147, 207.299, 209.45, 211.571, 213.721, 215.864]

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