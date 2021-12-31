module WAGSI.Cookbook.RauhaaVainRauhaa where

{-
  Rauhaa, vain rauhaa
  by Ahti Sonninen
  Performed and arranged by
  Mike Solomon and Verity Scheel

  **Loading**
  Once you click play, loading will take 10-20 seconds.
  Subsequent loads will be faster!

  **API**
  After the imports, there are various parameters
  that you can tweak to your heart's content.
  Each one is documented, and each one will result
  in a subtly or perhaps radically different work.

  **Tuning**
  This document has already had 1000+ listens and any
  changes you make here will be heard by anyone who
  visits! The spirit of the project encourages that: the
  work should evolve organically, and everyone can leave
  their mark if they wish.

  If you'd rather tweak the parameters in your own
  version, please copy the contents of this pad into
  another pad.

  You can create a new pad by going to yap.wags.fm and
  clicking on the "New Pad" button. Then, copy the
  contents of this document into the new pad.

  **Thanks!**
  We hope you have a wonderful New Year!
-}

import Prelude

import Data.Typelevel.Num (D63)
import Control.Monad.State (evalState, get, put)
import Data.Array ((!!))
import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray, fromArray)
import Data.Array.NonEmpty as NEA
import Data.Foldable (fold, foldl)
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (fromString)
import Data.Lens (set, view)
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Record (prop)
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe, isJust, maybe)
import Data.Maybe as DM
import Data.Newtype (unwrap)
import Data.NonEmpty ((:|))
import Data.Profunctor (lcmap)
import Data.String as String
import Data.String.CodeUnits (slice)
import Data.Traversable (traverse)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Variant.Maybe (nothing)
import Data.Vec (Vec, (+>))
import Data.Unfoldable as UF
import Data.Vec as V
import Foreign.Object (Object, lookup)
import Foreign.Object as Object
import Math ((%), pi)
import Prim.Row (class Nub, class Union)
import Record as Record
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import WAGS.Create.Optionals (bandpass, convolver, delay, gain, highpass, pan, ref)
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Learn.Oscillator (lfo)
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Cycle (noteFromSample)
import WAGS.Lib.Tidal.FX (fx, goodbye, hello)
import WAGS.Lib.Tidal.Samples (intentionalSilenceForInternalUseOnly__Sample)
import WAGS.Lib.Tidal.Tidal (addEffect, make, s)
import WAGS.Lib.Tidal.Types (BufferUrl(..), FoT, Note(..), NoteInFlattenedTime(..), Sample(..), Voice)
import WAGS.Math (calcSlope)

--------------
--- API ------
-- A map governing how the 63 sections of the piece are played.
-- For linear playback of the work, you can do [0 /\ 63].
-- To loop 0,1,2,3 twice and then 30,31,32,33 twice, you can
-- do [0 /\ 3, 0 /\ 3, 30 /\ 33, 30 /\ 33].

sectionMap :: Array (Int /\ Int)
sectionMap = join $
  rp 5 [ 0 /\ 4 ]
    <> rp 5 [ 5 /\ 8 ]
    <> rp 5 [ 9 /\ 17 ]
    <> rp 5 [ 18 /\ 22 ]
    <> rp 5 [ 23 /\ 28 ]
    <> rp 3 [ 29 /\ 40 ]
    {-<> rp 1 [ 41 /\ 45 ]
    <> rp 5 [ 46 /\ 51 ]
    <> rp 5 [ 52 /\ 63 ]-}

voice1PanFrequency = 0.38 :: Number
-- the frequency, in Hz, with which the second voice pans from left to right.
voice2PanFrequency = 0.20 :: Number
-- the number of sawtooth peaks in the voice 3 LFO over the course of the piece. For more radical, try up to 200.0, and for more tame, try 1.0
voice3PanRate = 30.0 :: Number

-- NB. the two delay lines below should not be at high volume at the same time for too long, otherwise they will become unstable and
-- enter into a feedback loop. getting their subtle interplay right can result in some magic moments!
--
-- a function of time setting the volume of the first delay line.
volDelayA :: Number -> Number
volDelayA = add 0.3 <<< lfo { amp: 0.25, freq: 0.1, phase: pi }

-- a function of time setting the volume of the first delay line.
volDelayB :: Number -> Number
volDelayB = add 0.4 <<< lfo { amp: 0.35, freq: 0.35, phase: pi * 0.25 }

--------------

type Sections a = Vec D63 a
type SubSections a = NonEmptyArray a

sectionToSubSections arr (sectionStart /\ sectionEnd) =
  let
    st = min 62 $ max 0 sectionStart
    ed' = min 63 $ max 1 (sectionEnd + 1)
    ed = if ed' <= st then st + 1 else ed'
  in
    Array.slice st ed arr

sectionsToSubSections :: Sections ~> SubSections
sectionsToSubSections = unsafeCoerce
  <<< join
  <<< (<#>) sectionMap
  <<< sectionToSubSections
  <<< V.toArray

type Full = (smp :: String, vol :: FoT Unit, rt :: FoT Unit, st :: DurF, vc :: String -> Int)

defaultSt :: DurF
defaultSt = const 0.0

attrVoice :: String -> Int
attrVoice s
  | isJust $ String.indexOf (String.Pattern ("tone")) s = 3
  | isJust $ String.indexOf (String.Pattern ("licks1")) s = 4
  | isJust $ String.indexOf (String.Pattern ("licks2")) s = 5
  | isJust $ String.indexOf (String.Pattern ("fsbells")) s = 6
  | Just ixv <- String.indexOf (String.Pattern ("v")) s
  , Just ixs <- String.indexOf (String.Pattern ("s")) s
  , Just ss <- slice (ixv + 1) ixs s
  , Just asI <- fromString ss = asI `mod` 3
  | otherwise = 0

rp = UF.replicate

defaultVol :: FoT Unit
defaultVol = const 0.3

defaultRt :: FoT Unit
defaultRt = const 1.0

verbMe0 = addEffect
  \{ buffers, silence } ->
    fx $ goodbye $ convolver (maybe silence _.buffer.forward (lookup "StPatricksChurchPatringtonPosition3" buffers)) hello

nt
  :: forall inRec overfull
   . Union inRec
       Full
       overfull
  => Nub overfull
       Full
  => { | inRec }
  -> { | Full }
nt r = Record.merge r
  { smp: "a"
  , st: defaultSt
  , vc: attrVoice
  , vol: defaultVol
  , rt: defaultRt
  }

wag :: AFuture
wag =
  make end
    {
      -- voice
      earth: map (vocalEffects 0) $ s $ justNotes 0
    , wind: map (vocalEffects 1) $ s $ justNotes 1
    , fire: map (vocalEffects 2) $ s $ justNotes 2
    -- cello
    , lambert: s $ justNotes 3
    , hendricks: map verbMe0 $ s $
        ( NEA.sortBy
            (compare `on` (view (unto NoteInFlattenedTime <<< prop (Proxy :: _ "littleStartsAt"))))
            (justNotes 4 <> justNotes 5)
        )
    , ross: s $ justNotes 6
    -- other stuff
    , sounds: sounds
    , preload: map Sample [ "StPatricksChurchPatringtonPosition3" ]
    , title: "rauhaa, vain rauhaa"
    }

ndg = 0.04 :: Number

vocalEffects :: forall event. Int -> Voice event -> Voice event
vocalEffects voice = addEffect
  ( \{ clockTime } ->
      fx
        ( goodbye $ gain (ff ndg $ pure $ 1.0)
            { mymix: gain (ff ndg $ pure $ 1.0)
                { ipt:
                    pan
                      ( if voice == 0 then lfo { amp: 0.4, freq: voice1PanFrequency, phase: 0.0 } clockTime
                        else if voice == 1 then lfo { amp: 1.0, freq: voice2PanFrequency, phase: pi } clockTime
                        else ((calcSlope 0.0 0.0 end voice3PanRate clockTime) % 2.0) - 1.0
                      ) $ gain 1.0
                      { hp0: gain (0.5 + lfo { amp: 0.3, freq: 0.4, phase: 0.0 } clockTime) $ highpass
                          { freq: ff ndg $ pure $
                              lfo
                                { amp: 1400.0
                                , freq:
                                    ( if voice == 0 then
                                        0.05
                                      else if voice == 1 then 0.09
                                      else 0.13
                                    )
                                , phase: 0.0
                                }
                                clockTime + 2000.0 +
                                (if voice == 0 then 0.0 else if voice == 1 then 800.0 else 1700.0)
                          , q: ff ndg $ pure $
                              ( lfo
                                  { amp: 9.0
                                  , freq: 0.13
                                  , phase:
                                      if voice == 0 then 0.0
                                      else if voice == 1 then 0.66 * pi
                                      else pi * 1.33
                                  }
                                  clockTime + 10.0
                              )
                          }
                          hello
                      , bp1: gain (0.2 + lfo { amp: 0.13, freq: 0.2, phase: 0.0 } clockTime) $ bandpass
                          { freq: ff ndg $ pure $
                              lfo
                                { amp: if voice == 0 then 50.0 else if voice == 1 then 90.0 else 130.0
                                , freq:
                                    ( if voice == 0 then
                                        0.08
                                      else if voice == 1 then 0.09
                                      else 0.10
                                    )
                                , phase: 0.0
                                }
                                clockTime + 450.0 +
                                (if voice == 0 then 0.0 else if voice == 1 then 40.0 else 80.0)
                          , q: ff ndg $ pure $
                              ( lfo
                                  { amp: 9.0
                                  , freq: 0.13
                                  , phase:
                                      if voice == 0 then 0.0
                                      else if voice == 1 then 0.66 * pi
                                      else pi * 1.33
                                  }
                                  clockTime + 10.0
                              )
                          }
                          hello
                      , bp0: gain (0.1 + lfo { amp: 0.07, freq: 2.0, phase: pi } clockTime) $ bandpass
                          { freq: ff ndg $ pure $
                              lfo
                                { amp: 200.0
                                , freq:
                                    ( if voice == 0 then
                                        0.08
                                      else if voice == 1 then 0.09
                                      else 0.10
                                    )
                                , phase: 0.0
                                }
                                clockTime + 1050.0 +
                                (if voice == 0 then 0.0 else if voice == 1 then 240.0 else 580.0)
                          , q: ff ndg $ pure $
                              ( lfo
                                  { amp: 9.0
                                  , freq: 0.13
                                  , phase:
                                      if voice == 0 then 0.0
                                      else if voice == 1 then 0.66 * pi
                                      else pi * 1.33
                                  }
                                  clockTime + 10.0
                              )
                          }
                          hello
                      , rawIpt: gain (0.3) $ hello
                      }
                , fback0: gain (volDelayB clockTime)
                    { del0:
                        delay
                          (0.3)
                          { mymix: ref }
                    }
                , fback1: gain (volDelayA clockTime)
                    { del1:
                        delay
                          (0.75)
                          { mymix: ref }
                    }
                }
            }
        )
  )

type FileInfo = { handle :: String, slug :: String }

sounds :: Object BufferUrl
sounds = Object.union (Object.fromFoldable $ map ((/\) <$> _.slug <*> BufferUrl <<< append "https://media.graphcms.com/" <<< _.handle) files)
  ( Object.fromFoldable $ (map <<< map) BufferUrl
      [ "fsbells0" /\ "https://freesound.org/data/previews/442/442746_8208672-lq.mp3"
      , "fsbells1" /\ "https://freesound.org/data/previews/478/478601_8472935-lq.mp3"
      ]
  )

fac :: Int -> Number
fac i = fromMaybe end ((NEA.toArray cumulativeDurations) !! i)

getDuration :: Int -> Number
getDuration i = fromMaybe 2.0 ((NEA.toArray durations) !! i)

cumulativeDurationsToIndices :: Map Number Int
cumulativeDurationsToIndices = Map.fromFoldable $ mapWithIndex (flip (/\)) cumulativeDurations

durationToIndex :: Number -> (Number /\ Int)
durationToIndex =
  maybe (0.0 /\ 0) (\{ key, value } -> key /\ value) <<< (flip Map.lookupLE cumulativeDurationsToIndices)

cumulativeDurations = evalState
  ( traverse
      ( \d -> do
          x <- get
          put (x + d)
          pure x
      )
      durations
  )
  0.0

end = foldl (+) 0.0 durations :: Number
len = NEA.length pitches :: Int

justNotes :: Int -> NonEmptyArray (NoteInFlattenedTime (Note Unit))
justNotes =
  DM.fromMaybe (NEA.fromNonEmpty (shhhh :| []))
    <<< fromArray
    <<< notes

notes :: Int -> Array (NoteInFlattenedTime (Note Unit))
notes voice = Array.sortBy
    (compare `on` (view (unto NoteInFlattenedTime <<< prop (Proxy :: _ "littleStartsAt"))))
    $ fold $ mapWithIndex (map Array.catMaybes <<< map <<< nt2nift voice) pitches

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
  , bigCycleDuration: end
  , littleCycleDuration: end
  , tag: nothing
  }

