module WAGSI.Plumbing.Tidal
  ( make
  , parse
  , parse'
  , tidal
  , plainly
  , rend
  , rendT
  , c2s
  , wag
  , openFuture
  --
  , r
  , kick0
  , kick1
  , kick
  , ss0
  , ss
  , snare0
  , snare
  , clap0
  , clap
  , roll0
  , roll
  , hh0
  , hh
  , shaker0
  , shaker
  , ohh0
  , ohh
  , tamb0
  , tamb
  , crash0
  , crash
  , ride0
  , ride
  , Cycle(..)
  , Note(..)
  , Sample(..)
  ---
  , b
  , s
  , x
  , b_
  , s_
  , x_
  ---
  , lfn
  , lfb
  , lfl
  , lfc
  , lfd
  , ltn
  , lts
  , ltd
  , lns
  , lnr
  , lnv
  ---
  , when_
  , flattenCycle
  , reverse
  , mapmap
  ---
  , cycleP
  , unrest
  , noteFromSample
  , CycleLength(..)
  , NoteInTime(..)
  , NoteInFlattenedTime(..)
  , Voice(..)
  , Globals(..)
  , NextCycle(..)
  , RBuf
  , Next
  , Instruments
  , Instruments'
  , Instruments''
  , TheFuture
  , FoT
  ) where

import Prelude hiding (between)

