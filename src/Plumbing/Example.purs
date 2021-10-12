module WAGSI.Plumbing.Example where

import Prelude

import Data.FunctorWithIndex (mapWithIndex)
import Data.Lens (set)
import Data.List ((..))
import Data.List.NonEmpty (NonEmptyList(..))
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
hhs = mapWithIndex (\i -> set lct (Just $ "hh" <> show i) ) (NonEmptyList (hh :| (map (const hh) (0 .. 34))))

tg2os :: String -> Number
tg2os "hh0" = 0.2
tg2os "hh1" = 0.2
tg2os "hh2" = 0.2
tg2os "hh3" = 0.2
tg2os "hh4" = 0.2
tg2os "hh5" = 0.2
tg2os "hh6" = 0.2
tg2os "hh7" = 0.2
tg2os "hh8" = 0.19
tg2os "hh9" = 0.18
tg2os "hh10" = 0.17
tg2os "hh11" = 0.17
tg2os "hh12" = 0.17
tg2os "hh13" = 0.2
tg2os "hh14" = 0.2
tg2os "hh15" = 0.2
tg2os "hh16" = 0.2
tg2os "hh17" = 0.2
tg2os "hh18" = 0.2
tg2os "hh19" = 0.2
tg2os "hh20" = 0.2
tg2os "hh21" = 0.2
tg2os "hh22" = 0.2
tg2os "hh23" = 0.2
tg2os "hh24" = 0.2
tg2os "hh25" = 0.2
tg2os "hh26" = 0.2
tg2os "hh27" = 0.2
tg2os "hh28" = 0.2
tg2os "hh29" = 0.2
tg2os "hh30" = 0.2
tg2os "hh31" = 0.2
tg2os "hh32" = 0.2
tg2os "hh33" = 0.2
tg2os "hh34" = 0.2
tg2os "hh35" = 0.2
tg2os "hh36" = 0.2
tg2os "hh37" = 0.2
tg2os _ = 0.2

wag :: TheFuture
wag =
  make edur
    { earth:
        s
          $ (map <<< map)
              ( \(NoteInFlattenedTime i@{ tag }) ->
                  let
                    newi os = i { bigStartsAt = i.bigStartsAt + os, littleStartsAt = i.littleStartsAt + os }
                  in
                    case tag of
                      Just tg -> NoteInFlattenedTime (newi (tg2os tg))
                      _ -> NoteInFlattenedTime i
              )
          $ map s2f
          $ c2s
          $ x (noteFromSample (Sample "kissb")) [ i' hhs ]
    , title: "kiss"
    , sounds: Map.fromFoldable [ Sample "kissb" /\ BufferUrl "https://klank-share.s3.amazonaws.com/prince/kiss/bridge0v.ogg" ]
    }