nt2nift :: Int -> Int -> { | Full } -> Maybe (NoteInFlattenedTime (Note Unit))
nt2nift voice _ { smp, vc } | vc smp /= voice = Nothing
nt2nift voice i { smp, st, vol, rt } = Just
  let
    duration = getDuration i
    startsAt = fac i + st { duration, voice }
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
      , elementsInCycle: len
      , nCycles: 1
      , duration: duration
      , bigCycleDuration: end
      , littleCycleDuration: end
      , tag: nothing
      }

type DurF =
  { duration :: Number
  , voice :: Int
  }
  -> Number

durations :: SubSections Number
durations = sectionsToSubSections durationsFull

durationsFull :: Sections Number
durationsFull =
  -- rau
  3.2
    -- haa
    +> 2.9
    -- vain
    +> 3.5
    -- rau
    +> 5.0
    -- haa
    +> 2.7
    -- kel
    +> 1.8
    -- lo
    +> 1.7
    -- ne
    +> 1.5
    -- soi
    +> 6.0
    --
    -- lap
    +> 3.3
    -- sel
    +> 2.5
    -- le
    +> 2.1
    -- rau
    +> 3.9
    -- ha
    +> 3.0
    -- ne
    +> 2.9
    -- rau
    +> 2.3
    -- ha
    +> 1.6
    -- soi
    +> 6.0
    --
    -- En
    +> 2.9
    -- kel
    +> 1.8
    -- in
    +> 1.4
    -- lau
    +> 3.8
    -- lu
    +> 3.35
    -- rau
    +> 1.7
    -- haa,
    +> 1.5
    -- rau
    +> 1.3
    -- haa
    +> 1.4
    -- tois
    +> 3.5
    -- taa
    +> 10.2
    -- Sei
    +> 1.7
    -- men
    +> 1.7
    -- yl
    +> 1.6
    -- la''
    +> 1.6
    -- jou
    +> 2.3
    -- lun
    +> 2.0
    -- ta''h
    +> 1.8
    -- ti
    +> 2.0
    -- val
    +> 2.7
    -- ke
    +> 2.0
    -- ut
    +> 0.3
    -- taan
    +> 6.2
    -- Kirk
    +> 4.0
    -- kaa
    +> 1.9
    -- na
    +> 1.2
    -- sil
    +> 3.0
    -- miin
    +> 2.9
    -- lap
    +> 1.4
    -- so
    +> 1.2
    -- sen
    +> 1.2
    -- nyt
    +> 0.9
    -- lois
    +> 3.2
    -- taa
    +> 5.0
    -- Maa
    +> 3.0
    -- ri
    +> 1.8
    -- ai
    +> 1.8
    -- nen
    +> 1.8
    -- tuu
    +> 1.8
    -- tii
    +> 1.7
    -- sei
    +> 1.6
    -- men
    +> 1.8
    -- pie
    +> 3.0
    -- nois
    +> 2.0
    -- taan
    +> 10.0
    +> V.empty

type Pitches = (Array { | Full })

pitches :: SubSections Pitches
pitches = sectionsToSubSections pitchesFull

frac val { duration } = duration * val

rauVol :: FoT Unit
rauVol = lcmap unwrap \{ normalizedSampleTime: sampleTime } -> max 0.0 $ calcSlope 0.0 0.1 0.3 0.0 sampleTime

haVol :: Number -> FoT Unit
haVol n = lcmap unwrap \{ normalizedSampleTime: sampleTime } -> max 0.0 $ calcSlope 0.0 n 0.2 0.0 sampleTime

seCelVol :: Number -> FoT Unit
seCelVol d = lcmap unwrap \{ normalizedSampleTime: sampleTime } -> max 0.0 $ calcSlope 0.0 0.3 d 0.0 sampleTime

makePw :: Array (Number /\ Number) -> Number -> Number
makePw arr n = val
  where
  asMap = Map.fromFoldable arr
  lb = Map.lookupLE n asMap
  ub = Map.lookupGE n asMap
  val = maybe (maybe 0.0 _.value ub) (\llb -> maybe llb.value (\uub -> calcSlope llb.key llb.value uub.key uub.value n) ub) lb

vlfo :: Number -> Number -> Number -> Number -> Number
vlfo = vlfo' 0.0

vlfo' :: Number -> Number -> Number -> Number -> Number -> Number
vlfo' ph fq lg lw time = lfo { phase: pi * ph, freq: fq, amp: (lg - lw) * 2.0 } time + lw

ost :: forall event. (Number -> Number) -> FoT event
ost f = lcmap unwrap $ _.sampleTime >>> f

l86v = max 0.0 <<< calcSlope 0.0 1.0 6.0 0.0