import Control.Alt ((<|>))
import Control.Comonad (extract)
import Control.Comonad.Cofree ((:<))
import Data.Array as A
import Data.Either (Either(..), hush)
import Data.Filterable (compact, filter, filterMap)
import Data.Function (on)
import Data.FunctorWithIndex (class FunctorWithIndex, mapWithIndex)
import Data.Generic.Rep (class Generic)
import Data.Int (toNumber)
import Data.Lens (Lens', _1, _2, over, traversed)
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Record (prop)
import Data.List (List(..), fold, foldl, foldr, (:))
import Data.List as L
import Data.List.NonEmpty (sortBy)
import Data.List.NonEmpty as NEL
import Data.List.Types (NonEmptyList(..))
import Data.Maybe (Maybe(..), fromMaybe, maybe)
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.NonEmpty ((:|))
import Data.Show.Generic (genericShow)
import Data.String.CodeUnits (fromCharArray)
import Data.Symbol (class IsSymbol)
import Data.Traversable (class Foldable, class Traversable, foldMapDefaultR, sequence, sequenceDefault, traverse)
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Typelevel.Num (class Pos, D8)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Random (randomInt)
import FRP.Behavior (Behavior)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import Heterogeneous.Mapping (class MappingWithIndex, hmap, hmapWithIndex)
import Prim.Row (class Lacks, class Nub, class Union)
import Prim.Row as Row
import Record as Record
import Text.Parsing.StringParser (Parser, fail, runParser, try)
import Text.Parsing.StringParser.CodePoints (satisfy)
import Text.Parsing.StringParser.CodeUnits (skipSpaces, string, char)
import Text.Parsing.StringParser.Combinators (between, many, sepBy)
import Type.Proxy (Proxy(..))
import WAGS.Create.Optionals (speaker, gain, playBuf)
import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.BufferPool (AScoredBufferPool, Buffy(..), makeScoredBufferPool)
import WAGS.Lib.Cofree (tails)
import WAGS.Lib.Learn (FullSceneBuilder, buffers, usingc)
import WAGS.Lib.Score (CfNoteStream')
import WAGS.Math (calcSlope)
import WAGS.Run (SceneI(..))
import WAGS.Template (fromTemplate)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer)

--- @@ ---

type Instruments'' (a :: Type) (r :: Row Type)
  = (kick0 :: a, sideStick0 :: a, snare0 :: a, clap0 :: a, snareRoll0 :: a, kick1 :: a, closedHH0 :: a, shaker0 :: a, openHH0 :: a, tamb0 :: a, crash0 :: a, ride0 :: a, intentionalSilenceForInternalUseOnly :: a | r)

type Instruments' (a :: Type)
  = Instruments'' a ()

type Instruments a
  = { | Instruments' a }

type RBuf
  =
  { sampleF :: Instruments BrowserAudioBuffer -> BrowserAudioBuffer
  , rateFoT :: FoT
  , volumeFoT :: FoT
  , cycleStartsAt :: Number
  , bigCycleLength :: Number
  , littleCycleLength :: Number
  , currentCycle :: Int
  , bigStartsAt :: Number
  , littleStartsAt :: Number
  , duration :: Number
  }

newtype NextCycle = NextCycle
  ( { currentCount :: Number, prevCycleEnded :: Number, time :: Number, headroomInSeconds :: Number }
    -> CfNoteStream' RBuf Next
  )

derive instance newtypeNextCycle :: Newtype NextCycle _

newtype Globals = Globals Unit

newtype Voice = Voice { globals :: Globals, next :: NextCycle }

derive instance newtypeVoice :: Newtype Voice _

type EWF (v :: Type) = (earth :: v) --, wind :: v, fire :: v)

newtype TheFuture = TheFuture { | EWF Voice }

unFuture :: TheFuture -> { | EWF Voice }
unFuture (TheFuture ewf) = ewf

make
  :: forall inRec overfull
   . Union inRec (EWF (CycleLength -> Voice)) overfull
  => Nub overfull (EWF (CycleLength -> Voice))
  => Number
  -> { | inRec }
  -> TheFuture
make cl rr = TheFuture $ hmapWithIndex (ZipProps z) (hmap (\(_ :: (CycleLength -> Voice)) -> (wrap cl)) z)
  where
  z = Record.merge rr openVoices :: { | EWF (CycleLength -> Voice) }

plainly :: forall f. Functor f => f NextCycle -> f Voice
plainly = map (Voice <<< { globals: Globals unit, next: _ })

--- @@ ---
newtype CycleLength = CycleLength Number

derive instance newtypeCycleLength :: Newtype CycleLength _
derive instance eqCycleLength :: Eq CycleLength
derive instance ordCycleLength :: Ord CycleLength

type FoT =
  { clockTime :: Number
  , sampleTime :: Number
  , bigCycleTime :: Number
  , littleCycleTime :: Number
  }
  -> Number

newtype Note = Note
  { sample :: Sample
  , rateFoT :: FoT
  , volumeFoT :: FoT
  }

derive instance newtypeNote :: Newtype Note _
derive instance genericNote :: Generic Note _
instance eqNote :: Eq Note where
  eq = eq `on` (unwrap >>> _.sample)

instance ordNote :: Ord Note where
  compare = compare `on` (unwrap >>> _.sample)

instance showNote :: Show Note where
  show (Note { sample }) = "Note <" <> show sample <> ">"

newtype NoteInTime note = NoteInTime
  { note :: note
  , startsAt :: Number
  , duration :: Number
  , cycleLength :: Number
  }

derive instance newtypeNoteInTime :: Newtype (NoteInTime note) _
derive instance genericNoteInTime :: Generic (NoteInTime note) _
derive instance eqNoteInTime :: Eq note => Eq (NoteInTime note)
derive instance ordNoteInTime :: Ord note => Ord (NoteInTime note)
instance showNoteInTime :: Show note => Show (NoteInTime note) where
  show xx = genericShow xx

derive instance functorNoteInTime :: Functor NoteInTime

newtype NoteInFlattenedTime note = NoteInFlattenedTime
  { note :: note
  , bigStartsAt :: Number
  , littleStartsAt :: Number
  , currentCycle :: Int
  , duration :: Number
  , bigCycleLength :: Number
  , littleCycleLength :: Number
  }

derive instance newtypeNoteInFlattenedTime :: Newtype (NoteInFlattenedTime note) _
derive instance genericNoteInFlattenedTime :: Generic (NoteInFlattenedTime note) _
derive instance eqNoteInFlattenedTime :: Eq note => Eq (NoteInFlattenedTime note)
derive instance ordNoteInFlattenedTime :: Ord note => Ord (NoteInFlattenedTime note)
instance showNoteInFlattenedTime :: Show note => Show (NoteInFlattenedTime note) where
  show xx = genericShow xx

derive instance functorNoteInFlattenedTime :: Functor NoteInFlattenedTime

--- lenses
lfn :: forall note. Lens' (NoteInFlattenedTime note) note
lfn = unto NoteInFlattenedTime <<< prop (Proxy :: _ "note")

lfb :: forall note. Lens' (NoteInFlattenedTime note) Number
lfb = unto NoteInFlattenedTime <<< prop (Proxy :: _ "bigStartsAt")

lfl :: forall note. Lens' (NoteInFlattenedTime note) Number
lfl = unto NoteInFlattenedTime <<< prop (Proxy :: _ "littleStartsAt")

lfc :: forall note. Lens' (NoteInFlattenedTime note) Int
lfc = unto NoteInFlattenedTime <<< prop (Proxy :: _ "currentCycle")

lfd :: forall note. Lens' (NoteInFlattenedTime note) Number
lfd = unto NoteInFlattenedTime <<< prop (Proxy :: _ "duration")

ltn :: forall note. Lens' (NoteInTime note) note
ltn = unto NoteInTime <<< prop (Proxy :: _ "note")

lts :: forall note. Lens' (NoteInTime note) Number
lts = unto NoteInTime <<< prop (Proxy :: _ "startsAt")

ltd :: forall note. Lens' (NoteInTime note) Number
ltd = unto NoteInTime <<< prop (Proxy :: _ "duration")

lns :: Lens' Note Sample
lns = unto Note <<< prop (Proxy :: _ "sample")

lnr :: Lens' Note FoT
lnr = unto Note <<< prop (Proxy :: _ "rateFoT")

lnv :: Lens' Note FoT
lnv = unto Note <<< prop (Proxy :: _ "volumeFoT")

---

when_ :: forall a. (a -> Boolean) -> (a -> a) -> a -> a
when_ cond func aa = if cond aa then func aa else aa

---

data Sample
  = Kick0
  | Kick1
  | SideStick0
  | Snare0
  | Clap0
  | SnareRoll0
  | ClosedHH0
  | Shaker0
  | OpenHH0
  | Tamb0
  | Crash0
  | Ride0
  | IntentionalSilenceForInternalUseOnly

derive instance genericSample :: Generic Sample _
derive instance eqSample :: Eq Sample
derive instance ordSample :: Ord Sample
instance showSample :: Show Sample where
  show xx = genericShow xx

data Cycle a
  = Branching { nel :: NonEmptyList (Cycle a) }
  | Simultaneous { nel :: NonEmptyList (Cycle a) }
  | Sequential { nel :: NonEmptyList (Cycle a) }
  | Internal { nel :: NonEmptyList (Cycle a) }
  | SingleNote { val :: a }

derive instance genericCycle :: Generic (Cycle a) _
derive instance eqCycle :: Eq a => Eq (Cycle a)
derive instance ordCycle :: Ord a => Ord (Cycle a)
instance showCycle :: Show a => Show (Cycle a) where
  show xx = genericShow xx

derive instance functorCycle :: Functor Cycle

instance functorWithIndexCycle :: FunctorWithIndex Int Cycle where
  mapWithIndex f v = (go 0 v).val
    where
    go' ff ii nel = let folded = foldl (\axc cyc -> axc <> (pure (go (NEL.last axc).i cyc))) (pure (go ii (NEL.head nel))) (NEL.tail nel) in { i: _.i $ NEL.last folded, val: ff { nel: map _.val folded } }
    go ii = case _ of
      Branching { nel } -> go' Branching ii nel
      Simultaneous { nel } -> go' Simultaneous ii nel
      Sequential { nel } -> go' Sequential ii nel
      Internal { nel } -> go' Internal ii nel
      SingleNote { val } -> { i: ii + 1, val: SingleNote { val: f ii val } }

instance foldableCycle :: Foldable Cycle where
  foldl fba aa fbb = foldl fba aa (flattenCycle fbb)
  foldr fab aa fbb = foldr fab aa (flattenCycle fbb)
  foldMap = foldMapDefaultR

instance traversableCycle :: Traversable Cycle where
  traverse ff = case _ of
    Branching { nel } -> Branching <<< { nel: _ } <$> (traverse (traverse ff) nel)
    Simultaneous { nel } -> Simultaneous <<< { nel: _ } <$> (traverse (traverse ff) nel)
    Sequential { nel } -> Sequential <<< { nel: _ } <$> (traverse (traverse ff) nel)
    Internal { nel } -> Internal <<< { nel: _ } <$> (traverse (traverse ff) nel)
    SingleNote { val } -> SingleNote <<< { val: _ } <$> ff val
  sequence = sequenceDefault

flattenCycle :: Cycle ~> NonEmptyList
flattenCycle = case _ of
  Branching { nel } -> join $ map flattenCycle nel
  Simultaneous { nel } -> join $ map flattenCycle nel
  Sequential { nel } -> join $ map flattenCycle nel
  Internal { nel } -> join $ map flattenCycle nel
  SingleNote { val } -> pure val

mapmap :: forall f g a b. Functor f => Functor g => (a -> b) -> f (g a) -> f (g b)
mapmap = map <<< map

reverse :: Cycle ~> Cycle
reverse l = go l
  where
  go' f nel = f { nel: NEL.reverse (map reverse nel) }
  go = case _ of
    Branching { nel } -> go' Branching nel
    Simultaneous { nel } -> go' Simultaneous nel
    Sequential { nel } -> go' Sequential nel
    Internal { nel } -> go' Internal nel
    SingleNote sn -> SingleNote sn

notes :: Array (String /\ Maybe Note)
notes =
  over (traversed <<< _2) (Just <<< Note <<< { sample: _, rateFoT: const 1.0, volumeFoT: const 1.0 })
    [ "kick:0" /\ Kick0
    , "kick:1" /\ Kick1
    , "kick" /\ Kick0
    , "ss:0" /\ SideStick0
    , "ss" /\ SideStick0
    , "snare:0" /\ Snare0
    , "snare" /\ Snare0
    , "clap:0" /\ Clap0
    , "clap" /\ Clap0
    , "roll:0" /\ SnareRoll0
    , "roll" /\ SnareRoll0
    , "hh:0" /\ ClosedHH0
    , "hh" /\ ClosedHH0
    , "shaker:0" /\ Shaker0
    , "shaker" /\ Shaker0
    , "ohh:0" /\ OpenHH0
    , "ohh" /\ OpenHH0
    , "tamb:0" /\ Tamb0
    , "tamb" /\ Tamb0
    , "crash:0" /\ Crash0
    , "crash" /\ Crash0
    , "ride:0" /\ Ride0
    , "ride" /\ Ride0
    , "intentionalSilenceForInternalUseOnly" /\ IntentionalSilenceForInternalUseOnly
    ] <> [ "~" /\ Nothing ]

---
r :: Cycle (Maybe Note)
r = SingleNote { val: Nothing }

noteFromSample :: Sample -> Cycle (Maybe Note)
noteFromSample sample = SingleNote { val: Just (Note { sample, rateFoT: const 1.0, volumeFoT: const 1.0 }) }

kick0 :: Cycle (Maybe Note)
kick0 = noteFromSample Kick0

kick1 :: Cycle (Maybe Note)
kick1 = noteFromSample Kick1

kick :: Cycle (Maybe Note)
kick = noteFromSample Kick0

ss0 :: Cycle (Maybe Note)
ss0 = noteFromSample SideStick0

ss :: Cycle (Maybe Note)
ss = noteFromSample SideStick0

snare0 :: Cycle (Maybe Note)
snare0 = noteFromSample Snare0

snare :: Cycle (Maybe Note)
snare = noteFromSample Snare0

clap0 :: Cycle (Maybe Note)
clap0 = noteFromSample Clap0

clap :: Cycle (Maybe Note)
clap = noteFromSample Clap0

roll0 :: Cycle (Maybe Note)
roll0 = noteFromSample SnareRoll0

roll :: Cycle (Maybe Note)
roll = noteFromSample SnareRoll0

hh0 :: Cycle (Maybe Note)
hh0 = noteFromSample ClosedHH0

hh :: Cycle (Maybe Note)
hh = noteFromSample ClosedHH0

shaker0 :: Cycle (Maybe Note)
shaker0 = noteFromSample Shaker0

shaker :: Cycle (Maybe Note)
shaker = noteFromSample Shaker0

ohh0 :: Cycle (Maybe Note)
ohh0 = noteFromSample OpenHH0

ohh :: Cycle (Maybe Note)
ohh = noteFromSample OpenHH0

tamb0 :: Cycle (Maybe Note)
tamb0 = noteFromSample Tamb0

tamb :: Cycle (Maybe Note)
tamb = noteFromSample Tamb0

crash0 :: Cycle (Maybe Note)
crash0 = noteFromSample Crash0

crash :: Cycle (Maybe Note)
crash = noteFromSample Crash0

ride0 :: Cycle (Maybe Note)
ride0 = noteFromSample Ride0

ride :: Cycle (Maybe Note)
ride = noteFromSample Ride0

intentionalSilenceForInternalUseOnly_ :: Cycle (Maybe Note)
intentionalSilenceForInternalUseOnly_ = noteFromSample IntentionalSilenceForInternalUseOnly

---
b :: Cycle (Maybe Note) -> Array (Cycle (Maybe Note)) -> Cycle (Maybe Note)
b bx by = Branching { nel: NonEmptyList (bx :| L.fromFoldable by) }

b_ :: Cycle (Maybe Note) -> Cycle (Maybe Note)
b_ bx = b bx []

s :: Cycle (Maybe Note) -> Array (Cycle (Maybe Note)) -> Cycle (Maybe Note)
s sx sy = Internal { nel: NonEmptyList (sx :| L.fromFoldable sy) }

s_ :: Cycle (Maybe Note) -> Cycle (Maybe Note)
s_ sx = s sx []

x :: Cycle (Maybe Note) -> Array (Cycle (Maybe Note)) -> Cycle (Maybe Note)
x xx xy = Simultaneous { nel: NonEmptyList (xx :| L.fromFoldable xy) }

x_ :: Cycle (Maybe Note) -> Cycle (Maybe Note)
x_ sx = x sx []

---
sampleP :: Parser (Maybe Note)
sampleP = go $ L.fromFoldable notes
  where
  go (aa : bb) = (try (string (fst aa)) $> snd aa) <|> go bb
  go Nil = fail "Could not find a note"

internalcyclePInternal :: Parser (Cycle (Maybe Note))
internalcyclePInternal = Internal <<< { nel: _ } <$>
  between (skipSpaces *> char '[' *> skipSpaces) (skipSpaces *> char ']' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      Sequential { nel } -> pure nel
      xx -> pure (pure xx)

branchingcyclePInternal :: Parser (Cycle (Maybe Note))
branchingcyclePInternal = Branching <<< { nel: _ } <$>
  between (skipSpaces *> char '<' *> skipSpaces) (skipSpaces *> char '>' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      Sequential { nel } -> pure nel
      xx -> pure (pure xx)

simultaneouscyclePInternal :: Unit -> Parser (Cycle (Maybe Note))
simultaneouscyclePInternal _ = Simultaneous <<< { nel: _ } <$> do
  sep <- sepBy ((fromCharArray <<< A.fromFoldable) <$> many (satisfy (not <<< eq ','))) (string ",")
  case sep of
    Nil -> fail "Lacks comma"
    (_ : Nil) -> fail "Lacks comma"
    (aa : bb : cc) -> case traverse (runParser reducedP) (NonEmptyList (aa :| bb : cc)) of
      Left e -> fail $ show e
      Right rr -> pure rr
  where
  reducedP = try branchingcyclePInternal
    <|> try sequentialcyclePInternal
    <|> try internalcyclePInternal
    <|> try singleSampleP
    <|> fail "Could not parse cycle"

joinSequential :: forall a. List (Cycle a) -> List (Cycle a)
joinSequential Nil = Nil
joinSequential (Sequential { nel: NonEmptyList (aa :| bb) } : cc) = (aa : joinSequential bb) <> joinSequential cc
joinSequential (aa : bb) = aa : joinSequential bb

sequentialcyclePInternal :: Parser (Cycle (Maybe Note))
sequentialcyclePInternal = Sequential <<< { nel: _ } <$> do
  skipSpaces
  leadsWith <- try internalcyclePInternal <|> singleSampleP
  skipSpaces
  rest <- joinSequential <$> many (cyclePInternal unit)
  pure (NonEmptyList (leadsWith :| rest))

singleSampleP :: Parser (Cycle (Maybe Note))
singleSampleP = SingleNote <$> do
  skipSpaces
  sample <- sampleP
  skipSpaces
  pure { val: sample }

cyclePInternal :: Unit -> Parser (Cycle (Maybe Note))
cyclePInternal _ = try branchingcyclePInternal
  <|> try (simultaneouscyclePInternal unit)
  <|> try sequentialcyclePInternal
  <|> try singleSampleP
  <|> fail "Could not parse cycle"

cycleP :: Parser (Cycle (Maybe Note))
cycleP = go <$> cyclePInternal unit
  where
  go (Branching { nel: NonEmptyList (a :| Nil) }) = go a
  go (Simultaneous { nel: NonEmptyList (a :| Nil) }) = go a
  go (Sequential { nel: NonEmptyList (a :| Nil) }) = go a
  go (Internal { nel: NonEmptyList (a :| Nil) }) = go a
  go (Branching { nel }) = Branching { nel: map go nel }
  go (Simultaneous { nel }) = Simultaneous { nel: map go nel }
  go (Sequential { nel }) = Sequential { nel: map go nel }
  go (Internal { nel }) = Internal { nel: map go nel }
  go (SingleNote note) = SingleNote note

flatMap :: NonEmptyList (NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))) -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
flatMap (NonEmptyList (aa :| Nil)) = aa
flatMap (NonEmptyList (aa :| bb : cc)) = join $ aa # map \a' -> flatMap (wrap (bb :| cc)) # map \b' -> a' <> b'

cycleToSequence :: CycleLength -> Cycle (Maybe Note) -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
cycleToSequence (CycleLength cycleLength) = go { currentSubdivision: cycleLength, currentOffset: 0.0 }
  where
  go state (Branching { nel }) = join $ map (go state) nel
  go state (Simultaneous { nel }) = map (sortBy (compare `on` (unwrap >>> _.startsAt)))
    $ flatMap
    $ map (go state) nel
  go state (Sequential { nel }) = seq state nel
  go state (Internal { nel }) = seq state nel
  go state (SingleNote { val }) = pure $ pure $ NoteInTime
    { duration: state.currentSubdivision
    , startsAt: state.currentOffset
    , note: val
    , cycleLength
    }
  seq state nel =
    let
      currentSubdivision = state.currentSubdivision / (toNumber (NEL.length nel))
    in
      flatMap $ mapWithIndex
        ( go
            <<< { currentSubdivision, currentOffset: _ }
            <<< add state.currentOffset
            <<< mul currentSubdivision
            <<< toNumber
        )
        nel

unrest :: NonEmptyList (NonEmptyList (NoteInTime (Maybe Note))) -> List (List (NoteInTime Note))
unrest = filter (not <<< eq Nil) <<< NEL.toList <<< map go
  where
  go =
    filterMap
      ( \(NoteInTime { startsAt, duration, cycleLength, note }) ->
          NoteInTime <<< { startsAt, duration, cycleLength, note: _ } <$> note
      ) <<< NEL.toList

asScore :: NonEmptyList (NoteInFlattenedTime Note) -> NextCycle
asScore flattened = NextCycle scoreInput
  where
  scoreInput ccPce = go ccPce.currentCount ccPce.prevCycleEnded flattened
  go currentCount prevCycleEnded (NonEmptyList (NoteInFlattenedTime aa :| bb)) =
    let
      st = prevCycleEnded + aa.bigStartsAt
    in
      { startsAfter: st - currentCount
      , rest:
          { sampleF: sampleToBuffers (unwrap aa.note).sample
          , cycleStartsAt: prevCycleEnded
          , rateFoT: (unwrap aa.note).rateFoT
          , volumeFoT: (unwrap aa.note).volumeFoT
          , bigCycleLength: aa.bigCycleLength
          , littleCycleLength: aa.littleCycleLength
          , currentCycle: aa.currentCycle
          , bigStartsAt: aa.bigStartsAt
          , littleStartsAt: aa.littleStartsAt
          , duration: aa.duration
          }
      } :<
        \{ time, headroomInSeconds, input: { next: (NextCycle nc) } } ->
          let
            args = case bb of
              Nil -> { a: prevCycleEnded + aa.bigCycleLength, b: flattened }
              (cc : dd) -> { a: prevCycleEnded, b: NonEmptyList (cc :| dd) }
          in
            case bb of
              Nil -> nc { currentCount: st, prevCycleEnded: args.a, time, headroomInSeconds }
              _ -> go st args.a args.b

flattenScore :: NonEmptyList (NonEmptyList (NoteInTime Note)) -> NonEmptyList (NoteInFlattenedTime Note)
flattenScore l = flattened
  where
  ll = NEL.length l
  flattened = join $ mapWithIndex
    ( \i -> map
        ( \(NoteInTime { note, duration, startsAt, cycleLength }) -> NoteInFlattenedTime
            { note
            , duration
            , bigStartsAt: startsAt + cycleLength * toNumber i
            , currentCycle: i
            , littleStartsAt: startsAt
            , littleCycleLength: cycleLength
            , bigCycleLength: cycleLength * toNumber ll
            }
        )
    )
    l

type NBuf
  = D8

type Next = { next :: NextCycle }

type Acc
  =
  { buffers :: { | EWF (AScoredBufferPool Next NBuf RBuf) }
  , backToTheFuture :: TheFuture
  }

emptyPool :: forall n. Pos n => AScoredBufferPool Next n RBuf
emptyPool = makeScoredBufferPool
  { startsAt: 0.0
  , noteStream: \_ ->
      ( (#)
          { currentCount: 0.0
          , prevCycleEnded: 0.0
          , time: 0.0
          , headroomInSeconds: 0.03
          } $ unwrap $ asScore (pure intentionalSilenceForInternalUseOnly)
      ) # map \{ startsAfter, rest } ->
        { startsAfter
        , rest:
            { rest: const rest
            , duration: const $ const $ const Just rest.duration
            }
        }
  }

openVoice :: Voice
openVoice = Voice
  { globals: Globals unit
  , next: asScore (pure intentionalSilenceForInternalUseOnly)
  }

openVoices :: { | EWF (CycleLength -> Voice) }
openVoices = hmap (\(_ :: Unit) -> (const $ openVoice)) (mempty :: { | EWF Unit })

openFuture :: TheFuture
openFuture = TheFuture $ hmap (\(_ :: Unit) -> openVoice) (mempty :: { | EWF Unit })

acc :: Acc
acc =
  { buffers: hmap (\(_ :: Unit) -> emptyPool) (mempty :: { | EWF Unit })
  , backToTheFuture: openFuture
  }

globalFF = 0.03 :: Number

sampleToBuffers :: Sample -> Instruments BrowserAudioBuffer -> BrowserAudioBuffer
sampleToBuffers = case _ of
  Kick0 -> _.kick0
  Kick1 -> _.kick1
  SideStick0 -> _.sideStick0
  Snare0 -> _.snare0
  Clap0 -> _.clap0
  SnareRoll0 -> _.snareRoll0
  ClosedHH0 -> _.closedHH0
  Shaker0 -> _.shaker0
  OpenHH0 -> _.openHH0
  Tamb0 -> _.tamb0
  Crash0 -> _.crash0
  Ride0 -> _.ride0
  IntentionalSilenceForInternalUseOnly -> _.intentionalSilenceForInternalUseOnly

foreign import handlers :: Effect (Object (TheFuture -> Effect Unit))

foreign import wag_ :: String -> (TheFuture -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

wag :: Event TheFuture
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

thePresent
  :: forall trigger world
   . Lacks "theFuture" trigger
  => Event TheFuture
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { theFuture :: TheFuture | trigger } /\ Behavior { | world })
thePresent ev = (map <<< map) (over _1 (\e -> Record.insert (Proxy :: _ "theFuture") <$> ev <*> e))

intentionalSilenceForInternalUseOnly :: (NoteInFlattenedTime Note)
intentionalSilenceForInternalUseOnly = NoteInFlattenedTime
  { note: Note
      { sample: IntentionalSilenceForInternalUseOnly
      , rateFoT: const 1.0
      , volumeFoT: const 1.0
      }
  , bigStartsAt: 0.0
  , littleStartsAt: 0.0
  , duration: 0.25
  , currentCycle: 0
  , bigCycleLength: 0.25
  , littleCycleLength: 0.25
  }

parse' :: String -> Cycle (Maybe Note)
parse' = fromMaybe intentionalSilenceForInternalUseOnly_ <<< hush <<< runParser cycleP

parse :: String -> CycleLength -> NextCycle
parse str dur = asScore
  $ maybe (pure intentionalSilenceForInternalUseOnly) flattenScore
  $ join
  $ map
      ( NEL.fromList
          <<< compact
          <<< map NEL.fromList
          <<< (unrest <<< cycleToSequence dur)
      )
  $ hush
  $ runParser cycleP str

rend :: Cycle (Maybe Note) -> CycleLength -> NextCycle
rend cyn dur = asScore
  $ maybe (pure intentionalSilenceForInternalUseOnly) flattenScore
  $ NEL.fromList
  $ compact
  $ map NEL.fromList
  $ unrest
  $ cycleToSequence dur
  $ cyn

rendT :: NonEmptyList (NonEmptyList (NoteInTime (Maybe Note))) -> NextCycle
rendT cyn = asScore
  $ maybe (pure intentionalSilenceForInternalUseOnly) flattenScore
  $ NEL.fromList
  $ compact
  $ map NEL.fromList
  $ unrest
  $ cyn

c2s :: CycleLength -> Cycle (Maybe Note) -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
c2s = cycleToSequence

newtype ZipProps fns = ZipProps { | fns }

instance zipProps ::
  ( IsSymbol sym
  , Row.Cons sym (a -> b) x fns
  ) =>
  MappingWithIndex (ZipProps fns) (Proxy sym) a b where
  mappingWithIndex (ZipProps fns) prop = Record.get prop fns

tidal :: FullSceneBuilder (theFuture :: TheFuture) (buffers :: Instruments BrowserAudioBuffer) Unit
tidal = usingc
  ( thePresent wag <<< buffers
      { kick0: "https://freesound.org/data/previews/171/171104_2394245-hq.mp3"
      , sideStick0: "https://freesound.org/data/previews/209/209890_3797507-hq.mp3"
      , snare0: "https://freesound.org/data/previews/495/495777_10741529-hq.mp3"
      , clap0: "https://freesound.org/data/previews/183/183102_2394245-hq.mp3"
      , snareRoll0: "https://freesound.org/data/previews/50/50710_179538-hq.mp3"
      , kick1: "https://freesound.org/data/previews/148/148634_2614600-hq.mp3"
      , closedHH0: "https://freesound.org/data/previews/269/269720_4965320-hq.mp3"
      , shaker0: "https://freesound.org/data/previews/432/432205_8738244-hq.mp3"
      , openHH0: "https://freesound.org/data/previews/416/416249_8218607-hq.mp3"
      , tamb0: "https://freesound.org/data/previews/207/207925_19852-hq.mp3"
      , crash0: "https://freesound.org/data/previews/528/528490_3797507-hq.mp3"
      , ride0: "https://freesound.org/data/previews/270/270138_1125482-hq.mp3"
      , intentionalSilenceForInternalUseOnly: "https://freesound.org/data/previews/459/459659_4766646-lq.mp3"
      }
  )
  acc
  \(SceneI { time, headroomInSeconds, trigger, world: { buffers } }) control ->
    let
      theFuture = maybe control.backToTheFuture _.theFuture trigger
      toActualize = hmap
        ( \(v :: Voice) ->
            { time
            , headroomInSeconds
            , input: _
            } $ { next: _ } $ _.next $ unwrap v
        )
        (unFuture theFuture)
      actualized = hmapWithIndex (ZipProps control.buffers) toActualize

    in
      { control: { buffers: tails actualized, backToTheFuture: theFuture }
      , scene: speaker
          ( gain 1.0
              ( fromTemplate (Proxy :: _ "voices") actualized \_ future ->
                  gain 1.0
                    ( fromTemplate (Proxy :: _ "instruments") (extract future) \_ -> case _ of
                        Just
                          ( Buffy
                              { starting
                              , startTime
                              , rest:
                                  { sampleF
                                  , rateFoT
                                  , volumeFoT
                                  , duration
                                  , cycleStartsAt
                                  , currentCycle
                                  , littleCycleLength
                                  }
                              }
                          ) ->
                          let
                            sampleTime = time - startTime
                            bigCycleTime = time - cycleStartsAt
                            littleCycleTime = time - (cycleStartsAt + (toNumber currentCycle * littleCycleLength))
                            thisIsTime =
                              { sampleTime
                              , bigCycleTime
                              , littleCycleTime
                              , clockTime: time
                              }
                            vol = ff globalFF $ pure $ volumeFoT thisIsTime
                          in
                            gain
                              ( if time > startTime + duration then
                                  let
                                    cs2 x0 x1 y1 t y0 = calcSlope x0 y0 x1 y1 t
                                  in
                                    cs2 (startTime + duration) (startTime + duration + 0.5) 0.0 time <$> vol
                                else vol
                              )
                              ( playBuf
                                  { onOff:
                                      ff globalFF
                                        $
                                          if starting then
                                            ff (max 0.0 (startTime - time)) (pure OffOn)
                                          else
                                            pure On
                                  , playbackRate: ff globalFF $ pure $ rateFoT thisIsTime
                                  }
                                  (sampleF buffers)
                              )
                        Nothing -> gain 0.0 (playBuf { onOff: Off } buffers.intentionalSilenceForInternalUseOnly)
                    )
              )
          )
      }

