module WAGSI.Cookbook.Kiss where

import Prelude

import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray, fromArray, fromNonEmpty, toArray)
import Data.Array.NonEmpty as NEA
import Data.Compactable (compact)
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (toNumber)
import Data.Lens (set, view)
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Record (prop)
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Maybe as DM
import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import Data.Variant.Maybe (nothing)
import Foreign.Object as Object
import Prim.Row (class Nub, class Union)
import Record as Record
import Type.Proxy (Proxy(..))
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Cycle (noteFromSample)
import WAGS.Lib.Tidal.Samples (intentionalSilenceForInternalUseOnly__Sample)
import WAGS.Lib.Tidal.Tidal (changeVolume, make, parse_, s)
import WAGS.Lib.Tidal.Types (BufferUrl(..), Note(..), NoteInFlattenedTime(..), Sample(..), FoT)
import WAGS.Math (calcSlope)

nt
  :: forall inRec overfull
   . Union inRec Opt overfull
  => Nub overfull Full
  => { | inRec }
  -> { | Full }
nt r = Record.merge r
  { vc: (const 0 :: String -> Int)
  , vol: (const 1.0 :: FoT Unit)
  , rt: (const 1.0 :: FoT Unit)
  }

type Full = (smp :: String, vol :: FoT Unit, rt :: FoT Unit, st :: Number, vc :: String -> Int)

type Opt = (rt :: FoT Unit, vol :: FoT Unit, vc :: String -> Int)

pitches :: NonEmptyArray { | Full }
pitches =
  fromNonEmpty $ (nt { smp: "hh", st: 1.0 }) :|
    [ nt { smp: "hh", st: 3.0 }
    , nt { smp: "hh", st: 5.0 }
    , nt { smp: "hh", st: 7.0 }
    , nt { smp: "hh", st: 9.0 }
    , nt { smp: "hh", st: 11.0 }
    , nt { smp: "hh", st: 13.0 }
    ]

justNotes :: Int -> NonEmptyArray (NoteInFlattenedTime (Note Unit))
justNotes =
  DM.fromMaybe (NEA.fromNonEmpty (shhhh :| []))
    <<< fromArray
    <<< notes

notes :: Int -> Array (NoteInFlattenedTime (Note Unit))
notes voice =
  Array.sortBy
    (compare `on` (view (unto NoteInFlattenedTime <<< prop (Proxy :: _ "littleStartsAt"))))
    $ compact
    $ toArray
    $ mapWithIndex (nt2nift voice) pitches

shhhh :: NoteInFlattenedTime (Note Unit)
shhhh = NoteInFlattenedTime
  { note: noteFromSample intentionalSilenceForInternalUseOnly__Sample
  , bigStartsAt: 0.0
  , littleStartsAt: 0.0
  , currentCycle: 0
  , positionInCycle: 0
  , elementsInCycle: 1
  , nCycles: 1
  , duration: 2.0
  , bigCycleDuration: dur
  , littleCycleDuration: dur
  , tag: nothing
  }

facultativeElements = 42 :: Int

nt2nift :: Int -> Int -> { | Full } -> Maybe (NoteInFlattenedTime (Note Unit))
nt2nift voice _ { smp, vc } | vc smp /= voice = Nothing
nt2nift _ i { smp, st, vol, rt } = Just
  let
    startsAt = projectToGrid st
  in
    NoteInFlattenedTime
      { note:
          set
            (unto Note <<< prop (Proxy :: _ "volumeFoT"))
            vol $ set
            (unto Note <<< prop (Proxy :: _ "rateFoT"))
            rt
            (noteFromSample (Sample smp))
      , bigStartsAt: startsAt
      , littleStartsAt: startsAt
      , currentCycle: 0
      , positionInCycle: i
      , elementsInCycle: facultativeElements
      , nCycles: 1
      , duration: 1.0 -- ignore for now
      , bigCycleDuration: dur
      , littleCycleDuration: dur
      , tag: nothing
      }

dur = 27.9044999 :: Number

btz = Array.sort [ 0.02, 1.493, 2.946, 4.375, 5.795, 7.226, 8.646, 10.081, 11.508, 12.935, 14.360, 15.791, 17.208, 18.644, 20.068, 21.497, 22.924, 24.346, 25.787, 27.206 ]

btzMap :: Map.Map Number Number
btzMap = Map.fromFoldable $ mapWithIndex (\i v -> 2.0 * ((toNumber i) - 3.0) /\ v) btz

projectToGrid :: Number -> Number
projectToGrid n = DM.maybe (DM.maybe 0.0 _.value ub) (\lb' -> DM.maybe lb'.value (\ub' -> calcSlope lb'.key lb'.value ub'.key ub'.value n) ub) lb
  where
  lb = Map.lookupLE n btzMap
  ub = Map.lookupGE n btzMap

wag :: AFuture
wag = make dur
  { earth: s $ map (changeVolume (const 0.1)) $ parse_ "ain"
  , wind: s $ justNotes 0
  , sounds
  }

-- a useful strategy to import files
sounds :: Object.Object BufferUrl
sounds = Object.fromFoldable
  $ (map <<< map) BufferUrl
      [ "ain" /\ "https://media.graphcms.com/4wL7Q2ZSR8mE5s0ru9gk"
      ]