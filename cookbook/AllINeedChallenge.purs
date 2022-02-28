module WAGSI.Cookbook.AllINeed where

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
import Data.Newtype (unwrap)
import Data.NonEmpty ((:|))
import Data.Profunctor (lcmap)
import Data.Tuple.Nested ((/\))
import Data.Variant.Maybe (nothing)
import Foreign.Object as Object
import Math (pow, (%))
import Prim.Row (class Nub, class Union)
import Record as Record
import Type.Proxy (Proxy(..))
import WAGS.Create.Optionals (bandpass, gain, highpass, pan)
import WAGS.Graph.Paramable (paramize)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal.Cycle (noteFromSample)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Samples (intentionalSilenceForInternalUseOnly__Sample)
import WAGS.Lib.Tidal.Tidal (addEffect, make, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Types (BufferUrl(..), Note(..), NoteInFlattenedTime(..), Sample(..), FoT)
import WAGS.Math (calcSlope)

pitches :: NonEmptyArray { | Full }
pitches =
  fromNonEmpty
    $ ainx (-3.0) (cpg (-3.0)) (sk 1.0 0.2 0.1) :|
        ( [ ainx (-2.66666) (cpg (-3.0)) (sk 1.0 0.2 0.1)
          , ainx (-2.3333) (cpg (-3.0)) (sk 1.0 0.2 0.1)
          , ainx (-2.25) (cpg (-2.5)) (sk 1.0 0.2 0.1)
          , ainx (-2.0) (cpg (-2.0)) (sk 1.0 0.2 0.1)
          , ainx (-1.6666) (cpg (-2.0)) (sk 1.0 0.2 0.1)
          , ainx (-1.3333) (cpg (-2.0)) (sk 1.0 0.2 0.1)
          , ainx (-1.0) (cpg (-1.0)) (sk 1.0 0.1 0.1)
          , ainx (-0.8) (cpg (-1.0)) (sk 0.2 0.1 0.1)
          , ainx (-0.6) (cpg (-1.0)) (sk 0.4 0.1 0.1)
          , ainx (-0.4) (cpg (-1.0)) (sk 0.6 0.1 0.1)
          , ainx (-0.2) (cpg (-1.0)) (sk 0.9 0.1 0.1)
          ]
            <>
              [
                --- 0
                ainx (0.0) (cpg (3.75)) (skx 1.0 0.5 0.1)
              , ainx (0.75) (cpg (3.5)) (skx 1.0 0.5 0.1)
              , ainx2 (1.0) (cpg (3.25)) (skx 1.0 0.5 0.1)
              , ainx (1.5) (cpg (3.0)) (skx 1.0 0.5 0.1)
              , ainx (2.0) (cpg (2.75)) (skx 1.0 0.5 0.1)
              , ainx2 (2.25) (cpg (2.5)) (skx 1.0 0.5 0.1)
              , ainx (2.75) (cpg (2.25)) (skx 1.0 0.5 0.1)
              , ainx2 (3.0) (cpg (1.0)) (skx 1.0 0.5 0.1)
              , ainx (3.5) (cpg (0.5)) (skx 1.0 0.5 0.1)
              , ainx2 (3.75) (cpg (0.0)) (skx 1.0 0.5 0.1)
              ]
            <>
              [
                -- 1
                ainx (4.0) (cpg (7.0)) (skx 1.0 0.5 0.1)
              , ainx2 (4.75) (cpg (7.25)) (skx 1.0 0.5 0.1)
              , ainx (5.0) (cpg (7.0)) (skx 1.0 0.5 0.1)
              , ainx2 (5.5) (cpg (7.0)) (skx 1.0 0.5 0.1)
              , ainx (6.0) (cpg (6.75)) (skx 1.0 0.5 0.1)
              , ainx2 (6.25) (cpg (6.5)) (skx 1.0 0.5 0.1)
              , ainx (6.75) (cpg (6.25)) (skx 1.0 0.5 0.1)
              , ainx2 (7.0) (cpg (5.0)) (skx 1.0 0.5 0.1)
              , ainx (7.5) (cpg (4.5)) (skx 1.0 0.5 0.1)
              , ainx2 (7.75) (cpg (4.0)) (skx 1.0 0.5 0.1)
              , ainx (7.75) (cpg (7.5)) (skx 1.0 0.8 0.2)
              ]
            <>
              -- 2
              [ ainx (8.0) (cpg (11.75)) (skx 1.0 0.5 0.1)
              , ainx (8.75) (cpg (11.5)) (skx 1.0 0.5 0.1)
              , ainx2 (9.0) (cpg (11.25)) (skx 1.0 0.5 0.1)
              , ainx (9.5) (cpg (11.0)) (skx 1.0 0.5 0.1)
              , ainx (10.0) (cpg (10.75)) (skx 1.0 0.5 0.1)
              , ainx (10.25) (cpg (10.5)) (skx 1.0 0.5 0.1)
              , ainx (10.75) (cpg (10.25)) (skx 1.0 0.5 0.1)
              , ainx2 (11.0) (cpg (9.0)) (skx 1.0 0.5 0.1)
              , ainx (11.5) (cpg (8.5)) (skx 1.0 0.5 0.1)
              , ainx2 (11.75) (cpg (8.0)) (skx 1.0 0.5 0.1)
              ]
            <>
              -- 3
              [ ainx (12.0) (cpg (15.75)) (skx 1.0 0.25 0.1)
              , ainx2 (12.25) (cpg (15.5)) (skx 1.0 0.25 0.1)
              , ainx (12.5) (cpg (15.25)) (skx 1.0 0.25 0.1)
              , ainx2 (12.75) (cpg (15.0)) (skx 1.0 0.25 0.1)
              , ainx (13.0) (cpg (14.75)) (skx 1.0 0.25 0.1)
              , ainx (13.25) (cpg (14.5)) (skx 1.0 0.25 0.1)
              , ainx (13.5) (cpg (14.25)) (skx 1.0 0.25 0.1)
              , ainx (13.75) (cpg (14.0)) (skx 1.0 0.25 0.1)
              , ainx2 (14.0) (cpg (13.75)) (skx 1.0 0.25 0.1)
              , ainx (14.25) (cpg (13.5)) (skx 1.0 0.25 0.1)
              , ainx2 (14.5) (cpg (13.25)) (skx 1.0 0.25 0.1)
              , ainx2 (14.75) (cpg (13.0)) (skx 1.0 0.25 0.1)
              , ainx (15.0) (cpg (12.75)) (skx 1.0 0.25 0.1)
              , ainx2 (15.25) (cpg (12.5)) (skx 1.0 0.25 0.1)
              , ainx (15.5) (cpg (12.25)) (skx 1.0 0.25 0.1)
              , ainx (15.75) (cpg (12.0)) (skx 1.0 0.25 0.1)
              , ainx1 (15.0) (cpg (15.0)) (skx 1.0 0.25 0.1)
              , ainx1 (15.25) (cpg (15.25)) (skx 1.0 0.25 0.1)
              , ainx1 (15.5) (cpg (15.5)) (skx 1.0 0.25 0.1)
              , ainx1 (15.75) (cpg (15.75)) (skx 1.0 0.25 0.1)
              ]
            <>
              [
                --- with build
                rtx (const 1.0) $ ainx3 (13.0) (cpg (-3.0)) (sk 1.0 0.3 0.2)
              , rtx (const 1.0) $ ainx3 (13.333) (cpg (-3.0)) (sk 0.6 0.3 0.2)
              , rtx (const 1.0) $ ainx3 (13.666) (cpg (-2.5)) (sk 0.2 0.3 0.2)
              , rtx (const smt) $ ainx3 (13.0) (cpg (-3.0)) (sk 0.2 0.3 0.2)
              , rtx (const smt) $ ainx3 (13.333) (cpg (-3.0)) (sk 0.4 0.3 0.2)
              , rtx (const smt) $ ainx3 (13.666) (cpg (-2.5)) (sk 0.8 0.3 0.2)
              , rtx (const smt) $ ainx3 (14.0) (cpg (-2.0)) (sk 1.0 0.3 0.1)
              , rtx (const smt) $ ainx3 (14.25) (cpg (-2.0)) (sk 1.0 0.3 0.1)
              , rtx (const smt) $ ainx3 (14.5) (cpg (-2.0)) (sk 1.0 0.3 0.1)
              , rtx (const smt) $ ainx3 (14.75) (cpg (-2.0)) (sk 1.0 0.3 0.1)
              , rtx (const smt) $ ainx3 (15.0) (cpg (-1.0)) (skx 1.0 0.3 0.1)
              , rtx (const smt) $ ainx3 (15.2) (cpg (-1.0)) (skx 0.4 0.3 0.1)
              , rtx (const smt) $ ainx3 (15.4) (cpg (-1.0)) (skx 0.6 0.3 0.1)
              , rtx (const smt) $ ainx3 (15.6) (cpg (-1.0)) (skx 0.8 0.3 0.1)
              , rtx (const smt) $ ainx3 (15.8) (cpg (-1.0)) (skx 1.0 0.3 0.1)
              , rtx (const smt) $ ainx3 (16.0) (cpg (0.0)) (skx 1.1 0.5 0.1)
              , rtx (const smt) $ ainx3 (16.5) (cpg (0.0)) (skx 0.9 0.5 0.1)
              , rtx (const smt) $ ainx3 (17.0) (cpg (0.0)) (skx 0.7 0.5 0.1)
              , rtx (const smt) $ ainx3 (17.5) (cpg (0.0)) (skx 0.6 0.5 0.1)
              , rtx (const smt) $ ainx3 (18.0) (cpg (0.0)) (skx 0.4 0.5 0.1)
              , rtx (const smt) $ ainx3 (18.5) (cpg (0.0)) (skx 0.3 0.5 0.1)
              , rtx (const smt) $ ainx3 (19.0) (cpg (0.0)) (skx 0.3 0.5 0.1)
              , rtx (const smt) $ ainx3 (19.5) (cpg (0.0)) (skx 0.2 0.5 0.1)
              ]
            <>
              [
                --- 4
                ainx (16.0) (cpg (19.75)) (skx 1.0 0.5 0.1)
              , ainx2 (16.75) (cpg (19.5)) (skx 1.0 0.5 0.1)
              , ainx (17.0) (cpg (19.25)) (skx 1.0 0.5 0.1)
              , ainx2 (17.5) (cpg (19.0)) (skx 1.0 0.5 0.1)
              , ainx (18.0) (cpg (18.75)) (skx 1.0 0.5 0.1)
              , ainx2 (18.25) (cpg (18.5)) (skx 1.0 0.5 0.1)
              , ainx (18.75) (cpg (18.25)) (skx 1.0 0.5 0.1)
              , ainx (19.0) (cpg (17.0)) (skx 1.0 0.5 0.1)
              , ainx (19.5) (cpg (16.5)) (skx 1.0 0.5 0.1)
              , ainx (19.75) (cpg (19.75)) (skx 1.0 1.5 0.2)
              ]
            <>
              [
                --, ainx2 (19.75) (cpg (16.0)) (skx 1.0 0.5 0.1)
                -- 5
                --, ainx (20.0) (cpg (23.0)) (skx 1.0 0.5 0.1)
                --, ainx (20.75) (cpg (23.25)) (skx 1.0 0.5 0.1)
                --, ainx (21.0) (cpg (23.0)) (skx 1.0 0.5 0.1)
                --, ainx (21.5) (cpg (23.0)) (skx 1.0 0.5 0.1)
                ainx (21.0) (cpg (23.5)) (skx 1.0 0.5 0.1) -- new
              , ainx (21.5) (cpg (23.0)) (skx 1.0 0.5 0.1) -- new
              , ainx (22.0) (cpg (22.75)) (skx 1.0 0.5 0.1)
              , ainx2 (22.25) (cpg (22.5)) (skx 1.0 0.5 0.1)
              , ainx2 (22.75) (cpg (22.25)) (skx 1.0 0.5 0.1)
              , ainx2 (23.0) (cpg (21.0)) (skx 1.0 0.5 0.1)
              --, rtx (const sxth) $ ainx3 (23.0) (cpg (0.0)) (skx 0.6 0.5 0.1)
              , rtx (const sxth) $ ainx3 (23.333) (cpg (0.0)) (skx 0.5 0.5 0.1)
              , rtx (const sxth) $ ainx3 (23.666) (cpg (0.0)) (skx 0.4 0.5 0.1)
              , rtx (const sxth) $ ainx3 (24.0) (cpg (0.0)) (skx 0.3 0.5 0.1)
              , rtx (const sxth) $ ainx3 (24.333) (cpg (0.0)) (skx 0.2 0.5 0.1)
              , rtx (const sxth) $ ainx3 (24.666) (cpg (0.0)) (skx 0.15 0.5 0.1)
              , ainx (23.5) (cpg (20.5)) (skx 1.0 0.5 0.1)
              , ainx2 (23.75) (cpg (20.0)) (skx 1.0 0.5 0.1)
              , ainx (23.75) (cpg (23.75)) (skx 1.0 0.8 0.2)
              ]
            <>
              [
                -- 6
                ainx (24.0) (cpg (27.75)) (skx 1.0 0.5 0.1)
              , ainx2 (24.75) (cpg (27.5)) (skx 1.0 0.5 0.1)
              , ainx2 (25.0) (cpg (27.25)) (skx 1.0 0.5 0.1)
              , ainx (25.5) (cpg (27.0)) (skx 1.0 0.5 0.1)
              , ainx (26.0) (cpg (26.75)) (skx 1.0 0.5 0.1)
              , ainx (26.25) (cpg (26.5)) (skx 1.0 0.5 0.1)
              , ainx2 (26.75) (cpg (26.25)) (skx 1.0 0.5 0.1)
              , ainx (27.0) (cpg (25.0)) (skx 1.0 0.5 0.1)
              , ainx (27.5) (cpg (24.5)) (skx 1.0 0.5 0.1)
              , ainx2 (27.75) (cpg (24.0)) (skx 1.0 0.5 0.1)
              , ainx1 (27.75) (cpg (-3.0)) (sk 0.3 0.2 0.1)
              , ainx (27.75) (cpg (27.75)) (skx 1.0 0.5 0.1)
              ]
            <>
              [
                -- 7
                ainx (28.0) (cpg (31.0)) (skx 1.0 0.5 0.1)
              , ainx (28.75) (cpg (31.25)) (skx 1.0 0.5 0.1)
              , ainx (29.0) (cpg (31.0)) (skx 1.0 0.5 0.1)
              , ainx2 (29.5) (cpg (31.0)) (skx 1.0 0.5 0.1)
              , ainx (30.0) (cpg (30.75)) (skx 1.0 0.5 0.1)
              , ainx1 (30.25) (cpg (-3.0)) (sk 0.2 0.2 0.1)
              , ainx (30.25) (cpg (30.5)) (skx 1.0 0.5 0.1)
              , ainx2 (30.75) (cpg (30.25)) (skx 1.0 0.5 0.1)
              , ainx (31.25) (cpg (29.0)) (skx 1.0 0.5 0.1)
              --, ainx2 (31.5) (cpg (28.5)) (skx 1.0 0.5 0.1)
              --, ainx (31.75) (cpg (28.0)) (skx 1.0 0.5 0.1)

              , ainx2 (31.0) (cpg (1.0)) (skx 0.6 0.5 0.1)
              , ainx2 (31.5) (cpg (0.5)) (skx 0.6 0.5 0.1)
              , ainx2 (31.75) (cpg (0.0)) (skx 0.6 0.5 0.1)
              ]
            -- 8
            <>
              [ ainx (32.0) (cpg (32.75)) (skx 1.0 0.5 0.1)
              , ainx (32.25) (cpg (32.25)) (skx 1.0 0.5 0.1)
              , ainx2 (32.5) (cpg (32.5)) (skx 1.0 0.5 0.1)
              , ainx (32.75) (cpg (32.0)) (skx 1.0 0.5 0.1)
              , ainx (33.0) (cpg (33.8)) (skx 1.0 0.5 0.1)
              , ainx (33.2) (cpg (32.6)) (skx 1.0 0.5 0.1)
              , ainx2 (33.4) (cpg (33.4)) (skx 1.0 0.5 0.1)
              -- , ainx3 (33.5) (cpg (-3.0)) (sk 1.0 0.2 0.1)
              , ainx (33.6) (cpg (33.2)) (skx 1.0 0.5 0.1)
              , ainx (33.8) (cpg (33.0)) (skx 1.0 0.5 0.1)
              , ainx (34.0) (cpg (34.86)) (skx 1.0 0.5 0.1)
              , ainx (34.16666) (cpg (34.66)) (skx 1.0 0.5 0.1)
              -- , ainx3 (34.0) (cpg (-3.0)) (sk 1.0 0.2 0.1)
              , ainx (34.33333) (cpg (34.5)) (skx 1.0 0.4 0.1)
              , ainx2 (34.5) (cpg (34.3333)) (skx 1.0 0.3 0.1)
              , ainx (34.6666) (cpg (34.16666)) (skx 1.0 0.2 0.1)
              -- , ainx3 (34.5) (cpg (-3.0)) (sk 1.0 0.2 0.1)
              -- , ainx3 (34.75) (cpg (-3.0)) (sk 1.2 0.2 0.1)
              , ainx2 (34.86) (cpg (35.0)) (skx 1.0 0.2 0.1)
              ]
        )

startAt = 0.0 -- max 0.0 $ pg (-3.0) :: Number
endAt = dur :: Number

rmp dr from = lcmap unwrap \{ sampleTime } -> if sampleTime < dr then calcSlope 0.0 from dr 1.0 sampleTime else 1.0

ainx3 st bo vol = nt { smp: "ain", st, bo, vol, vc: const 3 }
ainx2 st bo vol = nt { smp: "ain", st, bo, vol, vc: const 2 }
ainx1 st bo vol = nt { smp: "ain", st, bo, vol, vc: const 1 }
ainx st bo vol = nt { smp: "ain", st, bo, vol }
rtx r i = i { rt = r }

mct :: Number -> Number
mct t = (t % subDur) + startAt

hpFx = addEffect
  ( \{ clockTime } ->
      let
        t = mct clockTime
      in
        fx
          (goodbye $ gain 0.3 $ highpass { freq: 1500.0 } hello)
  )

orgFx = addEffect
  ( \{ clockTime } ->
      let
        t = mct clockTime
      in
        fx
          (goodbye $ gain 0.3 $ highpass { freq: 1500.0 } hello)
  )

smt = 2.0 `pow` (2.0 / 12.0)
sxth = 2.0 `pow` (9.0 / 12.0)
myFx = addEffect
  ( \{ clockTime } ->
      let
        t = mct clockTime
      in
        fx
          (goodbye $ gain 1.0 $ hello)
  )

mff = ff 0.03

fp tf tx =
  let d = 3.0 in let t = tx % d in if (if tf then not else identity) (t < d / 3.0) then 0.25 else 0.75

pndFx = addEffect
  ( \{ clockTime } ->
      let
        t = mct clockTime
      in
        fx
          ( goodbye
              $ pan (lfo { phase: 0.0, freq: 1.2358, amp: 0.8 } t)
              $ gain 1.0
              $
                { hp0: gain (fp true t) $ highpass 3000.0 hello
                , bp0: gain (fp true t) $ bandpass ({ freq: mff $ paramize $ lfo { phase: 0.0, freq: 0.8, amp: 600.0 } t + 2000.0, q: 6.0 }) hello
                , bp1: gain (fp true t) $ bandpass ({ freq: mff $ paramize $ lfo { phase: 0.0, freq: 0.4, amp: 350.0 } t + 1000.0, q: 6.0 }) hello
                , bsk: gain (fp false t) $ hello
                }
          )
  )

pndAltFx = addEffect
  ( \{ clockTime } ->
      let
        t = mct clockTime
      in
        fx
          ( goodbye
              $ pan (lfo { phase: 0.0, freq: 1.2358, amp: 0.8 } t)
              $ gain 1.0
              $ hello
          )
  )

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
  , bo: (const 0.0 :: FoT Unit)
  , fw: true
  }

