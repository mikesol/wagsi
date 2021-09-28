module WAGSI.Plumbing.Tidal
  ( module WAGSI.Plumbing.Cycle
  , make
  , parse
  , impatient
  , parse'
  , tidal
  , plainly
  , s
  , rend
  , rendT
  , c2s
  , wag
  , openFuture
  ---
  , b
  , i
  , x
  , b_
  , i_
  , x_
  ---
  , onTags
  , onTags'
  , onTag
  , onTag'
  ---
  , lvg
  , lfn
  , lft
  , lfb
  , lfl
  , lfc
  , lfd
  , ltn
  , lts
  , ltd
  , ltt
  , lns
  , lnr
  , lnv
  ---
  , when_
  , prune
  , mapmap
  ---
  , cycleP
  , unrest
  , CycleLength(..)
  , NoteInTime(..)
  , NoteInFlattenedTime(..)
  , Voice(..)
  , Globals(..)
  , NextCycle(..)
  , RBuf
  , Next
  , TheFuture
  ) where

import Prelude hiding (between)

import Control.Alt ((<|>))
import Control.Comonad (extract)
import Control.Comonad.Cofree ((:<))
import Control.Monad.State (evalState, get, put)
import Data.Array as A
import Data.Either (Either(..), hush)
import Data.Filterable (compact, filter, filterMap, maybeBool)
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Generic.Rep (class Generic)
import Data.Int (fromString, toNumber)
import Data.Lens (Lens', Prism', _1, _Just, over, prism')
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Record (prop)
import Data.List (List(..), fold, foldMap, foldl, (:))
import Data.List as L
import Data.List.NonEmpty (sortBy)
import Data.List.NonEmpty as NEL
import Data.List.Types (NonEmptyList(..))
import Data.Maybe (Maybe(..), fromMaybe, maybe)
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.NonEmpty ((:|))
import Data.Profunctor.Choice (class Choice)
import Data.Profunctor.Strong (class Strong)
import Data.Set as Set
import Data.Show.Generic (genericShow)
import Data.String.CodeUnits (fromCharArray, singleton)
import Data.Symbol (class IsSymbol)
import Data.Traversable (sequence, traverse)
import Data.Tuple.Nested (type (/\))
import Data.Typelevel.Num (class Pos, D8)
import Data.Unfoldable (replicate)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Random (randomInt)
import FRP.Behavior (Behavior)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import Foreign.Object as Object
import Heterogeneous.Mapping (class MappingWithIndex, hmap, hmapWithIndex)
import Prim.Row (class Lacks, class Nub, class Union)
import Prim.Row as Row
import Record as Record
import Text.Parsing.StringParser (Parser, fail, runParser, try)
import Text.Parsing.StringParser.CodeUnits (satisfy, oneOf, skipSpaces, string, alphaNum, anyDigit, char)
import Text.Parsing.StringParser.Combinators (between, many, many1, optionMaybe, sepBy, sepEndBy)
import Type.Proxy (Proxy(..))
import WAGS.Create.Optionals (speaker, gain, playBuf)
import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.BufferPool (AScoredBufferPool, Buffy(..), CfScoredBufferPool, makeScoredBufferPool)
import WAGS.Lib.Cofree (tails)
import WAGS.Lib.Learn (FullSceneBuilder, usingc)
import WAGS.Lib.Score (CfNoteStream')
import WAGS.Math (calcSlope)
import WAGS.Run (SceneI(..))
import WAGS.Template (fromTemplate)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer)
import WAGSI.Plumbing.Cycle (Cycle(..), flattenCycle, intentionalSilenceForInternalUseOnly_, reverse)
import WAGSI.Plumbing.Download (downloadFiles)
import WAGSI.Plumbing.Samples (Sample, Note(..), FoT)
import WAGSI.Plumbing.Samples as S

--- @@ ---

type RBuf
  =
  { sampleF :: { | S.Samples BrowserAudioBuffer } -> BrowserAudioBuffer
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
  { force :: Boolean
  , func ::
      { currentCount :: Number
      , prevCycleEnded :: Number
      , time :: Number
      , headroomInSeconds :: Number
      }
      -> CfNoteStream' RBuf Next
  }

derive instance newtypeNextCycle :: Newtype NextCycle _

-- | Only play the first cycle, and truncate/interrupt the playing cycle at the next sub-ending.
impatient :: NextCycle -> NextCycle
impatient = over (unto NextCycle <<< prop (Proxy :: _ "force")) (const true)

newtype Globals = Globals { gain :: { clockTime :: Number } -> Number }

derive instance newtypeGlobals :: Newtype Globals _

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
plainly = map (Voice <<< { globals: Globals { gain: const 1.0 }, next: _ })

s :: String -> CycleLength -> Voice
s = plainly <<< parse

--- @@ ---
newtype CycleLength = CycleLength Number

derive instance newtypeCycleLength :: Newtype CycleLength _
derive instance eqCycleLength :: Eq CycleLength
derive instance ordCycleLength :: Ord CycleLength

newtype NoteInTime note = NoteInTime
  { note :: note
  , startsAt :: Number
  , duration :: Number
  , cycleLength :: Number
  , tag :: Maybe String
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
  , positionInCycle :: Int
  , elementsInCycle :: Int
  , nCycles :: Int
  , duration :: Number
  , bigCycleLength :: Number
  , littleCycleLength :: Number
  , tag :: Maybe String
  }

derive instance newtypeNoteInFlattenedTime :: Newtype (NoteInFlattenedTime note) _
derive instance genericNoteInFlattenedTime :: Generic (NoteInFlattenedTime note) _
derive instance eqNoteInFlattenedTime :: Eq note => Eq (NoteInFlattenedTime note)
derive instance ordNoteInFlattenedTime :: Ord note => Ord (NoteInFlattenedTime note)
instance showNoteInFlattenedTime :: Show note => Show (NoteInFlattenedTime note) where
  show xx = genericShow xx

derive instance functorNoteInFlattenedTime :: Functor NoteInFlattenedTime

--- lenses
lvg :: Lens' Voice ({ clockTime :: Number } -> Number)
lvg = unto Voice <<< prop (Proxy :: _ "globals") <<< unto Globals <<< prop (Proxy :: _ "gain")

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

lft :: forall p note. Choice p => Strong p => p String String -> p (NoteInFlattenedTime note) (NoteInFlattenedTime note)
lft = unto NoteInFlattenedTime <<< prop (Proxy :: _ "tag") <<< _Just

ltn :: forall note. Lens' (NoteInTime note) note
ltn = unto NoteInTime <<< prop (Proxy :: _ "note")

lts :: forall note. Lens' (NoteInTime note) Number
lts = unto NoteInTime <<< prop (Proxy :: _ "startsAt")

ltd :: forall note. Lens' (NoteInTime note) Number
ltd = unto NoteInTime <<< prop (Proxy :: _ "duration")

ltt :: forall p note. Choice p => Strong p => p String String -> p (NoteInTime note) (NoteInTime note)
ltt = unto NoteInTime <<< prop (Proxy :: _ "tag") <<< _Just

lns :: Lens' Note Sample
lns = unto Note <<< prop (Proxy :: _ "sample")

lnr :: Lens' Note FoT
lnr = unto Note <<< prop (Proxy :: _ "rateFoT")

lnv :: Lens' Note FoT
lnv = unto Note <<< prop (Proxy :: _ "volumeFoT")

---

when_ :: forall a. (a -> Boolean) -> (a -> a) -> a -> a
when_ cond func aa = if cond aa then func aa else aa

prune :: forall a. (a -> Boolean) -> Prism' a a
prune = prism' identity <<< maybeBool

---

mapmap :: forall f g a b. Functor f => Functor g => (a -> b) -> f (g a) -> f (g b)
mapmap = map <<< map

---
b :: Cycle (Maybe Note) -> Array (Cycle (Maybe Note)) -> Cycle (Maybe Note)
b bx by = Branching { env: { weight: 1.0, tag: Nothing }, nel: NonEmptyList (bx :| L.fromFoldable by) }

b_ :: Cycle (Maybe Note) -> Cycle (Maybe Note)
b_ bx = b bx []

i :: Cycle (Maybe Note) -> Array (Cycle (Maybe Note)) -> Cycle (Maybe Note)
i sx sy = Internal { env: { weight: 1.0, tag: Nothing }, nel: NonEmptyList (sx :| L.fromFoldable sy) }

i_ :: Cycle (Maybe Note) -> Cycle (Maybe Note)
i_ sx = i sx []

x :: Cycle (Maybe Note) -> Array (Cycle (Maybe Note)) -> Cycle (Maybe Note)
x xx xy = Simultaneous { env: { weight: 1.0, tag: Nothing }, nel: NonEmptyList (xx :| L.fromFoldable xy) }

x_ :: Cycle (Maybe Note) -> Cycle (Maybe Note)
x_ sx = x sx []

sampleName :: Parser String
sampleName = map (fromCharArray <<< A.fromFoldable <<< NEL.toList) (many1 $ oneOf [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ':', '~' ])

---
whiteSpace1 :: Parser String
whiteSpace1 = do
  cs <- many1 (satisfy \c -> c == '\n' || c == '\r' || c == ' ' || c == '\t')
  pure (foldMap singleton cs)

type AfterMatter = { asInternal :: Maybe (NonEmptyList Unit) }

afterMatterP :: Parser AfterMatter
afterMatterP = do
  asInternal <-
    optionMaybe $
      ( ( fromString
            <<< fromCharArray
            <<< A.fromFoldable <$> (char '*' *> many anyDigit)
        ) >>= maybe (fail "Could not parse int")
          ( \v -> case (NEL.fromList $ replicate v unit) of
              Just vv -> pure vv
              Nothing -> fail "Number must be positive"
          )
      )
  pure { asInternal }

type Tag = { tag :: Maybe String }

tagP :: Parser Tag
tagP = do
  tag <- optionMaybe (map (fromCharArray <<< A.fromFoldable) (char ';' *> many1 alphaNum))
  pure { tag }

weightP :: Parser Number
weightP = do
  _ <- skipSpaces
  add 1.0 <<< toNumber <<< L.length <$> sepEndBy (char '_') whiteSpace1

sampleP :: Parser (Maybe Note)
sampleP = do
  possiblySample <- sampleName
  case Object.lookup possiblySample S.nameToSampleMNO of
    Nothing -> fail "Not a sample name"
    Just foundSample -> pure foundSample

internalcyclePInternal :: Parser (Cycle (Maybe Note))
internalcyclePInternal = Internal <$> do
  nel <- between (skipSpaces *> char '[' *> skipSpaces) (skipSpaces *> char ']' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      Sequential { nel } -> pure nel
      xx -> pure (pure xx)
  { tag } <- tagP
  weight <- weightP
  pure { nel, env: { weight, tag } }

branchingcyclePInternal :: Parser (Cycle (Maybe Note))
branchingcyclePInternal = Branching <$> do
  nel <- between (skipSpaces *> char '<' *> skipSpaces) (skipSpaces *> char '>' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      Sequential { nel } -> pure nel
      xx -> pure (pure xx)
  { tag } <- tagP
  weight <- weightP
  pure { nel, env: { weight, tag } }

simultaneouscyclePInternal :: Unit -> Parser (Cycle (Maybe Note))
simultaneouscyclePInternal _ = Simultaneous <<< { env: { weight: 1.0, tag: Nothing }, nel: _ } <$> do
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
sequentialcyclePInternal = Sequential <<< { env: { weight: 1.0, tag: Nothing }, nel: _ } <$> do
  skipSpaces
  leadsWith <- try internalcyclePInternal <|> singleSampleP
  skipSpaces
  rest <- joinSequential <$> many (cyclePInternal unit)
  pure (NonEmptyList (leadsWith :| rest))

singleSampleP :: Parser (Cycle (Maybe Note))
singleSampleP = do
  skipSpaces
  sample <- sampleP
  afterMatter <- afterMatterP
  skipSpaces
  { tag } <- tagP
  weight <- weightP
  pure $ case afterMatter.asInternal of
    Nothing -> SingleNote { env: { weight, tag }, val: sample }
    Just ntimes -> Internal { env: { weight, tag }, nel: map (const $ SingleNote { env: { weight: 1.0, tag: Nothing }, val: sample }) ntimes }

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
  go (Branching { env, nel }) = Branching { env, nel: map go nel }
  go (Simultaneous { env, nel }) = Simultaneous { env, nel: map go nel }
  go (Sequential { env, nel }) = Sequential { env, nel: map go nel }
  go (Internal { env, nel }) = Internal { env, nel: map go nel }
  go (SingleNote note) = SingleNote note

flatMap :: NonEmptyList (NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))) -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
flatMap (NonEmptyList (aa :| Nil)) = aa
flatMap (NonEmptyList (aa :| bb : cc)) = join $ aa # map \a' -> flatMap (wrap (bb :| cc)) # map \b' -> a' <> b'

getWeight :: forall a. Cycle a -> Number
getWeight (Branching { env: { weight } }) = weight
getWeight (Simultaneous { env: { weight } }) = weight
getWeight (Sequential { env: { weight } }) = weight
getWeight (Internal { env: { weight } }) = weight
getWeight (SingleNote { env: { weight } }) = weight

onTags :: forall a. (Set.Set String -> Boolean) -> (a -> a) -> Cycle a -> Cycle a
onTags pf f = go Set.empty
  where
  go' st fx env nel = fx { env, nel: map (go ((Set.fromFoldable env.tag) <> st)) nel }
  go st (Branching { env, nel }) = go' st Branching env nel
  go st (Simultaneous { env, nel }) = go' st Simultaneous env nel
  go st (Sequential { env, nel }) = go' st Sequential env nel
  go st (Internal { env, nel }) = go' st Internal env nel
  go st (SingleNote { env, val }) = let res = (Set.fromFoldable env.tag) <> st in if pf res then SingleNote { env, val: f val } else SingleNote { env, val }

onTag :: forall a. String -> (a -> a) -> Cycle a -> Cycle a
onTag = onTags <<< Set.member

onTags' :: forall a. (Set.Set String -> Boolean) -> (a -> a) -> Cycle a -> Cycle a
onTags' pf f = go Set.empty
  where
  go' st fx env nel = fx { env, nel: map (go st) nel }
  go st (Branching { env, nel }) = go' st Branching env nel
  go st (Simultaneous { env, nel }) = go' st Simultaneous env nel
  go st (Sequential { env, nel }) = go' st Sequential env nel
  go st (Internal { env, nel }) = go' st Internal env nel
  go st (SingleNote { env, val }) = let res = (Set.fromFoldable env.tag) <> st in if pf res then SingleNote { env, val: f val } else SingleNote { env, val }

onTag' :: forall a. String -> (a -> a) -> Cycle a -> Cycle a
onTag' = onTags' <<< Set.member

cycleToSequence :: CycleLength -> Cycle (Maybe Note) -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
cycleToSequence (CycleLength cycleLength) = go { currentSubdivision: cycleLength, currentOffset: 0.0 }
  where
  go state (Branching { nel }) = join $ map (go state) nel
  go state (Simultaneous { nel }) = map (sortBy (compare `on` (unwrap >>> _.startsAt)))
    $ flatMap
    $ map (go state) nel
  go state (Sequential { nel }) = seq state nel
  go state (Internal { nel }) = seq state nel
  go state (SingleNote { env: { tag }, val }) = pure $ pure $ NoteInTime
    { duration: state.currentSubdivision
    , startsAt: state.currentOffset
    , note: val
    , cycleLength
    , tag
    }
  seq state nel =
    let
      allWeights = foldl (+) 0.0 (map getWeight nel)
      withStateInfo = evalState
        ( ( traverse \vv -> do
              ii <- get
              let wt = getWeight vv
              put $ ii + wt
              pure
                { currentSubdivision: state.currentSubdivision * wt / allWeights
                , currentOffset: state.currentOffset + state.currentSubdivision * ii / allWeights
                , vv
                }
          ) nel
        )
        0.0
    in
      flatMap $ map
        (\{ currentSubdivision, currentOffset, vv } -> go { currentSubdivision, currentOffset } vv)
        withStateInfo

unrest :: NonEmptyList (NonEmptyList (NoteInTime (Maybe Note))) -> List (List (NoteInTime Note))
unrest = filter (not <<< eq Nil) <<< NEL.toList <<< map go
  where
  go =
    filterMap
      ( \(NoteInTime { startsAt, duration, cycleLength, tag, note }) ->
          NoteInTime <<< { startsAt, duration, cycleLength, tag, note: _ } <$> note
      ) <<< NEL.toList

asScore :: Boolean -> NonEmptyList (NoteInFlattenedTime Note) -> NextCycle
asScore force flattened = NextCycle { force, func: scoreInput }
  where
  scoreInput ccPce = go ccPce.currentCount ccPce.prevCycleEnded flattened
  go currentCount prevCycleEnded (NonEmptyList (NoteInFlattenedTime aa :| bb)) =
    let
      st = prevCycleEnded + aa.bigStartsAt
    in
      { startsAfter: st - currentCount
      , rest:
          { sampleF: S.sampleToBuffers (unwrap aa.note).sample
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
          case bb of
            Nil -> nc.func
              { currentCount: st
              , prevCycleEnded: prevCycleEnded + aa.bigCycleLength
              , time
              , headroomInSeconds
              }
            cc : dd ->
              if nc.force && aa.positionInCycle == aa.elementsInCycle - 1 then nc.func
                { currentCount: st
                , prevCycleEnded: prevCycleEnded + aa.littleCycleLength * toNumber (aa.currentCycle + 1)
                , time
                , headroomInSeconds
                }
              else go st prevCycleEnded (NonEmptyList (cc :| dd))

flattenScore :: NonEmptyList (NonEmptyList (NoteInTime Note)) -> NonEmptyList (NoteInFlattenedTime Note)
flattenScore l = flattened
  where
  ll = NEL.length l
  flattened = join $ mapWithIndex
    ( \ii -> mapWithIndex
        ( \jj (NoteInTime { note, duration, startsAt, cycleLength, tag }) -> NoteInFlattenedTime
            { note
            , duration
            , bigStartsAt: startsAt + cycleLength * toNumber ii
            , currentCycle: ii
            , elementsInCycle: NEL.length (NEL.head l)
            , nCycles: NEL.length l
            , positionInCycle: jj
            , littleStartsAt: startsAt
            , littleCycleLength: cycleLength
            , bigCycleLength: cycleLength * toNumber ll
            , tag
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
          } $ _.func $ unwrap $ asScore false (pure intentionalSilenceForInternalUseOnly)
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
  { globals: Globals { gain: const 0.0 }
  , next: asScore false (pure intentionalSilenceForInternalUseOnly)
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
      { sample: S.intentionalSilenceForInternalUseOnly__Sample
      , rateFoT: const 1.0
      , volumeFoT: const 1.0
      }
  , bigStartsAt: 0.0
  , littleStartsAt: 0.0
  , duration: 0.25
  , elementsInCycle: 1
  , nCycles: 1
  , positionInCycle: 0
  , currentCycle: 0
  , bigCycleLength: 0.25
  , littleCycleLength: 0.25
  , tag: Nothing
  }

parse' :: String -> Cycle (Maybe Note)
parse' = fromMaybe intentionalSilenceForInternalUseOnly_ <<< hush <<< runParser cycleP

parse :: String -> CycleLength -> NextCycle
parse str dur = asScore false
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
rend cyn dur = asScore false
  $ maybe (pure intentionalSilenceForInternalUseOnly) flattenScore
  $ NEL.fromList
  $ compact
  $ map NEL.fromList
  $ unrest
  $ cycleToSequence dur
  $ cyn

rendT :: NonEmptyList (NonEmptyList (NoteInTime (Maybe Note))) -> NextCycle
rendT cyn = asScore false
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

futureMaker :: { | EWF (CfScoredBufferPool Next NBuf RBuf -> Globals -> { future :: CfScoredBufferPool Next NBuf RBuf, globals :: Globals }) }
futureMaker = hmap (\(_ :: Unit) -> { future: _, globals: _ } :: CfScoredBufferPool Next NBuf RBuf -> Globals -> { future :: CfScoredBufferPool Next NBuf RBuf, globals :: Globals }) (mempty :: { | EWF Unit })

tidal :: FullSceneBuilder (theFuture :: TheFuture) (buffers :: { | S.Samples BrowserAudioBuffer }) Unit
tidal = usingc
  (thePresent wag <<< downloadFiles)
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
      myGlobals = hmap
        ( \(v :: Voice) -> _.globals $ unwrap v
        )
        (unFuture theFuture)
      actualized = hmapWithIndex (ZipProps control.buffers) toActualize
      forTemplate = hmapWithIndex (ZipProps (hmapWithIndex (ZipProps futureMaker) actualized)) myGlobals
    in
      { control: { buffers: tails actualized, backToTheFuture: theFuture }
      , scene: speaker
          ( gain 1.0
              ( fromTemplate (Proxy :: _ "voices") forTemplate \_ { future, globals } ->
                  gain ((unwrap globals).gain { clockTime: time })
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
                                  , bigCycleLength
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
                              , normalizedClockTime: 0.0 -- cuz it's infinite :-P
                              , normalizedSampleTime: sampleTime / duration
                              , normalizedBigCycleTime: bigCycleTime / bigCycleLength
                              , normalizedLittleCycleTime: littleCycleTime / littleCycleLength
                              }
                            vol = ff globalFF $ pure $ volumeFoT thisIsTime
                          in
                            gain
                              ( if time > startTime + duration then
                                  let
                                    cs2 x0 x1 y1 t y0 = calcSlope x0 y0 x1 y1 t
                                  in
                                    cs2 (startTime + duration) (startTime + duration + 0.25) 0.0 time <$> vol
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