pitchesFull :: Sections Pitches
pitchesFull =
  (
    -- rau
    [ nt { smp: "v3s0", vol: rauVol }
    , nt { smp: "v2s0", vol: rauVol }
    , nt { smp: "v1s0", vol: rauVol }
    , nt { smp: "v0s0", vol: rauVol }
    , nt { smp: "v0s0", st: const 0.8, vol: const 0.05 }
    , nt { smp: "v2s0", st: const 0.8, vol: const 0.05 }
    ]
      -- haa
      +>
        [ nt { smp: "v4s1", vol: haVol 0.1 }
        , nt { smp: "v3s1", vol: haVol 0.05 }
        , nt { smp: "v2s1", vol: haVol 0.1 }
        , nt { smp: "v1s1", vol: haVol 0.05 }
        , nt { smp: "v0s1", vol: haVol 0.2 }
        , nt { smp: "v4s1", st: const 0.4, vol: haVol 0.1 }
        , nt { smp: "v0s1", st: const 0.4, vol: haVol 0.3 }
        , nt { smp: "v3s1", st: const 1.5, vol: haVol 0.05 }
        , nt { smp: "v4s1", st: const 1.5, vol: haVol 0.05 }
        ]
      -- vain
      +>
        [ nt { smp: "v5s2", vol: const 0.05 }
        , nt { smp: "v4s2", vol: ost $ vlfo 2.0 0.1 0.05 }
        , nt { smp: "v3s2", vol: const 0.05 }
        , nt { smp: "v2s2", vol: ost $ vlfo 3.0 0.1 0.05 }
        , nt { smp: "v1s2", vol: const 0.05 }
        , nt { smp: "v0s2", vol: ost $ vlfo 5.0 0.1 0.05 }
        ]
      -- rau
      +>
        ( let
            vv = (let pf = makePw ([ 0.0 /\ 0.0, 2.0 /\ 0.4, 4.0 /\ 0.0 ]) in lcmap unwrap \{ sampleTime } -> pf sampleTime * (lfo { amp: 0.2, freq: 4.0, phase: 0.0 } sampleTime + 0.5))
            fadeTo v t = min v <<< calcSlope 0.0 0.0 t v
          in
            [ nt { smp: "v6s3", vol: ost $ fadeTo 0.2 2.3 }
            , nt { smp: "v5s3", vol: ost $ vlfo 2.0 0.1 0.05 }
            , nt { smp: "v4s3", vol: ost $ fadeTo 0.3 2.7 }
            , nt { smp: "v3s3", vol: ost $ vlfo 3.0 0.1 0.05 }
            , nt { smp: "v2s3", vol: ost $ fadeTo 0.5 2.5 }
            , nt { smp: "v1s3", vol: ost $ vlfo 5.0 0.1 0.05 }
            , nt { smp: "v0s3", vol: ost $ fadeTo 0.6 3.0 }
            , nt { smp: "tones:44", vol: vv }
            , nt { smp: "tones:40", vol: vv, st: const 0.4 }
            , nt { smp: "tones:48", vol: vv, st: const 0.8 }
            , nt { smp: "tones:44", vol: vv, st: const 1.2 }
            , nt { smp: "tones:40", vol: vv, st: const 1.6 }
            , nt { smp: "tones:48", vol: vv, st: const 2.0 }
            ]
        )
      -- haa
      +>
        [ nt
            { smp: "v0s4"
            , vol: ost $ max 0.0 <<< calcSlope 0.0 0.7 0.81 0.0
            }
        ]
      -- kel
      +> [ nt { smp: "v1s5" }, nt { smp: "v0s5" }, nt { smp: "tones:110" } ]
      -- lo
      +>
        [ nt { smp: "v3s6", vol: ost $ vlfo 0.3 0.4 0.05 }
        , nt { smp: "v2s6", vol: ost $ vlfo' 0.25 0.3 0.4 0.05 }
        , nt { smp: "v1s6", vol: ost $ vlfo' 0.5 0.3 0.4 0.05 }
        , nt { smp: "v0s6", vol: ost $ vlfo' 1.0 0.3 0.4 0.05 }
        ]
      -- ne
      +>
        [ nt { smp: "v5s7", vol: ost $ vlfo 3.0 0.2 0.05 }
        , nt { smp: "v4s7", vol: ost $ vlfo 4.0 0.2 0.05 }
        , nt { smp: "v3s7", vol: ost $ vlfo 5.0 0.2 0.05 }
        , nt { smp: "v2s7", vol: ost $ vlfo' 1.0 3.0 0.2 0.05 }
        , nt { smp: "v1s7", vol: ost $ vlfo' 1.0 4.0 0.2 0.05 }
        , nt { smp: "v0s7", vol: ost $ vlfo' 1.0 0.5 0.4 0.05 }
        , nt { smp: "tones:62", st: const 1.5 }
        ]
      -- soi
      +>
        [ nt { smp: "v6s8" }
        , nt { smp: "v5s8" }
        , nt { smp: "v4s8" }
        , nt { smp: "v3s8" }
        , nt { smp: "v2s8" }
        , nt { smp: "v1s8" }
        , nt { smp: "v0s8" }
        , nt { smp: "licks1:108" }
        ]
      --
      -- Lap
      +>
        (
          -- abrupt fade up
          let
            pf = makePw ([ 0.0 /\ 0.0, 0.5 /\ 0.2, 0.7 /\ 0.8, 1.0 /\ 0.0 ])
          in
            [ nt { smp: "v3s9", vol: ost pf }
            , nt { smp: "v2s9", vol: ost pf }
            , nt { smp: "v1s9", vol: ost pf }
            , nt { smp: "v0s9", vol: ost pf }
            , nt { smp: "tones:56", st: const 0.3, vol: const 0.3 }
            , nt { smp: "tones:56", st: const 0.6, vol: const 0.1 }
            ]
        )
      -- sel
      -- bump bump bump
      +>
        [ nt { smp: "v3s10", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.3, freq: 1.5 } }
        , nt { smp: "v2s10", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.4, freq: 1.6 } }
        , nt { smp: "v1s10", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.4, freq: 1.7 } }
        , nt { smp: "v0s10", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.6, freq: 1.0 } }
        , nt { smp: "tones:16", vol: seCelVol 0.3, st: const 0.25 }
        , nt { smp: "tones:16", vol: seCelVol 0.5, st: const 0.4 }
        , nt { smp: "tones:16", vol: seCelVol 1.0, st: const 0.65 }
        , nt { smp: "tones:16", vol: seCelVol 1.0, st: const 0.85 }
        ]
      -- le
      -- faster lfo
      +>
        [ nt { smp: "v0s11", vol: ost $ vlfo 2.0 0.18 0.05 }
        , nt { smp: "v1s11", vol: ost $ vlfo 2.3 0.2 0.05 }
        , nt { smp: "v2s11", vol: ost $ vlfo 2.5 0.25 0.05 }
        , nt { smp: "v3s11", vol: ost $ vlfo 2.8 0.3 0.05 }
        , nt { smp: "tones:48", vol: seCelVol 0.4, st: const 0.3 }
        ]
      -- rau
      -- dot dot dot dot
      +>
        [ nt { smp: "v4s12" }
        , nt { smp: "v3s12" }
        , nt { smp: "v2s12" }
        , nt { smp: "v1s12" }
        , nt { smp: "v0s12" }
        , nt { smp: "v4s12", vol: const 0.1, st: const 0.8 }
        , nt { smp: "v3s12", vol: const 0.1, st: const 0.8 }
        , nt { smp: "v2s12", vol: const 0.1, st: const 0.8 }
        , nt { smp: "v1s12", vol: const 0.1, st: const 0.8 }
        , nt { smp: "v0s12", vol: const 0.1, st: const 0.8 }
        , nt { smp: "tones:106" }
        ]
      -- haa,
      -- ok as is
      +>
        [ nt { smp: "v3s13" }
        , nt { smp: "v2s13" }
        , nt { smp: "v1s13" }
        , nt { smp: "v0s13" }
        , nt { smp: "tones:36", st: const 1.0 }
        ]
      -- ne
      +>
        ( let
            pf = makePw ([ 0.0 /\ 0.0, 0.3 /\ 0.3, 0.6 /\ 0.0, 0.8 /\ 0.0, 1.2 /\ 0.8, 1.5 /\ 0.0 ])
            pf2 = makePw [0.0 /\ 0.1, 0.4 /\ 0.4, 0.9 /\ 0.1 ]
          in
            [ nt { smp: "v3s14", vol: ost pf }
            , nt { smp: "v2s14", vol: ost pf }
            , nt { smp: "v1s14", vol: ost pf }
            , nt { smp: "v0s14", vol: ost pf }
            , nt { smp: "tones:40", vol: ost pf2 }
            ]
        )
      --  rau
      +>
        ( let
            pf fctr = makePw ([ 0.0 /\ 1.0, (0.3 * fctr) /\ 0.0, (0.6 * fctr) /\ 1.0, (1.0 * fctr) /\ 0.0 ])
          in
            [ nt { smp: "v3s15", vol: ost $ pf 1.0 }
            , nt { smp: "v2s15", vol: ost $ pf 1.3 }
            , nt { smp: "v1s15", vol: ost $ pf 1.6 }
            , nt { smp: "v0s15", vol: ost $ pf 1.8 }
            , nt { smp: "tones:36", vol: seCelVol 0.4, st: const 0.3 }
            ]
        )
      -- haa
      +>
        [ nt { smp: "v4s16", vol: ost $ vlfo 2.0 0.3 0.05 }
        , nt { smp: "v3s16", vol: ost $ vlfo' 0.2 2.1 0.2 0.05 }
        , nt { smp: "v2s16", vol: ost $ vlfo' 0.3 2.2 0.2 0.05 }
        , nt { smp: "v1s16", vol: ost $ vlfo' 0.4 2.3 0.1 0.05 }
        , nt { smp: "v0s16", vol: ost $ vlfo' 0.5 2.4 0.4 0.05 }
        ]
      -- soi
      +>
        ( let
            coff v t = max 0.0 <<< calcSlope 0.0 v (t * 3.0) 0.0
          in
            [ nt { smp: "v3s17" }
            , nt { smp: "v2s17" }
            , nt { smp: "v1s17" }
            , nt { smp: "v0s17" }
            , nt { smp: "v3s17", st: const 0.3, vol: ost $ coff 0.5 0.4 }
            , nt { smp: "v2s17", st: const 0.3, vol: ost $ coff 0.5 0.4 }
            , nt { smp: "v1s17", st: const 0.3, vol: ost $ coff 0.5 0.4 }
            , nt { smp: "v0s17", st: const 0.3, vol: ost $ coff 0.5 0.4 }
            , nt { smp: "v3s17", st: const 0.7, vol: ost $ coff 0.3 0.2 }
            , nt { smp: "v2s17", st: const 0.7, vol: ost $ coff 0.3 0.2 }
            , nt { smp: "v1s17", st: const 0.7, vol: ost $ coff 0.3 0.2 }
            , nt { smp: "v0s17", st: const 0.7, vol: ost $ coff 0.3 0.2 }
            , nt { smp: "v3s17", st: const 1.2, vol: ost $ coff 0.2 0.9 }
            , nt { smp: "v2s17", st: const 1.2, vol: ost $ coff 0.2 0.9 }
            , nt { smp: "v1s17", st: const 1.2, vol: ost $ coff 0.2 0.9 }
            , nt { smp: "v0s17", st: const 1.2, vol: ost $ coff 0.2 0.9 }
            ---
            , nt { smp: "v3s17", st: const 3.3, vol: ost $ coff 0.9 0.4 }
            , nt { smp: "v2s17", st: const 3.3, vol: ost $ coff 0.9 0.4 }
            , nt { smp: "v1s17", st: const 3.3, vol: ost $ coff 0.9 0.4 }
            , nt { smp: "v0s17", st: const 3.3, vol: ost $ coff 0.9 0.4 }
            , nt { smp: "v3s17", st: const 3.7, vol: ost $ coff 0.4 0.2 }
            , nt { smp: "v2s17", st: const 3.7, vol: ost $ coff 0.4 0.2 }
            , nt { smp: "v1s17", st: const 3.7, vol: ost $ coff 0.4 0.2 }
            , nt { smp: "v0s17", st: const 4.7, vol: ost $ coff 0.4 0.2 }
            , nt { smp: "v3s17", st: const 4.2, vol: ost $ coff 0.2 0.9 }
            , nt { smp: "v2s17", st: const 4.2, vol: ost $ coff 0.2 0.9 }
            , nt { smp: "v1s17", st: const 4.2, vol: ost $ coff 0.2 0.9 }
            , nt { smp: "v0s17", st: const 4.2, vol: ost $ coff 0.2 0.9 }
            , nt { smp: "licks2:54" }
            ]
        )
      --
      -- En
      +>
        [ nt { smp: "v5s18" }
        , nt { smp: "v4s18" }
        , nt { smp: "v3s18" }
        , nt { smp: "v2s18" }
        , nt { smp: "v1s18" }
        , nt { smp: "v0s18" }
        , nt { smp: "tones:128", st: const 0.4 }
        , nt { smp: "tones:128", st: const 0.7 }
        ]
      -- ke
      -- V dip
      +>
        ( let
            pf infl = makePw ([ 0.0 /\ 0.35, infl /\ 0.0, 1.0 /\ 0.35 ])
          in
            [ nt { smp: "v4s19", vol: ost $ pf 0.1 }
            , nt { smp: "v3s19", vol: ost $ pf 0.3 }
            , nt { smp: "v2s19", vol: ost $ pf 0.6 }
            , nt { smp: "v1s19", vol: ost $ pf 1.2 }
            , nt { smp: "v0s19", vol: ost $ pf 1.8 }
            ]
        )
      -- lin
      -- fade off
      +>
        [ nt { smp: "v4s20", vol: const 0.3 }
        , nt { smp: "v3s20", vol: const 0.45 }
        , nt { smp: "v2s20", vol: const 0.3 }
        , nt { smp: "v1s20", vol: const 0.5 }
        , nt { smp: "v0s20", vol: ost $ min 0.5 <<< calcSlope 0.0 0.1 0.5 0.4 }
        ]
      -- lau
      +>
        ( let
            pf infl = makePw ([ 0.0 /\ 0.2, infl /\ 1.0 ])
          in

            [ nt { smp: "v4s21", vol: ost $ pf 1.0 }
            , nt { smp: "v3s21", vol: ost $ pf 1.8 }
            , nt { smp: "v2s21", vol: ost $ pf 1.1 }
            , nt { smp: "v1s21", vol: ost $ pf 0.8 }
            , nt { smp: "v0s21", vol: ost $ pf 0.4 }
            , nt { smp: "tones:72" }
            ]
        )
      -- lu
      +>
        [ nt { smp: "v5s22", vol: const 0.4 }
        , nt { smp: "v4s22", vol: const 0.4 }
        , nt { smp: "v3s22", vol: const 0.4 }
        , nt { smp: "v2s22", vol: const 0.4 }
        , nt { smp: "v1s22", vol: const 0.4 }
        , nt { smp: "v0s22", vol: const 0.4 }
        , nt { smp: "tones:48" }
        ]
      -- rau
      +>
        ( let
            dwn v t = max 0.0 <<< calcSlope 0.0 v t 0.0
          in
            [ nt { smp: "v4s23", vol: ost $ dwn 0.3 1.6 }
            , nt { smp: "v3s23", vol: ost $ dwn 0.3 1.3 }
            , nt { smp: "v2s23", vol: ost $ dwn 0.4 1.5 }
            , nt { smp: "v1s23", vol: ost $ dwn 0.4 1.5 }
            , nt { smp: "v0s23", vol: ost $ dwn 0.5 1.6 }
            , nt { smp: "tones:28", vol: seCelVol 0.4 }
            , nt { smp: "tones:28", vol: seCelVol 0.7, st: const 0.4 }
            ]
        )
      -- haa,
      +>
        [ nt { smp: "v4s24" }
        , nt { smp: "v3s24" }
        , nt { smp: "v2s24" }
        , nt { smp: "v1s24" }
        , nt { smp: "v0s24" }
        , nt { smp: "tones:28", st: const 0.6}
        ]
      -- rau
      +>
        ( let
            dwn v t = max 0.0 <<< calcSlope 0.0 v t 0.0
          in
            [ nt { smp: "v3s25", vol: ost $ dwn 0.3 1.2 }
            , nt { smp: "v2s25", vol: ost $ dwn 0.3 1.2 }
            , nt { smp: "v1s25", vol: ost $ dwn 0.3 1.2 }
            , nt { smp: "v0s25", vol: ost $ dwn 0.3 1.2 }
            , nt { smp: "tones:28", st: const 0.6}
            ]
        )
      -- haa
      +>
        [ nt { smp: "v3s26", vol: ost $ vlfo 3.0 0.1 0.05 }
        , nt { smp: "v2s26", vol: ost $ vlfo 3.0 0.1 0.05 }
        , nt { smp: "v1s26", vol: ost $ vlfo 3.0 0.15 0.05 }
        , nt { smp: "v0s26", vol: ost $ vlfo 3.0 0.2 0.05 }
        , nt { smp: "tones:28", st: const 0.6}
        ]
      -- tois
      +>
        ( let
            dwn v t = max 0.0 <<< calcSlope 0.0 v t 0.0
          in
            [ nt { smp: "v5s27", vol: ost $ dwn 0.4 0.7 }
            , nt { smp: "v4s27", vol: ost $ dwn 0.5 0.7 }
            , nt { smp: "v3s27", vol: ost $ dwn 0.2 0.7 }
            , nt { smp: "v2s27", vol: ost $ dwn 0.7 0.2 }
            , nt { smp: "v1s27", vol: ost $ dwn 0.3 0.4 }
            , nt { smp: "v0s28", vol: ost $ dwn 0.3 0.7 }
            , nt { smp: "v5s27", st: const 0.6, vol: ost $ dwn 0.1 0.5 }
            , nt { smp: "v4s27", st: const 0.6, vol: ost $ dwn 0.1 0.5 }
            , nt { smp: "v3s27", st: const 0.6, vol: ost $ dwn 0.1 0.5 }
            , nt { smp: "v2s27", st: const 0.6, vol: ost $ dwn 0.1 0.5 }
            , nt { smp: "v1s27", st: const 0.6, vol: ost $ dwn 0.1 0.5 }
            , nt { smp: "v0s27", st: const 0.6, vol: ost $ dwn 0.1 0.5 }
            , nt { smp: "licks1:46" }
            ]
        )

      -- taa
      +>
        ( let
            bse ott rte wd bs =   [ nt { smp: "v4s28", st: const ott, vol: ost $ vlfo' 0.1 (rte + 0.8) wd bs }  , nt { smp: "v3s28", st: const ott, vol: ost $ vlfo' 0.2 (rte + 0.4) wd bs } , nt { smp: "v2s28", st: const ott, vol: ost $ vlfo' 0.3 (rte + 0.4) wd bs } , nt { smp: "v1s28", st: const ott, vol: ost $ vlfo' 0.6 rte wd bs } , nt { smp: "v0s28", st: const ott, vol: ost $ vlfo rte wd bs }]
          in
            fold
              [ bse 0.0 2.0 0.1 0.3
              , bse 2.25 4.0 0.2 0.05
              , bse 5.0 0.5 0.4 0.05
              , bse 7.1 4.0 0.2 0.05
              , bse 9.2 2.0 0.1 0.3
              ]
        )
      --
      -- Sei
      +>
        [ nt { smp: "v1s29", vol: ost $ vlfo 2.0 0.4 0.02 }
        , nt { smp: "v0s29", vol: ost $ vlfo 2.0 0.4 0.02 }
        , nt { smp: "licks2:50"}
        ]
      -- men
      +>
        [ nt { smp: "v3s30", vol: ost $ vlfo 2.5 0.2 0.02 }
        , nt { smp: "v2s30", vol: ost $ vlfo 2.2 0.3 0.02 }
        , nt { smp: "v1s30", vol: ost $ vlfo 2.0 0.4 0.02 }
        , nt { smp: "v0s30", vol: ost $ vlfo 2.0 0.4 0.02 }
        ]
      -- yl
      +>
        [ nt { smp: "v5s31", vol: ost $ vlfo 3.4 0.2 0.02 }
        , nt { smp: "v4s31", vol: ost $ vlfo 3.4 0.2 0.02 }
        , nt { smp: "v3s31", vol: ost $ vlfo 3.3 0.3 0.02 }
        , nt { smp: "v2s31", vol: ost $ vlfo 3.3 0.3 0.02 }
        , nt { smp: "v1s31", vol: ost $ vlfo 3.1 0.4 0.02 }
        , nt { smp: "v0s31", vol: ost $ vlfo 3.0 0.4 0.02 }
        ]
      -- la''
      +>
        [ nt { smp: "v7s32", vol: ost $ vlfo 5.0 0.15 0.02 }
        , nt { smp: "v6s32", vol: ost $ vlfo' 0.1 5.0 0.15 0.02 }
        , nt { smp: "v5s32", vol: ost $ vlfo' 0.2 5.0 0.15 0.02 }
        , nt { smp: "v4s32", vol: ost $ vlfo' 0.3 5.0 0.15 0.02 }
        , nt { smp: "v3s32", vol: ost $ vlfo' 0.4 5.0 0.15 0.02 }
        , nt { smp: "v2s32", vol: ost $ vlfo' 0.5 5.0 0.15 0.02 }
        , nt { smp: "v1s32", vol: ost $ vlfo' 0.6 5.0 0.15 0.02 }
        , nt { smp: "v0s32", vol: ost $ vlfo' 0.7 5.0 0.15 0.02 }
        ]
      -- jou
      +>
        [ nt { smp: "v7s33", vol: ost $ vlfo 8.0 0.15 0.02 }
        , nt { smp: "v6s33", vol: ost $ vlfo 6.0 0.15 0.02 }
        , nt { smp: "v5s33", vol: ost $ vlfo 6.0 0.15 0.02 }
        , nt { smp: "v4s33", vol: ost $ vlfo 3.0 0.15 0.02 }
        , nt { smp: "v3s33", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v2s33", vol: ost $ vlfo 1.0 0.15 0.02 }
        , nt { smp: "v1s33", vol: ost $ vlfo 1.0 0.15 0.02 }
        , nt { smp: "v0s33" }
        , nt { smp: "tones:8" }
        ]
      -- lun
      +> [ nt { smp: "v1s34" }, nt { smp: "v0s34" }, nt { smp: "tones:124" } ]
      -- ta''h
      +>
        [ nt { smp: "v7s35", vol: ost $ vlfo 8.0 0.15 0.02 }
        , nt { smp: "v6s35", vol: ost $ vlfo 6.0 0.15 0.02 }
        --, nt { smp: "v5s35", vol: ost $ vlfo 6.0 0.15 0.02 }
        --, nt { smp: "v4s35", vol: ost $ vlfo 3.0 0.15 0.02 }
        -- nt { smp: "v3s35", vol: ost $ vlfo 2.0 0.15 0.02 }
        -- nt { smp: "v2s35", vol: ost $ vlfo 1.0 0.15 0.02 }
        , nt { smp: "v1s35" }
        , nt { smp: "v0s35" }
        , nt { smp: "tones:36" }
        ]
      -- ti
      +>
        ( let
            dwn v t = max 0.0 <<< calcSlope 0.0 v t 0.0
            bse oss =  [ nt { smp: "v5s36", st: const oss, vol: ost $ dwn 0.1 0.8 }, nt { smp: "v4s36", st: const oss, vol: ost $ dwn 0.2 0.8 }, nt { smp: "v3s36", st: const oss, vol: ost $ dwn 0.3 0.8 }, nt { smp: "v2s36", st: const oss, vol: ost $ dwn 0.2 0.8 }, nt { smp: "v1s36", st: const oss, vol: ost $ dwn 0.1 0.8 }, nt { smp: "v0s36", st: const oss, vol: ost $ dwn 0.3 0.8 }]
          in
            fold [ bse 0.0, bse 0.7, bse 1.4, [nt { smp: "tones:72" }] ]
        )
      -- val
      +>
        ( let
            pf fv = makePw ([ 0.0 /\ 0.4, 0.4 /\ 0.05, 0.9 /\ fv ])
          in
            [ nt { smp: "v5s37", vol: ost $ pf 0.1 }
            , nt { smp: "v4s37", vol: ost $ pf 0.2 }
            , nt { smp: "v3s37", vol: ost $ pf 0.1 }
            , nt { smp: "v2s37", vol: ost $ pf 0.3 }
            , nt { smp: "v1s37", vol: ost $ pf 0.2 }
            , nt { smp: "v0s37", vol: ost $ pf 0.4 }
            , nt { smp: "tones:36" }
            ]
        )
      -- ke
      +>
        [ nt { smp: "v3s38" }
        , nt { smp: "v2s38" }
        , nt { smp: "v1s38" }
        , nt { smp: "v0s38" }
        ]
      -- ut
      +> [ nt { smp: "v0s39" } ]
      -- taan
      +>
        [ nt { smp: "v2s40" }
        , nt { smp: "v1s40" }
        , nt { smp: "v0s40" }
        , nt { smp: "licks1:108" }
        ]
      --
      -- Kirk
      +>
        ( let
            dwn v t = max 0.0 <<< calcSlope 0.0 v t 0.0
          in
            [ nt { smp: "v3s41", vol: ost $ dwn 0.3 1.5 }
            , nt { smp: "v2s41", vol: ost $ dwn 0.3 1.5 }
            , nt { smp: "v1s41", vol: ost $ dwn 0.3 1.5 }
            , nt { smp: "v0s41", vol: ost $ dwn 0.3 1.5 }
            , nt { smp: "v3s41", st: const 0.8, vol: ost $ dwn 0.08 1.5 }
            , nt { smp: "v2s41", st: const 0.8, vol: ost $ dwn 0.08 1.5 }
            , nt { smp: "v1s41", st: const 0.8, vol: ost $ dwn 0.08 1.5 }
            , nt { smp: "v0s41", st: const 0.8, vol: ost $ dwn 0.08 1.5 }
            , nt { smp: "fsbells0", vol: lcmap unwrap (_.sampleTime >>> bell0Pw) }
            ]
        )
      -- kaa
      +>
        [ nt { smp: "v4s42", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v3s42", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v2s42", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v1s42", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v0s42", vol: ost $ vlfo 2.0 0.15 0.02 }
        ]
      -- na
      +>
        [ nt { smp: "v3s43", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v2s43", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v1s43", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v0s43", vol: ost $ vlfo 3.5 0.15 0.02 }
        ]
      -- sil
      +>
        [ nt { smp: "v4s44", vol: ost $ vlfo 1.0 0.25 0.2 }
        , nt { smp: "v3s44", vol: ost $ vlfo' 0.3 1.0 0.25 0.2 }
        , nt { smp: "v2s44", vol: ost $ vlfo' 0.6 1.0 0.25 0.2 }
        , nt { smp: "v1s44", vol: ost $ vlfo' 0.9 1.0 0.25 0.2 }
        , nt { smp: "v0s44", vol: ost $ vlfo 1.0 0.25 0.2 }
        ]
      -- miin
      +>
        [ nt { smp: "v4s45" }
        , nt { smp: "v3s45" }
        , nt { smp: "v2s45" }
        , nt { smp: "v1s45" }
        , nt { smp: "v0s45" }
        ]
      -- lap
      +>
        ( let
            pw = makePw [ 0.0 /\ 0.4, 0.4 /\ 0.05, 0.9 /\ 0.3 ]
          in

            [ nt { smp: "v5s46", vol: ost $ pw }
            , nt { smp: "v4s46", vol: ost $ pw }
            , nt { smp: "v3s46", vol: ost $ pw }
            , nt { smp: "v2s46", vol: ost $ pw }
            , nt { smp: "v1s46", vol: ost $ pw }
            , nt { smp: "v0s46", vol: ost $ pw }
            , nt { smp: "licks1:86", vol: ost $ l86v }
            ]
        )
      -- so
      +>
        [ nt { smp: "v5s47" }
        , nt { smp: "v4s47" }
        , nt { smp: "v3s47" }
        , nt { smp: "v2s47" }
        , nt { smp: "v1s47" }
        , nt { smp: "v0s47" }
        ]
      -- sen
      +>
        [ nt { smp: "v5s48", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v4s48", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v3s48", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v2s48", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v1s48", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v0s48", vol: ost $ vlfo 2.0 0.15 0.02 }

        ]
      -- nyt
      +>
        [ nt { smp: "v5s49", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v4s49", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v3s49", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v2s49", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v1s49", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v0s49", vol: ost $ vlfo 3.5 0.15 0.02 }

        ]
      -- lois
      +>
        [ nt { smp: "v5s50" }
        , nt { smp: "v4s50" }
        , nt { smp: "v3s50" }
        , nt { smp: "v2s50" }
        , nt { smp: "v1s50" }
        , nt { smp: "v0s50" }

        -- , nt { smp: "fsbells1", vol: const 0.2 }
        ]
      -- taa
      +>
        [ nt { smp: "v5s51", vol: ost $ vlfo 1.0 0.25 0.2 }
        , nt { smp: "v4s51", vol: ost $ vlfo 0.9 0.25 0.2 }
        , nt { smp: "v3s51", vol: ost $ vlfo 0.8 0.25 0.2 }
        , nt { smp: "v2s51", vol: ost $ vlfo 0.95 0.25 0.2 }
        , nt { smp: "v1s51", vol: ost $ vlfo 1.0 0.25 0.2 }
        , nt { smp: "v0s51", vol: ost $ vlfo 1.1 0.25 0.2 }

        ]
      --
      -- Maa
      +>
        ( let
            dwn v t = max 0.0 <<< calcSlope 0.0 v t 0.0
          in
            [ nt { smp: "v5s52", vol: ost $ dwn 0.3 1.5 }
            , nt { smp: "v4s52", vol: ost $ dwn 0.4 1.5 }
            , nt { smp: "v3s52", vol: ost $ dwn 0.5 1.5 }
            , nt { smp: "v2s52", vol: ost $ dwn 0.2 1.5 }
            , nt { smp: "v1s52", vol: ost $ dwn 0.4 1.5 }
            , nt { smp: "v0s52", vol: ost $ dwn 0.5 1.5 }
            , nt { smp: "tones:44" }
            ]
        )
      -- ri
      +>
        [ nt { smp: "v4s53", vol: ost $ vlfo 2.0 0.15 0.02 }
        , nt { smp: "v3s53", vol: ost $ vlfo' 0.2 2.0 0.15 0.02 }
        , nt { smp: "v2s53", vol: ost $ vlfo' 0.4 2.0 0.15 0.02 }
        , nt { smp: "v1s53", vol: ost $ vlfo' 0.6 2.0 0.15 0.02 }
        , nt { smp: "v0s53", vol: ost $ vlfo' 0.8 2.0 0.15 0.02 }
        ]
      -- ai
      +>
        [ nt { smp: "v5s54", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v4s54", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v3s54", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v2s54", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v1s54", vol: ost $ vlfo 3.5 0.15 0.02 }
        , nt { smp: "v0s54", vol: ost $ vlfo 3.5 0.15 0.02 }
        ]
      -- nen
      +>
        [ nt { smp: "v4s55", vol: ost $ vlfo 0.6 0.3 0.02 }
        , nt { smp: "v3s55", vol: ost $ vlfo' 0.6 0.7 0.3 0.02 }
        , nt { smp: "v2s55", vol: ost $ vlfo 0.5 0.3 0.02 }
        , nt { smp: "v1s55", vol: ost $ vlfo' 0.3 0.4 0.3 0.02 }
        , nt { smp: "v0s55", vol: ost $ vlfo' 0.2 0.2 0.3 0.02 }
        ]
      -- tuu
      +>
        [ nt { smp: "v6s56", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.7, freq: 0.8 } }
        , nt { smp: "v5s56", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.7, freq: 0.8 } }
        , nt { smp: "v4s56", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.7, freq: 0.8 } }
        , nt { smp: "v3s56", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.7, freq: 0.8 } }
        , nt { smp: "v2s56", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.7, freq: 0.8 } }
        , nt { smp: "v1s56", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.7, freq: 0.8 } }
        , nt { smp: "v0s56", vol: ost $ max 0.0 <<< lfo { phase: 0.0, amp: 0.7, freq: 0.8 } }
        , nt { smp: "tones:8" }
        ]
      -- tii
      +>
        [ nt { smp: "v2s57" }
        , nt { smp: "v1s57" }
        , nt { smp: "v0s57" }
        ]
      -- sei
      +>
        ( let
            base ottt = [ nt { smp: "v6s58", st: const ottt }, nt { smp: "v5s58", st: const ottt }, nt { smp: "v4s58", st: const ottt }, nt { smp: "v3s58", st: const ottt }, nt { smp: "v2s58", st: const ottt }, nt { smp: "v1s58", st: const ottt }, nt { smp: "v0s58", st: const ottt }]
          in
            fold [ base 0.0, base 1.9 ]
        )
      -- men
      +>
        [ nt { smp: "v4s59" }
        , nt { smp: "v3s59" }
        , nt { smp: "v2s59" }
        , nt { smp: "v1s59" }
        , nt { smp: "v0s59" }
        ]
      -- pie
      +>
        [ nt { smp: "v5s60" }
        , nt { smp: "v4s60" }
        , nt { smp: "v3s60" }
        , nt { smp: "v2s60" }
        , nt { smp: "v1s60" }
        , nt { smp: "v0s60" }
        ]
      -- nois
      +>
        ( let
            bse xy = [nt { smp: "v1s61", st: const xy }, nt { smp: "v0s61", st: const xy }]
          in
            fold [ bse 0.0, bse 2.6 ]
        )
      -- taan
      +>
        [ nt { smp: "v5s62" }
        , nt { smp: "v4s62" }
        , nt { smp: "v3s62" }
        , nt { smp: "v2s62" }
        , nt { smp: "v1s62" }
        , nt { smp: "v0s62" }
        , nt { smp: "licks1:20", vol: lcmap unwrap (_.sampleTime >>> lastPw) }
        , nt { smp: "licks1:20", vol: lcmap unwrap (_.sampleTime >>> lastPw), st: const 3.0 }
        , nt { smp: "licks1:20", vol: lcmap unwrap (_.sampleTime >>> lastPw), st: const 9.0 }
        ]
      +> V.empty
  )

lastPw = makePw [ 0.0 /\ 0.1, 4.0 /\ 1.0, 7.0 /\ 0.1 ]
bell0Pw = makePw [ 0.0 /\ 0.0, 4.0 /\ 1.0 ]

files :: Array FileInfo
files =
  [ { handle: "pGWoNQ9XQMiJnIqITbJ1"
    , slug: "tones:110" -- C#5
    }
  , { handle: "e1hCS6rQGSpAYyccEbns"
    , slug: "tones:114" -- C#5
    }
  , { handle: "o8cDVgvmQ0mK7ArFIOms"
    , slug: "tones:62" -- C#4
    }
  , { handle: "lOkYOEeQxaeQ7OqUMPW1"
    , slug: "tones:56" -- C#4
    }
  , { handle: "YxTSDMIJQ2vPJx8C3bmf"
    , slug: "tones:90" -- G#4
    }
  , { handle: "9Fyj5aYTLSe2K06C09Z8"
    , slug: "tones:72" -- E4
    }
  , { handle: "cT9jlwR5S2OcWhGjLeVi"
    , slug: "tones:118" -- C#5
    }
  , { handle: "KkHYZDBeQKFKLLXYtyrl"
    , slug: "tones:124" -- F#5
    }
  , { handle: "pjg2F2GjSAyOZh6zYJNy"
    , slug: "tones:132" -- F#5
    }
  , { handle: "M5ydud6ORniM8hujEjXq"
    , slug: "tones:106" -- C#5
    }
  , { handle: "DJMgNB8ThSQz22ccLs99"
    , slug: "tones:128" -- F#5
    }
  , { handle: "U576RnDESWucO9ULiAM6"
    , slug: "tones:36" -- A3
    }
  , { handle: "bmbgNXO7RBaOp8e1OTsF"
    , slug: "tones:98" -- G#4
    }
  , { handle: "VK6DdamSWSlQ6v7h4u4K"
    , slug: "tones:48" -- B3
    }
  , { handle: "Rts4xwYRD2e2DkE99Jz8"
    , slug: "tones:102" -- C#5
    }
  , { handle: "dESoXHaZQOm0X0H5LM06"
    , slug: "tones:16" -- D3
    }
  , { handle: "JyhN1WEKRpWejWHC9H4Q"
    , slug: "tones:20" -- D3
    }
  , { handle: "N0va87XQHqs8UKUqhcpd"
    , slug: "tones:68" -- E4
    }
  , { handle: "ogSw7MeQFihi3bsMZfaV"
    , slug: "tones:82" -- G#4
    }
  , { handle: "LM9nmInRV2YWewqsXjSg"
    , slug: "tones:44" -- B3
    }
  , { handle: "v42KQBNkQ263nZdnSqKx"
    , slug: "tones:8" -- D2
    }
  , { handle: "1NoCqOpQJiecyU53HzFQ"
    , slug: "tones:76" -- E4
    }
  , { handle: "E3p9tOMTQ96BriLkaZ0U"
    , slug: "tones:86" -- G#4
    }
  , { handle: "2pIP3ARtS12USId6omC8"
    , slug: "tones:24" -- D3
    }
  , { handle: "lXIVzsatRci3RfV80iUy"
    , slug: "tones:94" -- G#4
    }
  , { handle: "NZv14uWcSUukpbTh9HKN"
    , slug: "tones:52" -- C#4
    }
  , { handle: "epvCTxeyQ42sAohMczBA"
    , slug: "tones:40" -- B3
    }
  , { handle: "j7FeN5ZARGGo0WVzQa5A"
    , slug: "tones:12" -- D2
    }
  , { handle: "gzpF8mRRQiGI4PPObiNf"
    , slug: "tones:28" -- A3
    }
  , { handle: "VVDCojBaRmabsqW6m7Yp"
    , slug: "tones:32" -- A3
    }
  , { handle: "0it4I8HRkuR27U9az53c"
    , slug: "tones:4" -- D2
    }
  , { handle: "QcsBV7b0S4eDXxBXdT24"
    , slug: "licks2:44"
    }
  , { handle: "S5BpterMRVWOyQRKFOx9"
    , slug: "licks2:10"
    }
  , { handle: "rPtXg1PQ0qTHjOZ8bcPO"
    , slug: "licks2:54"
    }
  , { handle: "Q8Iu9AkR6yk3zEkdHewM"
    , slug: "licks1:116"
    }
  , { handle: "I0GM5kT0THaLweZs250c"
    , slug: "licks2:40"
    }
  , { handle: "nLel2mqMTbqRkGc3t60D"
    , slug: "licks1:108"
    }
  , { handle: "yDVRpCEXRlud5tgdIDqh"
    , slug: "licks2:58"
    }
  , { handle: "CkVVPjbAQGZaXjDTLi3b"
    , slug: "licks2:36"
    }
  , { handle: "0oS9pblQ6wgtI81UB0wT"
    , slug: "licks2:50"
    }
  , { handle: "byAPSlk6Q86OeO32ZeXW"
    , slug: "licks1:100"
    }
  , { handle: "5AFWNHv8R2rTDIezLVby"
    , slug: "licks1:90"
    }
  , { handle: "Ruta3AQfu3zgHc8Pjjgk"
    , slug: "licks1:62"
    }
  , { handle: "Z6KIi8JlRkKXPxpIJXDN"
    , slug: "licks2:18"
    }
  , { handle: "MFqjKKnnRPewnZOnCk7J"
    , slug: "licks2:14"
    }
  , { handle: "ZoaeQG5QvarKqZvANrGB"
    , slug: "licks2:28"
    }
  , { handle: "zhTNG93SQgqHo5wrPYkm"
    , slug: "licks1:112"
    }
  , { handle: "LDOu6wFRoOOV7kv7R7r2"
    , slug: "licks1:42"
    }
  , { handle: "h0AgWMj4TFyA7yiD7jEj"
    , slug: "licks1:86"
    }
  , { handle: "sobq0PNgQWar4l1jBHQn"
    , slug: "licks1:104"
    }
  , { handle: "hQgXCmV0RvmB5FSwYwr5"
    , slug: "licks2:22"
    }
  , { handle: "478YIc4nTQshmU39R0xQ"
    , slug: "licks2:6"
    }
  , { handle: "206EgFrQdq92ybfdTitf"
    , slug: "licks2:32"
    }
  , { handle: "TP0qIJlvStie9yBkPMuB"
    , slug: "licks1:66"
    }
  , { handle: "Up6A1gBSyNPsPyoBANWQ"
    , slug: "licks1:70"
    }
  , { handle: "hnPJVmoR8e2CxwZ8JV4A"
    , slug: "licks1:98"
    }
  , { handle: "8ii8QiOTUWkAFl65Rg2k"
    , slug: "licks1:8"
    }
  , { handle: "WlVRsEmcSIGxDK8CIuCW"
    , slug: "licks1:50"
    }
  , { handle: "XvV2FWz4QniN4k7GFzUq"
    , slug: "licks1:58"
    }
  , { handle: "jJLOI3ivRJqUUsD1qjzR"
    , slug: "licks1:26"
    }
  , { handle: "zh6MmgdSfCoW7HmXBm2a"
    , slug: "licks1:82"
    }
  , { handle: "jDP30L12TpKNj0BG4ryO"
    , slug: "licks1:54"
    }
  , { handle: "LnOIfiZUQtO69dYX8zEy"
    , slug: "licks1:40"
    }
  , { handle: "e8JUmAirRv22bcAkzBcN"
    , slug: "licks1:12"
    }
  , { handle: "EcVgDlfUQGuItzwYWaF1"
    , slug: "licks1:4"
    }
  , { handle: "kF1SO4tSEiQig3VRJuVq"
    , slug: "licks1:30"
    }
  , { handle: "fddyDTMDSBe4W1nB83gS"
    , slug: "licks1:34"
    }
  , { handle: "WuI1MZYYR5KdYwuvKv40"
    , slug: "licks1:16"
    }
  , { handle: "OM8jtmGdRMKsNMDxJhTO"
    , slug: "licks1:46"
    }
  , { handle: "ylePiCITT6ChV30EsU11"
    , slug: "licks1:74"
    }
  , { handle: "p3O9WdehS5G8dx3kdGBg"
    , slug: "licks1:78"
    }
  , { handle: "42qdKEoPQK6jgEyAoiY0"
    , slug: "licks1:20"
    }
  , { handle: "3WAh3DtwSZyOur7W45O0"
    , slug: "v7s35"
    }
  , { handle: "Y9tMXpN2TNi0fYEAlKiq"
    , slug: "v7s33"
    }
  , { handle: "C03HmUcaSRStTqrdEFnV"
    , slug: "v7s32"
    }
  , { handle: "OLHHDTKLR0GA8VmFQGGO"
    , slug: "v6s56"
    }
  , { handle: "stx90FCdRySGnUjdJPRi"
    , slug: "v6s58"
    }
  , { handle: "0dCquBFMQ7SF7gqyP3gB"
    , slug: "v6s32"
    }
  , { handle: "N8cenOf6Rt2d8NJNOyPw"
    , slug: "v6s33"
    }
  , { handle: "fxgKgb8QsiP35Ft5J5m0"
    , slug: "v6s35"
    }
  , { handle: "QLSvjfiQ5arJxq4f7Fwk"
    , slug: "v6s3"
    }
  , { handle: "kf7n1BM4Q7QPJQmmjz8O"
    , slug: "v6s8"
    }
  , { handle: "HBMRr3CNQPamTeu6RbRd"
    , slug: "v5s3"
    }
  , { handle: "ooCPIcqoS1GVVC6qZD5Y"
    , slug: "v5s35"
    }
  , { handle: "3GV5xo3VReSrEvPdDYdV"
    , slug: "v5s58"
    }
  , { handle: "b554IJhDSHaUriDo2e6j"
    , slug: "v5s50"
    }
  , { handle: "ygnkLD7aR866gtKnTydY"
    , slug: "v5s37"
    }
  , { handle: "y0Uw03iSoW1Y36wBwYte"
    , slug: "v5s56"
    }
  , { handle: "7J4MNXPhS9afU49ufNOz"
    , slug: "v5s27"
    }
  , { handle: "Jw6YnLC7Qr9zYqGRWwFd"
    , slug: "v5s18"
    }
  , { handle: "Vgg37l93RnuMHsuddhi9"
    , slug: "v5s62"
    }
  , { handle: "gvqipRPSQCJ6mpHX3sRW"
    , slug: "v5s46"
    }
  , { handle: "c6PruSlQQJGLvqekXLaB"
    , slug: "v5s36"
    }
  , { handle: "yIOdYzUpS7GjGgiQytZQ"
    , slug: "v5s61"
    }
  , { handle: "Fr7UBVfuS2WM5LY1PDhu"
    , slug: "v5s49"
    }
  , { handle: "V0qMjysTQpGLFAbjaFN9"
    , slug: "v5s48"
    }
  , { handle: "J5UmQ4FYT6BIYyHbTmsy"
    , slug: "v5s32"
    }
  , { handle: "xAXVEe1TK62sMyZ3QytX"
    , slug: "v5s60"
    }
  , { handle: "A4oXC0HwQSGhrubwSS7s"
    , slug: "v5s51"
    }
  , { handle: "Npm78t5JQcWsjvJ80iwi"
    , slug: "v5s52"
    }
  , { handle: "wvEdmKzQH5pYDsnmkDwo"
    , slug: "v5s47"
    }
  , { handle: "oaYpITgRYaDihvsQhOA1"
    , slug: "v5s7"
    }
  , { handle: "spEmG1CdSnz8odgeygUw"
    , slug: "v5s54"
    }
  , { handle: "Nxzg6zkmT7CBSfPMJ202"
    , slug: "v5s31"
    }
  , { handle: "cLYkNmpHSrOviL3ybIcp"
    , slug: "v5s33"
    }
  , { handle: "UECCIFSuQHeMADOLjB3X"
    , slug: "v5s2"
    }
  , { handle: "cLSVegWhQRnMMEM2abuQ"
    , slug: "v5s22"
    }
  , { handle: "RzzW99aYTJCAbwyxT05B"
    , slug: "v5s8"
    }
  , { handle: "6V6SDJwhTzqk8YixXTil"
    , slug: "v4s56"
    }
  , { handle: "ZJGFhWAFQ62PcRNp75AN"
    , slug: "v4s44"
    }
  , { handle: "E8bRD4ZSGq0YYHOJOTyQ"
    , slug: "v4s55"
    }
  , { handle: "jlbHknfWSsukXWcctLPL"
    , slug: "v4s60"
    }
  , { handle: "wVMI140YT9mKkJG5dQYd"
    , slug: "v4s37"
    }
  , { handle: "Mdg5G22ISNG3KkJxzHWw"
    , slug: "v4s51"
    }
  , { handle: "VUCT6a5IQwmLVAm61uWE"
    , slug: "v4s45"
    }
  , { handle: "YXGIr5aRrCcl2KrsK8EX"
    , slug: "v4s32"
    }
  , { handle: "IDq29zSBRv2gd7rmc3WB"
    , slug: "v4s31"
    }
  , { handle: "UAfr6piS5yoRNeKgosD4"
    , slug: "v4s48"
    }
  , { handle: "rtUyBXlJRUOYSwfwE9Ot"
    , slug: "v4s28"
    }
  , { handle: "8ORHnyTfWp2G8uZPecnw"
    , slug: "v4s47"
    }
  , { handle: "6tnA6ELQyGoCXLHqpfZU"
    , slug: "v4s50"
    }
  , { handle: "oD5YYIutQCeG9j3x7AU6"
    , slug: "v4s27"
    }
  , { handle: "LZjBFmrTSWokbAde5KWA"
    , slug: "v4s53"
    }
  , { handle: "drqSCQIXRr2WcHVVnkMA"
    , slug: "v4s23"
    }
  , { handle: "3RndBlEoSoaBPoBcckXu"
    , slug: "v4s24"
    }
  , { handle: "OcxXh6xQo2SokXesOJig"
    , slug: "v4s59"
    }
  , { handle: "PfVd2iFrTPOXZtRgNtez"
    , slug: "v4s61"
    }
  , { handle: "T3XxSA9pT3KBgcHU7tLP"
    , slug: "v4s36"
    }
  , { handle: "yIYEpDRnSo8EcheGjhsw"
    , slug: "v4s22"
    }
  , { handle: "0RTdjCQ52sbazDz06wzA"
    , slug: "v4s62"
    }
  , { handle: "9K9fonJSbe03yzGsC8Ga"
    , slug: "v4s2"
    }
  , { handle: "CnOZIruPQYGLlrNaqAVM"
    , slug: "v4s20"
    }
  , { handle: "HHEbXy4PTCaIfx7bCtJ1"
    , slug: "v4s16"
    }
  , { handle: "jTKgab8DTo2XF2pgZLLR"
    , slug: "v4s54"
    }
  , { handle: "3Xvzx7zdSXKZC7aCmvmF"
    , slug: "v4s33"
    }
  , { handle: "MtplnekSSUeCZgh4CtHX"
    , slug: "v4s1"
    }
  , { handle: "LYR1sobCTCCPYfdoHpk2"
    , slug: "v4s52"
    }
  , { handle: "GnAaYgUyRZ6rHUY2YUpQ"
    , slug: "v4s49"
    }
  , { handle: "FN0Nq3RRYOal409uNeEQ"
    , slug: "v4s7"
    }
  , { handle: "6PmEiWlOQYSqKpC26xkp"
    , slug: "v4s46"
    }
  , { handle: "2A1lSQL4ToieRPA6VkvD"
    , slug: "v4s21"
    }
  , { handle: "Ww19IUmPS26nu7JCtjSg"
    , slug: "v4s12"
    }
  , { handle: "pWW2OTSiJOYP9niISuAz"
    , slug: "v4s8"
    }
  , { handle: "qrZm6RDVTn6taNLae5L2"
    , slug: "v4s35"
    }
  , { handle: "ysV0bfePSCeYq348546W"
    , slug: "v4s19"
    }
  , { handle: "WRQMZcgT4e6uiduF6auG"
    , slug: "v4s58"
    }
  , { handle: "ijXXxQ2q8Oe9d8sMSQw6"
    , slug: "v4s3"
    }
  , { handle: "SqBgBHo1Ta6d3VQOsQdQ"
    , slug: "v4s18"
    }
  , { handle: "L3egmTuwRVKnX2E6YMl0"
    , slug: "v4s42"
    }
  , { handle: "CorQhxoGSO6RphBloWed"
    , slug: "v3s60"
    }
  , { handle: "6K1rfsNASgmJDjpjsyUE"
    , slug: "v3s61"
    }
  , { handle: "FOcsOMu1RK6fJPMAS7rO"
    , slug: "v3s58"
    }
  , { handle: "0gqRzZlBRPuxZt1nXGGl"
    , slug: "v3s62"
    }
  , { handle: "fUV8TkTzeSe3fdL8LtbA"
    , slug: "v3s59"
    }
  , { handle: "EgnEd5T2u7dJh49AhdQy"
    , slug: "v3s56"
    }
  , { handle: "JCyaB0DQSAOPvk4xiqkN"
    , slug: "v3s54"
    }
  , { handle: "BwccQtvuQECKCGxxcDi2"
    , slug: "v3s50"
    }
  , { handle: "4LLZnG8CSnOsBRu58cP6"
    , slug: "v3s30"
    }
  , { handle: "SwGYguXRw2vlIx4wJvfe"
    , slug: "v3s46"
    }
  , { handle: "8EIHhjUSQGAYdGxkDJ8A"
    , slug: "v3s8"
    }
  , { handle: "pphtEJ1mTPWKzkItRTmM"
    , slug: "v3s33"
    }
  , { handle: "WIycyW2TQ32k1nNLh7k4"
    , slug: "v3s38"
    }
  , { handle: "RCTCnBE3SOeiI6QgeK2a"
    , slug: "v3s53"
    }
  , { handle: "rVBnEhIYRyeZwLiZHAUz"
    , slug: "v3s51"
    }
  , { handle: "tfGSwf6RnuwpgiMo7X8A"
    , slug: "v3s42"
    }
  , { handle: "PmGsMA2oQued2ACinahx"
    , slug: "v3s47"
    }
  , { handle: "jDFqjixnQeSFdtBWfSil"
    , slug: "v3s41"
    }
  , { handle: "OGyRZVYTzye0rnUCH9mg"
    , slug: "v3s35"
    }
  , { handle: "jf8Nq8fCTuCOVpDBHuMA"
    , slug: "v3s48"
    }
  , { handle: "EVjbXfONQjiXyI4BiWOS"
    , slug: "v3s55"
    }
  , { handle: "6y5tTCSCTpCPYtWyfji9"
    , slug: "v3s28"
    }
  , { handle: "FJm2K8S7TxCzItJSKJID"
    , slug: "v3s43"
    }
  , { handle: "Rb4UmUlcSlir9BmgT5iC"
    , slug: "v3s10"
    }
  , { handle: "fnkWwqLQq6Dn8UR2fWOQ"
    , slug: "v3s31"
    }
  , { handle: "z3tgxFBWThyzQoAkkOq4"
    , slug: "v3s49"
    }
  , { handle: "VyD9lSQUS0yJHQmO5XDU"
    , slug: "v3s25"
    }
  , { handle: "U5zGML7pSvWoccyEGzaI"
    , slug: "v3s23"
    }
  , { handle: "EYMSUizlRp2ECHCHlIpJ"
    , slug: "v3s26"
    }
  , { handle: "bV7h7gcRbmQltBVvBvgA"
    , slug: "v3s27"
    }
  , { handle: "XWajhSwlRPGJx7TUkgnL"
    , slug: "v3s36"
    }
  , { handle: "mKoBX6SHmmWXF8H0BwtA"
    , slug: "v3s3"
    }
  , { handle: "IkXKWdoJS6SoHETbqphI"
    , slug: "v3s20"
    }
  , { handle: "BgZwJNFjQ9aWfnNrIK9b"
    , slug: "v3s21"
    }
  , { handle: "CE1gsOivS1ydH2htOmOp"
    , slug: "v3s22"
    }
  , { handle: "YpNzY5PDRxOSVhRSPGSy"
    , slug: "v3s13"
    }
  , { handle: "7XSskICaS9OrUSWB1gpE"
    , slug: "v3s9"
    }
  , { handle: "Z7pk52XTT9aiep9P4nQK"
    , slug: "v3s44"
    }
  , { handle: "gUUtR8V4RX6TKpNfXf69"
    , slug: "v3s37"
    }
  , { handle: "JekGYUGShyHTOFXCeTfW"
    , slug: "v3s7"
    }
  , { handle: "Dl50wDugSsmzQWMrmT5s"
    , slug: "v3s52"
    }
  , { handle: "GA7FPLqyQxONDvGpIr5I"
    , slug: "v3s11"
    }
  , { handle: "nZE4xnKMSXiMaLg2zQcO"
    , slug: "v3s32"
    }
  , { handle: "JjBkJ7DRwaeUxZ0LrLsv"
    , slug: "v3s2"
    }
  , { handle: "VGlVKmRQXGf6qr0CTrvg"
    , slug: "v3s14"
    }
  , { handle: "R5FQaO2XQnKkKWryWCiP"
    , slug: "v3s24"
    }
  , { handle: "hoWUoDayQFeGBoAl75hp"
    , slug: "v3s15"
    }
  , { handle: "FSMhb7SMSsSeJYSx31oM"
    , slug: "v3s16"
    }
  , { handle: "Ize5leROQgmMRhRF0uAL"
    , slug: "v3s12"
    }
  , { handle: "KOVqRM0Q7WiuNSetzDhR"
    , slug: "v3s18"
    }
  , { handle: "bAkU9RyyTgaLOleuGiCc"
    , slug: "v3s45"
    }
  , { handle: "Yb97YXRPT3yMJZJQPGPS"
    , slug: "v3s6"
    }
  , { handle: "Ys5wP5jTOHdtuvVPwbtQ"
    , slug: "v3s19"
    }
  , { handle: "AwaWlewVTw4G7EPIb0g8"
    , slug: "v3s17"
    }
  , { handle: "2MxCYfOoRdGvOk7MU4JK"
    , slug: "v3s1"
    }
  , { handle: "REqD9vQomm9GfW0W4vPw"
    , slug: "v3s0"
    }
  , { handle: "3nN9Qsc4Tay7B7ORgWs7"
    , slug: "v2s61"
    }
  , { handle: "7Iafp4RQAORt9qlIw6u1"
    , slug: "v2s33"
    }
  , { handle: "RZYLfG2HRKmMaLhEd9I7"
    , slug: "v2s35"
    }
  , { handle: "R7VU0y4HTPy4LaGxFXNE"
    , slug: "v2s62"
    }
  , { handle: "lITaXUuLRWMhBjWcFHZO"
    , slug: "v2s53"
    }
  , { handle: "Ayv9T4ERU62jA4MJwOMI"
    , slug: "v2s43"
    }
  , { handle: "NLtSL79cTHa6MpoDpD5I"
    , slug: "v2s48"
    }
  , { handle: "IQtIOspHTUWvxjm9y5ys"
    , slug: "v2s44"
    }
  , { handle: "FzsSkRAqT7myAetVfXNE"
    , slug: "v2s51"
    }
  , { handle: "jyAKEhpHRiWT2a2NLwDf"
    , slug: "v2s42"
    }
  , { handle: "n5pD88M2S4mTkqqfXylC"
    , slug: "v2s57"
    }
  , { handle: "byGS1Q43RoGtecqXASJI"
    , slug: "v2s46"
    }
  , { handle: "4x8GdkTNRCmLRrWtnG9O"
    , slug: "v2s41"
    }
  , { handle: "4iN9QC8PSaWCzm5Q3z00"
    , slug: "v2s60"
    }
  , { handle: "j2okwf49SmGkyD4NVMW6"
    , slug: "v2s36"
    }
  , { handle: "w1w4jD40RzuAyeXmDujm"
    , slug: "v2s58"
    }
  , { handle: "5UtKevVcTqMMvjCME8iQ"
    , slug: "v2s59"
    }
  , { handle: "rlfTh7odSOy6jitPZRzq"
    , slug: "v2s31"
    }
  , { handle: "rzrb61rWRmGQUK9fEYeG"
    , slug: "v2s50"
    }
  , { handle: "hlvJ2Rr7T4eSAfergkzq"
    , slug: "v2s52"
    }
  , { handle: "WQ1xHkgmRl2BKDROGGs3"
    , slug: "v2s47"
    }
  , { handle: "7PzhLDZTSaW0vxEmDdaQ"
    , slug: "v2s54"
    }
  , { handle: "PbJOo53YRDWE2REqcCx8"
    , slug: "v2s55"
    }
  , { handle: "Bt0fFdKkS82WKoNk3qW0"
    , slug: "v2s45"
    }
  , { handle: "cvkvVqlmQhioU9M0WyV5"
    , slug: "v2s30"
    }
  , { handle: "I94nCf5MRc29XLOt9n7s"
    , slug: "v2s56"
    }
  , { handle: "3rBa9iZSqGtl2l15GStg"
    , slug: "v2s37"
    }
  , { handle: "q9P83XHvSYu0i6IVu6tQ"
    , slug: "v2s38"
    }
  , { handle: "vnbgHiNISDuQ5KX8HJoO"
    , slug: "v2s49"
    }
  , { handle: "8Kfixi7DRrqcWGUEyaKl"
    , slug: "v2s32"
    }
  , { handle: "gwvZyaVFQOetbs0Ek4Al"
    , slug: "v2s40"
    }
  , { handle: "m4vwspgKTxOFmpTdXLZz"
    , slug: "v2s28"
    }
  , { handle: "5vBSt7FFTqqTjSuy4aYu"
    , slug: "v2s19"
    }
  , { handle: "lhEnLpHHSeuLfzU4V43i"
    , slug: "v2s22"
    }
  , { handle: "BQC6qNdhQOmcCDDxT1gw"
    , slug: "v2s15"
    }
  , { handle: "u1eRZHMR5ZGOq5IQgkAQ"
    , slug: "v2s2"
    }
  , { handle: "mHTdIfg5TUCU9JqM202K"
    , slug: "v2s16"
    }
  , { handle: "RmEv3r0BRfKrrZmxRv6B"
    , slug: "v2s17"
    }
  , { handle: "bJNNSdF0SLeBQPI6AVXe"
    , slug: "v2s25"
    }
  , { handle: "OWFpJJWtTuePXJ4qnmFO"
    , slug: "v2s20"
    }
  , { handle: "17ncSKVDRE2VZTbm95Xn"
    , slug: "v2s1"
    }
  , { handle: "mOyKRH4eQHWrECMMeY5Q"
    , slug: "v2s26"
    }
  , { handle: "DS74xuVSBu83QwtB3CIM"
    , slug: "v2s13"
    }
  , { handle: "zPlSGcgPRIqaAJpUeCfh"
    , slug: "v2s7"
    }
  , { handle: "Dx9Q5fmcSSSQnu8aPGqw"
    , slug: "v2s11"
    }
  , { handle: "RhIVw3LwShyBy5vZBndj"
    , slug: "v2s3"
    }
  , { handle: "AS70i9PSTA6zTBCUJxR6"
    , slug: "v2s21"
    }
  , { handle: "qtPLTToqQWO0MXgpR7Rn"
    , slug: "v2s23"
    }
  , { handle: "xggJQ6uETsX6ivgl8LWT"
    , slug: "v2s8"
    }
  , { handle: "hPyWIcDiT9eSJOqKxZ3P"
    , slug: "v2s27"
    }
  , { handle: "GRe7tjjoRVyEJJCBeeoT"
    , slug: "v2s10"
    }
  , { handle: "ki1K0SNaQZuNNiOVby2q"
    , slug: "v2s18"
    }
  , { handle: "Pq5VT9NFRvCLyzxDIC8N"
    , slug: "v2s12"
    }
  , { handle: "jT0Zp4siQWmhtJdG5qnb"
    , slug: "v2s9"
    }
  , { handle: "6pSSCmtzROW75Z9uVKbd"
    , slug: "v2s24"
    }
  , { handle: "qeBnJbpS6qmGd34EHxNa"
    , slug: "v2s6"
    }
  , { handle: "qbgaL7SXRWG8HTQgh0Ux"
    , slug: "v2s14"
    }
  , { handle: "HbtsNIbRjOpwS1FMaOdn"
    , slug: "v2s0"
    }
  , { handle: "iGIEC6DMRCCcdZQrvuF4"
    , slug: "v1s61"
    }
  , { handle: "FO2JjWlgQmesxeFHXxWB"
    , slug: "v1s57"
    }
  , { handle: "mQK6t8AiRESwQgbFwHE9"
    , slug: "v1s58"
    }
  , { handle: "41Lwtq6QJK4w1MSDKYPQ"
    , slug: "v1s53"
    }
  , { handle: "huAeMkaFTkadQdcJjULb"
    , slug: "v1s46"
    }
  , { handle: "hXUD5A3sSxEpZMEnDEWM"
    , slug: "v1s51"
    }
  , { handle: "duSN0lfMSBqaC2DoFwoM"
    , slug: "v1s48"
    }
  , { handle: "7d0th6YIQf2duelvUz1x"
    , slug: "v1s43"
    }
  , { handle: "2q4YhbwdR6WlvXYHOhUZ"
    , slug: "v1s50"
    }
  , { handle: "WGWyxZjT7aZZYCUQgeg5"
    , slug: "v1s62"
    }
  , { handle: "1xTXzWX8TLVpssjUfho8"
    , slug: "v1s59"
    }
  , { handle: "tJH0CPIVQLKIj6XHy1qc"
    , slug: "v1s60"
    }
  , { handle: "9NMhb7FqT1ikjHvvJzvP"
    , slug: "v1s56"
    }
  , { handle: "pzBxCVeMS4KkFwVu6dHq"
    , slug: "v1s54"
    }
  , { handle: "yP4N6wC1QtyE7OnoYyNF"
    , slug: "v1s55"
    }
  , { handle: "wknJM9QKTyyWWmCZfKHv"
    , slug: "v1s47"
    }
  , { handle: "WYiDKifSueZ3bYDNdBUp"
    , slug: "v1s52"
    }
  , { handle: "pQFUfnQSm6J7FcQXh20Q"
    , slug: "v1s45"
    }
  , { handle: "gFSNk4ORSoCqFZ78PctW"
    , slug: "v1s49"
    }
  , { handle: "t3CD5YTlSFuRhYdNyNYR"
    , slug: "v1s44"
    }
  , { handle: "VJNkT1auS6STE41F8nNr"
    , slug: "v1s42"
    }
  , { handle: "XK42ovRoRm2x2gQqQ5Ke"
    , slug: "v1s41"
    }
  , { handle: "v5t4R4EEQjq9u0abm6XR"
    , slug: "v1s40"
    }
  , { handle: "XtuYnOnJRSoVqkAjzqfW"
    , slug: "v1s28"
    }
  , { handle: "OpDm5wtRQ7Gzzgwo9bG5"
    , slug: "v1s38"
    }
  , { handle: "n0W5j2iISK5INsUjHpHg"
    , slug: "v1s21"
    }
  , { handle: "gDHyPrjMSkCqL2DqOZH6"
    , slug: "v1s32"
    }
  , { handle: "Y99zfwEwQU6678I27Tri"
    , slug: "v1s13"
    }
  , { handle: "BFBg9bQwRgKOKXxO9O6C"
    , slug: "v1s35"
    }
  , { handle: "ddqvhz8ORv2sEhjdrDSF"
    , slug: "v1s29"
    }
  , { handle: "bVXUFIWQTNiAiQ8nE5nY"
    , slug: "v1s25"
    }
  , { handle: "bwnjGRQRT8uPgwxVwQ0u"
    , slug: "v1s22"
    }
  , { handle: "YBZ4z7QZSGt6rugMBokk"
    , slug: "v1s31"
    }
  , { handle: "2v4pfvxxQVSonDSLzZZ9"
    , slug: "v1s34"
    }
  , { handle: "9VF63oLNQpy1Vufh0S2U"
    , slug: "v1s27"
    }
  , { handle: "8gwQDbUXQIiNZbWqJZAg"
    , slug: "v1s37"
    }
  , { handle: "WWDndw3ISoRdlp9ANlmq"
    , slug: "v1s26"
    }
  , { handle: "mtzldD14Qy2atc7pAPFB"
    , slug: "v1s18"
    }
  , { handle: "nyLZ90qITDK6tPExxLQD"
    , slug: "v1s33"
    }
  , { handle: "xTxQPuklReC6ekAgfV0A"
    , slug: "v1s23"
    }
  , { handle: "7pq8qLkzRXa7zTZIZlzQ"
    , slug: "v1s15"
    }
  , { handle: "sCrhKqLjT5iOe8UPNPjv"
    , slug: "v1s36"
    }
  , { handle: "5vLKrrE8QkqgKKAahJxT"
    , slug: "v1s24"
    }
  , { handle: "pSM95uNlRqmYRKyW2F7e"
    , slug: "v1s12"
    }
  , { handle: "gOehCr6ORUSdeGqBuXrB"
    , slug: "v1s11"
    }
  , { handle: "EWnIjTOjSxmLOgTJklnw"
    , slug: "v1s17"
    }
  , { handle: "s1k3HVRpSRiLW0en5mVf"
    , slug: "v1s20"
    }
  , { handle: "YHEKiPSaRY62rHyln0qG"
    , slug: "v1s5"
    }
  , { handle: "UDFx3MU2Td6qhNfiMGQg"
    , slug: "v1s7"
    }
  , { handle: "gIrcewNDRyqJidzRPiYP"
    , slug: "v1s30"
    }
  , { handle: "IPwvegkT2KbQxQNXQ4vr"
    , slug: "v1s8"
    }
  , { handle: "TnC8dGWtQuukVOUFoAwK"
    , slug: "v1s3"
    }
  , { handle: "ur44ky5OTBG7fOZgoi7A"
    , slug: "v1s2"
    }
  , { handle: "BR1TX2NFS5WRxOcnsry9"
    , slug: "v1s1"
    }
  , { handle: "QU13YMh4SXyMXSHwvOHV"
    , slug: "v1s10"
    }
  , { handle: "HriTuP0GRW6UokoMDr8I"
    , slug: "v1s0"
    }
  , { handle: "j4TebQBoQWGFxx8zVhmH"
    , slug: "v1s16"
    }
  , { handle: "hBvRLcu9RnaOU0oK8Fru"
    , slug: "v1s6"
    }
  , { handle: "9gVAsDuQD2pWRb3yAmf6"
    , slug: "v1s19"
    }
  , { handle: "rESFo8nS3uasv5UpkYfA"
    , slug: "v1s14"
    }
  , { handle: "a2A1J7iTtOW9Pf8jXSaD"
    , slug: "v1s9"
    }
  , { handle: "tMa4C8NkRH2wFwVbUJUw"
    , slug: "v0s62"
    }
  , { handle: "bnGdrIZKQoiCN6AgGjf9"
    , slug: "v0s53"
    }
  , { handle: "s1jU8olIRsOGAlL7qzuG"
    , slug: "v0s58"
    }
  , { handle: "OZ22Fx2pR4KHarecGHKd"
    , slug: "v0s54"
    }
  , { handle: "iLBKJMU2RPKUcC9LuqcU"
    , slug: "v0s50"
    }
  , { handle: "QbhQz7ATlCHYUlTJfukg"
    , slug: "v0s60"
    }
  , { handle: "saa9J0o4QHKmte9xoewU"
    , slug: "v0s59"
    }
  , { handle: "tRE8kuVTwHe3jxWgTQYQ"
    , slug: "v0s48"
    }
  , { handle: "LTYKnnASZuMXdUlA1zYw"
    , slug: "v0s55"
    }
  , { handle: "e8JsCGi9QuGLnkPmkJhm"
    , slug: "v0s61"
    }
  , { handle: "0cVKFVxxQRujHZIVz4kb"
    , slug: "v0s52"
    }
  , { handle: "SMTdzU0YSv2bXWEcZsDb"
    , slug: "v0s51"
    }
  , { handle: "eiekzC8RQRauELKJRock"
    , slug: "v0s49"
    }
  , { handle: "kRQKGnccQo2NsjhFVAWQ"
    , slug: "v0s42"
    }
  , { handle: "85H3jnRSrG2x4Y0iaoZT"
    , slug: "v0s56"
    }
  , { handle: "0eAONpLQ3CSFOzO6E1Ww"
    , slug: "v0s41"
    }
  , { handle: "YR0ANa3vTBT8c2Etktic"
    , slug: "v0s40"
    }
  , { handle: "K4Dtt12LQ9iWmEnQ3Om0"
    , slug: "v0s57"
    }
  , { handle: "6fjEdDUJTNycRMpE1BbZ"
    , slug: "v0s46"
    }
  , { handle: "F6WoemJNSMiIhFPVrMl4"
    , slug: "v0s43"
    }
  , { handle: "SngcqSxEQc2NV68yTDOR"
    , slug: "v0s47"
    }
  , { handle: "1pvWAznJRky01fHpZ0BU"
    , slug: "v0s45"
    }
  , { handle: "YEOBQKXQXisSZGqopNnw"
    , slug: "v0s44"
    }
  , { handle: "XSvmShQRqqRTowI1aayf"
    , slug: "v0s15"
    }
  , { handle: "JH2TBo6QeyMoamFBafmA"
    , slug: "v0s39"
    }
  , { handle: "fTqSg5sSHmnfW4XnW6Dy"
    , slug: "v0s38"
    }
  , { handle: "SUMb9O2gRRyaUK2zcvTD"
    , slug: "v0s30"
    }
  , { handle: "4AQNH7ZXRK6sX80dbrR6"
    , slug: "v0s19"
    }
  , { handle: "xoZcmeTuafkOKPA6dviA"
    , slug: "v0s25"
    }
  , { handle: "aTN4hzHeTug02V3zZuQH"
    , slug: "v0s22"
    }
  , { handle: "6AM62mARek5wn4fUPszQ"
    , slug: "v0s33"
    }
  , { handle: "a4JoeqqvSROeDWcRICty"
    , slug: "v0s21"
    }
  , { handle: "P68MTBXlQ9C6iIFhg3Kr"
    , slug: "v0s36"
    }
  , { handle: "fZjgVZ9gQsm1RRDoyQA8"
    , slug: "v0s31"
    }
  , { handle: "XxdRdVwpToGu8R2KEofO"
    , slug: "v0s18"
    }
  , { handle: "CWKKD6HjRZSPpeK4yFEq"
    , slug: "v0s37"
    }
  , { handle: "VtYSvJ0TLSefF0NDJM6R"
    , slug: "v0s34"
    }
  , { handle: "uuLJYoRLRnKoJyffiItQ"
    , slug: "v0s28"
    }
  , { handle: "AwiA4gpRg2BIgfBUQgEA"
    , slug: "v0s16"
    }
  , { handle: "Q4O1E58BQJWmX8QHdXlR"
    , slug: "v0s26"
    }
  , { handle: "hjWX3zDSRI2sDyUDbkCF"
    , slug: "v0s14"
    }
  , { handle: "5PC6JuIpS0qxeKHPaVF6"
    , slug: "v0s0"
    }
  , { handle: "EG6xFhl6QjS9SXGbSqDu"
    , slug: "v0s27"
    }
  , { handle: "8d4NUK8zR8OLI68MORtN"
    , slug: "v0s35"
    }
  , { handle: "vVvlYs41QrS9e9hzaD3n"
    , slug: "v0s29"
    }
  , { handle: "9K83McQ3RM6AqwBx7XMu"
    , slug: "v0s23"
    }
  , { handle: "QRuu5aUORK6q7uq0p0M7"
    , slug: "v0s32"
    }
  , { handle: "WozEcJLrSB61dhdqMq70"
    , slug: "v0s24"
    }
  , { handle: "CwEhd0kGS4mTRm5Fh15Q"
    , slug: "v0s20"
    }
  , { handle: "kA48MkrATGhTRK3RKt6v"
    , slug: "v0s17"
    }
  , { handle: "mS0ZaOpDTkGPOoAu1rDS"
    , slug: "v0s10"
    }
  , { handle: "x8ktO86aRCqjMedH2Jnu"
    , slug: "v0s13"
    }
  , { handle: "eDtITTryRmWA38CJvs2N"
    , slug: "v0s4"
    }
  , { handle: "DxGon0GTeCTq4yT7YFA6"
    , slug: "v0s6"
    }
  , { handle: "5vkpeePQziDqWBmCn1kH"
    , slug: "v0s8"
    }
  , { handle: "XBDnViriTZC4eT2XQ0eL"
    , slug: "v0s1"
    }
  , { handle: "nFWDLg23T6e15ejCMrRk"
    , slug: "v0s7"
    }
  , { handle: "D7SNpisFQuS3P1gskiMg"
    , slug: "v0s9"
    }
  , { handle: "0k2Z0H87T8K1xPFRdzgk"
    , slug: "v0s2"
    }
  , { handle: "4A3yWWxkSmo2FX4JDzKs"
    , slug: "v0s11"
    }
  , { handle: "zzltLdNLT7etFttoQgP8"
    , slug: "v0s12"
    }
  , { handle: "seWY1PvyQcOpRIEGa5N8"
    , slug: "v0s5"
    }
  , { handle: "PO6NYk9SDyiT9KDwvjdS"
    , slug: "v0s3"
    }
  , { handle: "xxwkpDhSuS70mOiOpyQA"
    , slug: "R1NuclearReactorHall"
    }
  , { handle: "YKCTp6meSpKWucN90V0m"
    , slug: "StAndrewsChurch"
    }
  , { handle: "7Q4tPuvSBSl2KPLkF9Sv"
    , slug: "StMarysAbbeyReconstructionPhase2"
    }
  , { handle: "oEilDbMzSIKrr1GiRXjf"
    , slug: "SportsCentreUniversityOfYork"
    }
  , { handle: "WWWqtfSZyC0QYRoiQkgS"
    , slug: "StMarysAbbeyReconstructionPhase3"
    }
  , { handle: "lh4luUM1QcuUzabMmjEF"
    , slug: "StMarysAbbeyReconstructionPhase1"
    }
  , { handle: "5qxdwBKmQWyvc4VRCxKg"
    , slug: "LadyChapelStAlbansCathedral"
    }
  , { handle: "rgzCDkQTQ6GCCTpjQ8jK"
    , slug: "PerthCityHallBalcony"
    }
  , { handle: "ACeaE48uRBy7iabNzn7X"
    , slug: "StPatricksChurchPatringtonPosition1"
    }
  , { handle: "LlMRIAi9RPCIWjq5vfE4"
    , slug: "PurnodesRailroadTunnel"
    }
  , { handle: "W8gl1NmIT9S6neqNiZUE"
    , slug: "Basement"
    }
  , { handle: "ZMEy0FIYQ0eZFE8k1H3z"
    , slug: "MidiverbMark2Preset29"
    }
  , { handle: "SuqM3xQKQpGZnfFc5hD0"
    , slug: "SpokaneWomansClub"
    }
  , { handle: "PAcCsY80RPOsICGPmyLk"
    , slug: "YorkMinster"
    }
  , { handle: "bnruSc9sSuKPPdWmRYwE"
    , slug: "FalklandPalaceRoyalTennisCourt"
    }
  , { handle: "PgLl19LIQGqRGTpx56Kz"
    , slug: "TerrysTypingRoom"
    }
  , { handle: "o1wvIpjcQGarLVR5ptrc"
    , slug: "SampleBachCMinorPrelude"
    }
  , { handle: "AOUnc3DlRz6gW2wdf6G4"
    , slug: "DomesticLivingRoom"
    }
  , { handle: "hxziyQGATtOl91PI8DJm"
    , slug: "TyndallBruceMonument"
    }
  , { handle: "7QMKckbhSDmZPlAS2HOH"
    , slug: "SaintLawrenceChurchMolenbeekWersbeekBelgium"
    }
  , { handle: "VPatIpOTIentPk3FJBGG"
    , slug: "ElvedenHallLordsCloakroom"
    }
  , { handle: "H2RQImvQzWdljXb7odyA"
    , slug: "MaesHowe"
    }
  , { handle: "OKr7wK83Syem8cf4xrpA"
    , slug: "StPatricksChurchPatringtonPosition3"
    }
  , { handle: "iL9DR9KTlmnM0nKu2ALg"
    , slug: "StPatricksChurchPatringtonPosition2"
    }
  , { handle: "Zq6CyyYTQ7Ov1yOmatXf"
    , slug: "AbernyteGrainSilo"
    }
  , { handle: "FZM2SP4kQXm6PTARxg7j"
    , slug: "TerrysFactoryWarehouse"
    }
  , { handle: "UXAHfhE5RLuIsH0xrQiw"
    , slug: "InsidePiano"
    }
  , { handle: "EAammGvrTPGMxQoHISvw"
    , slug: "ArbroathAbbeySacristy"
    }
  , { handle: "3THygSShQx9u2oI3IN5p"
    , slug: "HamiltonMausoleum"
    }
  , { handle: "HwePBbGeQey48vMKcrpJ"
    , slug: "StairwayUniversityOfYork"
    }
  , { handle: "uTKP4ngSbm32eJhigaTc"
    , slug: "KinoullAisle"
    }
  , { handle: "zHkDSldXSzWUaHwUdVnN"
    , slug: "EmptyApartmentBedroom"
    }
  , { handle: "q24dYjTR6e78BAaqiDig"
    , slug: "ElvedenHallMarbleHall"
    }
  , { handle: "0nOy6k3XTYurgxSpiPKt"
    , slug: "ElvedenHallSmokingRoom"
    }
  , { handle: "x7Af6UBRiYLlIKCZkj4A"
    , slug: "ElvedenHallVisitorsCloakroom"
    }
  , { handle: "1B4buTQtRmpOgaWtDQlj"
    , slug: "ErrolBrickworksKiln"
    }
  , { handle: "FwmDwkuaTIOQU9pAVBBd"
    , slug: "UndergroundCarPark"
    }
  ]