type Full = (smp :: String, st :: Number | Opt)

type Opt =
  ( rt :: FoT Unit
  , vol :: FoT Unit
  , bo :: FoT Unit
  , fw :: Boolean
  , vc :: String -> Int
  )

justNotes :: Int -> NonEmptyArray (NoteInFlattenedTime (Note Unit))
justNotes =
  DM.fromMaybe (NEA.fromNonEmpty (shhhh :| []))
    <<< fromArray
    <<< map (\(NoteInFlattenedTime x) -> NoteInFlattenedTime (x { littleStartsAt = x.littleStartsAt - startAt, bigStartsAt = x.bigStartsAt - startAt }))
    <<< Array.filter (unwrap >>> \{ littleStartsAt } -> littleStartsAt >= startAt)
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
  , bigCycleDuration: subDur
  , littleCycleDuration: subDur
  , tag: nothing
  }

facultativeElements = 42 :: Int

dur = 27.9044999 :: Number
subDur = if endAt > startAt then endAt - startAt else 1.0 :: Number

nt2nift :: Int -> Int -> { | Full } -> Maybe (NoteInFlattenedTime (Note Unit))
nt2nift voice _ { smp, vc } | vc smp /= voice = Nothing
nt2nift _ i { smp, st, vol, rt, bo, fw } = Just
  let
    startsAt = projectToGrid st
  in
    NoteInFlattenedTime
      { note:
          set (unto Note <<< prop (Proxy :: _ "volumeFoT")) vol
            $ set (unto Note <<< prop (Proxy :: _ "rateFoT")) rt
            $ set (unto Note <<< prop (Proxy :: _ "forwardFoT")) (const fw)
            $ set (unto Note <<< prop (Proxy :: _ "bufferOffsetFoT")) bo
            $ noteFromSample (Sample smp)
      , bigStartsAt: startsAt
      , littleStartsAt: startsAt
      , currentCycle: 0
      , positionInCycle: i
      , elementsInCycle: facultativeElements
      , nCycles: 1
      , duration: 1.0 -- ignore for now
      , bigCycleDuration: subDur
      , littleCycleDuration: subDur
      , tag: nothing
      }

