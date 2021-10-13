module WAGSI.Plumbing.Example where

import Prelude

import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (round, toNumber)
import Data.Lens (set)
import Data.List (List(..), foldl, (..), (:))
import Data.List as List
import Data.List.NonEmpty (NonEmptyList(..))
import Data.List.NonEmpty as NEL
import Data.Map as Map
import Data.Maybe (Maybe(..), maybe, maybe')
import Data.NonEmpty ((:|))
import Data.Set as Set
import Data.Set.NonEmpty (NonEmptySet)
import Data.Set.NonEmpty as NES
import Data.Traversable (traverse)
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import WAGS.Lib.Piecewise (makePiecewise)
import WAGS.Math (calcSlope)
import WAGSI.Plumbing.Cycle (Cycle(..), hh, noteFromSample, tabla2_0, tabla_0)
import WAGSI.Plumbing.Samples as S
import WAGSI.Plumbing.Tidal (c2s, lct, make, s, s2f, x)
import WAGSI.Plumbing.Types (BufferUrl(..), CycleDuration, Note(..), NoteInFlattenedTime(..), Sample(..), TheFuture)

globalOffset = 0.11 :: Number

downbeats :: NonEmptyList Number
downbeats = map (_ - globalOffset) $ NonEmptyList $ 0.444 :| List.fromFoldable [ 2.602, 4.719, 6.868, 9.052, 11.252, 13.369, 15.521, 17.674, 19.821, 21.974, 24.124, 26.308, 28.426, 30.609, 32.729, 34.911, 37.03, 39.213, 41.364, 43.483, 45.666, 47.817, 49.968, 52.089, 54.27, 56.421, 58.572, 60.722, 62.901, 65.081, 67.2, 69.384, 71.605, 73.725, 75.905, 78.055, 80.206, 82.323, 84.509, 86.66, 88.811, 90.93, 93.08, 95.265, 97.375, 99.57, 101.69, 103.838, 106.022, 108.14, 110.295, 112.477, 114.628, 116.749, 118.93, 121.049, 123.281, 125.43, 127.581, 129.701, 131.943, 134.125, 136.277, 138.396, 140.579, 142.701, 144.881, 147.032, 149.184, 151.305, 153.486, 155.638, 157.79, 159.939, 162.092, 164.244, 166.398, 168.547, 170.731, 172.853, 175.031, 177.152, 179.335, 181.486, 183.636, 185.789, 187.907, 190.061, 192.24, 194.362, 196.51, 198.665, 200.812, 202.997, 205.147, 207.299, 209.45, 211.571, 213.721, 215.864 ]

sdownbeats :: NonEmptySet Number
sdownbeats = NES.cons (NEL.head downbeats) (Set.fromFoldable $ NEL.tail downbeats)

pFullMeasures :: Int
pFullMeasures = NES.size sdownbeats

end :: Number
end = NEL.last downbeats + 2.14

mdownbeats :: Map.Map Number (Number /\ Number)
mdownbeats =
  ( foldl
      ( \{ mp, n, prev } v ->
          { n: n + 1
          , prev: Just v
          , mp: if n == 0 then mp else maybe mp (\(i /\ k) -> Map.insert (toNumber $ 4 * i) (k /\ snd v) mp) prev
          }
      )
      { mp: Map.empty, n: 0, prev: Nothing }
      (mapWithIndex (/\) (List.fromFoldable sdownbeats))
  ).mp

beat2time :: Number -> Number
beat2time n = maybe' (\_ -> (NES.min sdownbeats + (n * 2.14 / 4.0)))
  (\{ key, value } -> calcSlope key (fst value) (key + 4.0) (snd value) n)
  (Map.lookupLE n mdownbeats)

hhs :: NonEmptyList (NoteInFlattenedTime Note)
hhs = join $ mapWithIndex
  ( \i _ -> map
      ( \j ->
          let
            tnow = beat2time (toNumber i * 4.0 + j)
            tnext = beat2time (toNumber i * 4.0 + j + 1.0)
          in
            NoteInFlattenedTime
              { note: Note
                  { sampleFoT: const S.hh_0__Sample
                  , forward: true
                  , rateFoT: const 1.0
                  , bufferOffsetFoT: const 0.0
                  , volumeFoT: const 1.0
                  }
              , bigStartsAt: tnow
              , littleStartsAt: tnow
              , currentCycle: 1
              , positionInCycle: i
              , elementsInCycle: pFullMeasures * 4
              , nCycles: 1
              , duration: (tnow - tnext)
              , bigCycleDuration: end
              , littleCycleDuration: end
              , tag: Nothing
              }
      )
      (NonEmptyList (0.0 :| 1.0 : 2.0 : 3.0 : Nil))
  )
  downbeats

wag :: TheFuture
wag =
  make end
    { earth: s $ \(_ :: CycleDuration) -> hhs
    , wind: s $ noteFromSample (Sample "kissv")
    , title: "kiss"
    , sounds: Map.fromFoldable [ Sample "kissv" /\ BufferUrl "https://klank-share.s3.amazonaws.com/prince/kiss/kissv.ogg" ]
    }
{-
i' :: NonEmptyList (Cycle (Maybe Note)) -> Cycle (Maybe Note)
i' nel = Internal { env: { weight: 1.0, tag: Nothing }, nel }
-}