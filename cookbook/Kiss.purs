module WAGSI.Cookbook.Kiss where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty (fromNonEmpty)
import Data.Array.NonEmpty as NEA
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (toNumber)
import Data.Lens (over, set, traversed)
import Data.Lens.Iso.Newtype (unto)
import Data.List (List(..), foldl, (:))
import Data.List as List
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Newtype (unwrap)
import Data.NonEmpty ((:|))
import Data.Profunctor (lcmap)
import Data.Set as Set
import Data.Set.NonEmpty (NonEmptySet)
import Data.Set.NonEmpty as NES
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Variant.Either (left, right)
import Data.Variant.Maybe (just, maybe, maybe', nothing)
import Foreign.Object as Object
import Math (pi)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Sounds.Drones (drones)
import WAGS.Lib.Tidal.Cycle (c2d, cycleFromSample_)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Samples as S
import WAGS.Lib.Tidal.Tidal (betwixt, ldr, ldv, lnv, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture, Sample(..), getNow)
import WAGS.Lib.Tidal.Types (BufferUrl(..), Note(..), NoteInFlattenedTime(..), Sample(..))
import WAGS.Math (calcSlope)

type NU = Note Unit

globalOffset = 0.0 :: Number

sdownbeats :: NonEmptySet Number
sdownbeats = NES.cons (NEA.head downbeats) (Set.fromFoldable $ NEA.tail downbeats)

pFullMeasures :: Int
pFullMeasures = NES.size sdownbeats

end :: Number
end = NEA.last downbeats + 2.14

mdownbeats :: Map.Map Number (Number /\ Number)
mdownbeats =
  ( foldl
      ( \{ mp, n, prev } v ->
          { n: n + 1
          , prev: just v
          , mp: if n == 0 then mp else maybe mp (\(i /\ k) -> Map.insert (toNumber $ 4 * i) (k /\ snd v) mp) prev
          }
      )
      { mp: Map.empty, n: 0, prev: nothing }
      (mapWithIndex (/\) (List.fromFoldable sdownbeats))
  ).mp

beat2time :: Number -> Number
beat2time n = maybe' (\_ -> (NES.min sdownbeats + (n * 2.14 / 4.0)))
  (\{ key, value } -> calcSlope key (fst value) (key + 4.0) (snd value) n)
  ( case Map.lookupLE n mdownbeats of
      Just x -> just x
      Nothing -> nothing
  )

sitars :: NonEmptyArray (NoteInFlattenedTime NU)
sitars = map
  ( \i ->
      let
        tnow = beat2time i
        tnext = beat2time (i + 8.0)
      in
        NoteInFlattenedTime
          { note: Note
              { sampleFoT: right (Sample "sitar:3")
              , forwardFoT: const true
              , tumultFoT: const $ fx $ goodbye $ hello
              , rateFoT: const 1.0
              , bufferOffsetFoT: const 0.0
              , volumeFoT: const 1.0
              }
          , bigStartsAt: tnow
          , littleStartsAt: tnow
          , currentCycle: 1
          , positionInCycle: 0
          , elementsInCycle: pFullMeasures * 4
          , nCycles: 1
          , duration: (tnext - tnow)
          , bigCycleDuration: end
          , littleCycleDuration: end
          , tag: nothing
          }
  )
  (fromNonEmpty (8.0 :| []))

withIE :: forall a. Number -> NonEmptyArray a -> a
withIE n nea = go 0 (List.fromFoldable $ NEA.toArray nea)
  where
  lenny = toNumber $ NEA.length nea
  go _ Nil = NEA.head nea
  go n' (a : b) = if (toNumber (n' + 1) / lenny > n) then a else go (n' + 1) b

tbl :: NonEmptyArray (NoteInFlattenedTime NU)
tbl = join $ mapWithIndex
  ( \i _ -> map
      ( \j' ->
          let
            j = 0.5 * toNumber j'
            tnow = beat2time (toNumber i * 4.0 + j)
            tnext = beat2time (toNumber i * 4.0 + j + 1.0)
          in
            NoteInFlattenedTime
              { note: Note
                  { sampleFoT: left $ lcmap (unwrap >>> _.initialEntropy) \_ -> case j' of
                      0 -> Sample "tabla:24" -- S.tabla_24__Sample -- S.tabla_1__Sample (cors?)
                      1 -> Sample "tabla:0" -- S.tabla_0__Sample
                      2 -> Sample "tabla:6" -- S.tabla_6__Sample
                      3 -> Sample "tabla:14" -- S.tabla_14__Sample
                      4 -> Sample "tabla:23" -- S.tabla_23__Sample
                      5 -> Sample "tabla:8" -- S.tabla_8__Sample
                      6 -> Sample "tabla:24" -- S.tabla_24__Sample
                      7 -> Sample "tabla:16" -- S.tabla_16__Sample
                      _ -> Sample "intentionalSilenceForInternalUseOnly" -- S.intentionalSilenceForInternalUseOnly__Sample
                  , forwardFoT: const true
                  , tumultFoT: const $ fx $ goodbye $ hello
                  , rateFoT: const 1.0
                  , bufferOffsetFoT: const 0.0
                  , volumeFoT: const 1.0
                  }
              , bigStartsAt: tnow
              , littleStartsAt: tnow
              , currentCycle: 1
              , positionInCycle: 0
              , elementsInCycle: pFullMeasures * 4
              , nCycles: 1
              , duration: (tnext - tnow)
              , bigCycleDuration: end
              , littleCycleDuration: end
              , tag: nothing
              }
      )
      (fromNonEmpty (0 :| [ 1, 2, 3, 4, 5, 6, 7 ]))
  )
  downbeats

finalize :: NonEmptyArray (NoteInFlattenedTime NU) -> NonEmptyArray (NoteInFlattenedTime NU)
finalize nea = NEA.mapWithIndex
  ( \i -> over (unto NoteInFlattenedTime)
      ( \x -> x
          { elementsInCycle = lenny
          , positionInCycle = i
          }
      )
  )
  (NEA.sortBy (compare `on` (unwrap >>> _.bigStartsAt)) nea)
  where
  lenny = NEA.length nea

voxFade :: Number -> Number
voxFade = betwixt 0.0 1.0 <<< calcSlope 3.0 0.0 4.0 1.0

startFade :: Number -> Number
startFade = betwixt 0.0 1.0 <<< calcSlope 0.0 0.0 10.0 1.0

wag :: AFuture
wag =
  make end
    { earth: s $ finalize (tbl <> sitars)
    , wind: s $ (set (traversed <<< traversed <<< lnv) (lcmap (unwrap >>> _.bigCycleTime) voxFade)) $ cycleFromSample_ (Sample "kissv")
    , heart:
        set
          (traversed <<< ldv)
          (lcmap (getNow >>> unwrap >>> _.clockTime) (mul <$> startFade <*> (add 0.4 <<< lfo { phase: 0.0, freq: 0.3, amp: 0.3 })))
          $ set (traversed <<< ldr) (const $ 0.8)
          $ c2d
          $ parse "harmonium"
    , water:
        set (traversed <<< ldv)
          (lcmap (getNow >>> unwrap >>> _.clockTime) (mul <$> startFade <*> (add 0.7 <<< lfo { phase: pi, freq: 0.1, amp: 0.15 }))) $ set (traversed <<< ldr) (const $ 0.75) $ c2d $ parse "digeridoo"
    , title: "kiss"
    , preload:
        [ Sample "tabla:24" -- S.tabla_24__Sample -- S.tabla_1__Sample (cors?)
        , Sample "tabla:0" -- S.tabla_0__Sample
        , Sample "tabla:6" -- S.tabla_6__Sample
        , Sample "tabla:14" -- S.tabla_14__Sample
        , Sample "tabla:23" -- S.tabla_23__Sample
        , Sample "tabla:8" -- S.tabla_8__Sample
        , Sample "tabla:24" -- S.tabla_24__Sample
        , Sample "tabla:16" -- S.tabla_16__Sample
        ]
    , sounds: Object.union drones $ Object.fromFoldable [ "kissv" /\ BufferUrl "https://klank-share.s3.amazonaws.com/prince/kiss/kissv.ogg" ]
    }

downbeats :: NonEmptyArray Number
downbeats = map (_ - globalOffset) $ fromNonEmpty $ 0.444 :|
  [ 2.602
  , 4.719
  , 6.868
  , 9.052
  , 11.252
  , 13.369
  , 15.521
  , 17.674
  , 19.821
  , 21.974
  , 24.124
  , 26.308
  , 28.426
  , 30.609
  , 32.729
  , 34.911
  , 37.03
  , 39.213
  , 41.364
  , 43.483
  , 45.666
  , 47.817
  , 49.968
  , 52.089
  , 54.27
  , 56.421
  , 58.572
  , 60.722
  , 62.901
  , 65.081
  , 67.2
  , 69.384
  , 71.605
  , 73.725
  , 75.905
  , 78.055
  , 80.206
  , 82.323
  , 84.509
  , 86.66
  , 88.811
  , 90.93
  , 93.08
  , 95.265
  , 97.375
  , 99.57
  , 101.69
  , 103.838
  , 106.022
  , 108.14
  , 110.295
  , 112.477
  , 114.628
  , 116.749
  , 118.93
  , 121.049
  , 123.281
  , 125.43
  , 127.581
  , 129.701
  , 131.943
  , 134.125
  , 136.277
  , 138.396
  , 140.579
  , 142.701
  , 144.881
  , 147.032
  , 149.184
  , 151.305
  , 153.486
  , 155.638
  , 157.79
  , 159.939
  , 162.092
  , 164.244
  , 166.398
  , 168.547
  , 170.731
  , 172.853
  , 175.031
  , 177.152
  , 179.335
  , 181.486
  , 183.636
  , 185.789
  , 187.907
  , 190.061
  , 192.24
  , 194.362
  , 196.51
  , 198.665
  , 200.812
  , 202.997
  , 205.147
  , 207.299
  , 209.45
  , 211.571
  , 213.721
  , 215.864
  ]