btz = Array.sort [ 0.02, 1.493, 2.946, 4.375, 5.795, 7.226, 8.646, 10.081, 11.508, 12.935, 14.360, 15.791, 17.208, 18.644, 20.068, 21.497, 22.924, 24.346, 25.787, 27.206 ]

btzMap :: Map.Map Number Number
btzMap = Map.fromFoldable $ mapWithIndex (\i v -> ((2.0 * (toNumber i)) - 3.0) /\ v) btz

sk' :: Number -> Number -> Number -> Number -> FoT Unit
sk' r v d t = lcmap unwrap \{ sampleTime } -> if sampleTime < r then calcSlope 0.0 0.0 r v sampleTime else if sampleTime > d + t then 0.0 else if sampleTime > d then max 0.0 $ calcSlope d v (d + t) 0.0 sampleTime else v

sk = sk' 0.1
skx = sk' 0.05

cpg :: forall a. Number -> a -> Number
cpg = const <<< pg

pg = projectToGrid :: Number -> Number

projectToGrid :: Number -> Number
projectToGrid n = DM.maybe (DM.maybe 0.0 _.value ub) (\lb' -> DM.maybe lb'.value (\ub' -> calcSlope lb'.key lb'.value ub'.key ub'.value n) ub) lb
  where
  lb = Map.lookupLE n btzMap
  ub = Map.lookupGE n btzMap

wag :: AFuture
wag = make subDur
  { lambert: map orgFx $ s $ parse "ain"
  , ross: map hpFx $ s $ justNotes 3
  , earth: map myFx $ s $ justNotes 0
  , wind: map myFx $ s $ justNotes 1
  -- pndFx drains too much nrg
  , fire: map pndAltFx $ s $ justNotes 2
  , sounds
  , title: "#AllINeedChallenge"
  }

-- a useful strategy to import files
sounds :: Object.Object BufferUrl
sounds = Object.fromFoldable
  $ (map <<< map) BufferUrl
      [ "ain" /\ "https://media.graphcms.com/4wL7Q2ZSR8mE5s0ru9gk"
      ]
