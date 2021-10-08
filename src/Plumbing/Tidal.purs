module WAGSI.Plumbing.Tidal
  ( module WAGSI.Plumbing.Cycle
  , make
  , parse
  , impatient
  , plainly
  , s
  , rend
  , rendNit
  , c2s
  , s2f
  , wag
  , src
  , openFuture
  , massiveFuture
  , droneyFuture
  , reFuture
  ---
  , djQuickCheck
  ---
  , b
  , i
  , x
  , b_
  , i_
  , x_
  ---
  , onTagsCWithIndex
  , onTagsCWithIndex'
  , onTagsC
  , onTagsC'
  , onTagsWithIndex
  , onTagsWithIndex'
  , onTags
  , onTags'
  , onTagWithIndex
  , onTagWithIndex'
  , onTag
  , onTag'
  ---
  , lvg
  , lvt
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
  , lnbo
  , lnf
  , lnv
  , lds
  , ldr
  , ldls
  , ldle
  , ldf
  , ldv
  , lcw
  , ldt
  ---
  , when_
  , focus
  , mapmap
  , betwixt
  , derivative
  ---
  , asScore
  , openVoice
  , cycleP
  , unrest
  , class S
  , intentionalSilenceForInternalUseOnly
  ) where

import Prelude hiding (between)

import Control.Alt ((<|>))
import Control.Comonad.Cofree ((:<))
import Control.Monad.State (evalState, get, put)
import Data.Array as A
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA
import Data.Either (Either(..), hush)
import Data.Filterable (compact, filter, filterMap, maybeBool)
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Int (fromString, toNumber)
import Data.Lens (Lens', Prism', _Just, lens, over, prism', set)
import Data.Lens.Iso.Newtype (unto)
import Data.Lens.Record (prop)
import Data.List (List(..), fold, foldMap, foldl, (:))
import Data.List as L
import Data.List.NonEmpty (sortBy)
import Data.List.NonEmpty as NEL
import Data.List.Types (NonEmptyList(..))
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe, fromMaybe', maybe)
import Data.Newtype (unwrap, wrap)
import Data.NonEmpty ((:|))
import Data.Profunctor.Choice (class Choice)
import Data.Profunctor.Strong (class Strong)
import Data.Set as Set
import Data.String.CodeUnits (fromCharArray, singleton)
import Data.Traversable (class Foldable, sequence, traverse)
import Data.Tuple (fst, snd)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Typelevel.Num (D1)
import Data.Unfoldable (replicate)
import Data.Vec ((+>))
import Data.Vec as V
import Effect (Effect)
import Effect.Random (randomInt)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import Foreign.Object as O
import Heterogeneous.Mapping (hmap, hmapWithIndex)
import Prim.Row (class Nub, class Union)
import Prim.RowList (class RowToList)
import Record as Record
import Test.QuickCheck (arbitrary)
import Test.QuickCheck.Gen (Gen, arrayOf1, elements, frequency, resize)
import Text.Parsing.StringParser (Parser, fail, runParser, try)
import Text.Parsing.StringParser.CodeUnits (satisfy, oneOf, skipSpaces, string, alphaNum, anyDigit, char)
import Text.Parsing.StringParser.Combinators (between, many, many1, optionMaybe, sepBy, sepEndBy)
import Type.Proxy (Proxy(..))
import WAGS.Create (class Create)
import WAGS.Create.Optionals (input)
import WAGS.Graph.AudioUnit as CTOR
import WAGS.Tumult (Tumultuous)
import WAGS.Tumult.Make (tumultuously)
import WAGS.Validation (class NodesCanBeTumultuous, class SubgraphIsRenderable)
import WAGSI.Plumbing.Cycle (Cycle(..), flattenCycle, intentionalSilenceForInternalUseOnly_, reverse)
import WAGSI.Plumbing.FX (WAGSITumult)
import WAGSI.Plumbing.SampleDurs (sampleToDur, sampleToDur')
import WAGSI.Plumbing.Samples (class ClockTime, clockTime, dronesToSample, nameToSample)
import WAGSI.Plumbing.Samples as S
import WAGSI.Plumbing.Types (AH, AH', AfterMatter, BufferUrl, ClockTimeIs, CycleDuration(..), DroneNote(..), EWF, EWF', FoT, Globals(..), ICycle(..), NextCycle(..), Note(..), NoteInFlattenedTime(..), NoteInTime(..), O'Past, Sample(..), Tag, TheFuture(..), TimeIsAndWas, Voice(..), ZipProps(..))

-- | Only play the first cycle, and truncate/interrupt the playing cycle at the next sub-ending.
impatient :: NextCycle -> NextCycle
impatient = over (unto NextCycle <<< prop (Proxy :: _ "force")) (const true)

make
  :: forall inRec overfull rest
   . Union inRec
       ( EWF' (CycleDuration -> Voice)
           ( AH' (Maybe DroneNote)
               (title :: String, sounds :: Map.Map Sample BufferUrl)
           )
       )
       overfull
  => Nub overfull
       ( EWF' (CycleDuration -> Voice)
           ( AH' (Maybe DroneNote)
               (title :: String, sounds :: Map.Map Sample BufferUrl | rest)
           )
       )
  => Number
  -> { | inRec }
  -> TheFuture
make cl rr = TheFuture $ Record.union
  ( hmapWithIndex (ZipProps z)
      ( hmap (\(_ :: (CycleDuration -> Voice)) -> (wrap cl))
          { earth: z.earth
          , wind: z.wind
          , fire: z.fire
          }
      )
  )
  { air: z.air, heart: z.heart, title: z.title, sounds: z.sounds }
  where
  z =
    Record.merge rr
      ( Record.union openVoices
          $ Record.union openDrones { title: "wagsi @ tidal", sounds: Map.empty :: Map.Map Sample BufferUrl }
      )
      :: { | EWF' (CycleDuration -> Voice) (AH' (Maybe DroneNote) (title :: String, sounds :: Map.Map Sample BufferUrl | rest)) }

fx
  :: forall scene graph graphRL
   . RowToList graph graphRL
  => Create scene () graph
  => SubgraphIsRenderable graph "output" (voice :: Unit)
  => NodesCanBeTumultuous graphRL
  => { | scene }
  -> Tumultuous D1 "output" (voice :: Unit)
fx scene = tumultuously (scene +> V.empty)

hello :: CTOR.Input "voice" /\ {}
hello = input (Proxy :: _ "voice")

goodbye :: forall a. a -> { output :: a }
goodbye = { output: _ }

calm :: Tumultuous D1 "output" (voice :: Unit)
calm = fx $ goodbye hello

plainly :: NextCycle -> Voice
plainly = Voice <<< { globals: Globals { gain: const 1.0, fx: const calm }, next: _ }

--- lenses
lvg :: Lens' Voice O'Past
lvg = unto Voice <<< prop (Proxy :: _ "globals") <<< unto Globals <<< prop (Proxy :: _ "gain")

lvt :: Lens' Voice ({ clockTime :: Number } -> Tumultuous D1 "output" (voice :: Unit))
lvt = unto Voice <<< prop (Proxy :: _ "globals") <<< unto Globals <<< prop (Proxy :: _ "fx")

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

lnbo :: Lens' Note FoT
lnbo = unto Note <<< prop (Proxy :: _ "bufferOffsetFoT")

lnf :: Lens' Note Boolean
lnf = unto Note <<< prop (Proxy :: _ "forward")

lnv :: Lens' Note FoT
lnv = unto Note <<< prop (Proxy :: _ "volumeFoT")

lds :: Lens' DroneNote Sample
lds = unto DroneNote <<< prop (Proxy :: _ "sample")

ldr :: Lens' DroneNote O'Past
ldr = unto DroneNote <<< prop (Proxy :: _ "rateFoT")

ldls :: Lens' DroneNote O'Past
ldls = unto DroneNote <<< prop (Proxy :: _ "loopStartFoT")

ldle :: Lens' DroneNote O'Past
ldle = unto DroneNote <<< prop (Proxy :: _ "loopEndFoT")

ldf :: Lens' DroneNote Boolean
ldf = unto DroneNote <<< prop (Proxy :: _ "forward")

ldv :: Lens' DroneNote O'Past
ldv = unto DroneNote <<< prop (Proxy :: _ "volumeFoT")

ldt :: Lens' DroneNote (ClockTimeIs -> WAGSITumult)
ldt = unto DroneNote <<< prop (Proxy :: _ "tumultFoT")

lcw :: forall note. Lens' (Cycle note) Number
lcw = lens getWeight
  ( case _ of
      Branching ii -> \weight -> Branching $ ii { env = ii.env { weight = weight } }
      Simultaneous ii -> \weight -> Simultaneous $ ii { env = ii.env { weight = weight } }
      Internal ii -> \weight -> Internal $ ii { env = ii.env { weight = weight } }
      SingleNote ii -> \weight -> SingleNote $ ii { env = ii.env { weight = weight } }
  )

---

when_ :: forall a. (a -> Boolean) -> (a -> a) -> a -> a
when_ cond func aa = if cond aa then func aa else aa

focus :: forall a. (a -> Boolean) -> Prism' a a
focus = prism' identity <<< maybeBool

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
  -- if it is in our original stock, there may be a level
  -- of indirection. for example, chin and chin:0 are the same sample
  -- otherwise, if it is not in the original stock, we use the name as-is
  case O.lookup possiblySample S.nameToSampleMNO of
    Nothing -> pure $ Just $ Note
      { sample: Sample possiblySample
      , bufferOffsetFoT: const 0.0
      , rateFoT: const 1.0
      , forward: true
      , volumeFoT: const 1.0
      }
    Just foundSample -> pure foundSample

internalcyclePInternal :: Parser (ICycle (Maybe Note))
internalcyclePInternal = IInternal <$> do
  nel <- between (skipSpaces *> char '[' *> skipSpaces) (skipSpaces *> char ']' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      ISequential { nel } -> pure nel
      xx -> pure (pure xx)
  { tag } <- tagP
  weight <- weightP
  pure { nel, env: { weight, tag } }

branchingcyclePInternal :: Parser (ICycle (Maybe Note))
branchingcyclePInternal = IBranching <$> do
  nel <- between (skipSpaces *> char '<' *> skipSpaces) (skipSpaces *> char '>' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      ISequential { nel } -> pure nel
      xx -> pure (pure xx)
  { tag } <- tagP
  weight <- weightP
  pure { nel, env: { weight, tag } }

simultaneouscyclePInternal :: Unit -> Parser (ICycle (Maybe Note))
simultaneouscyclePInternal _ = ISimultaneous <<< { env: { weight: 1.0, tag: Nothing }, nel: _ } <$> do
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

joinSequential :: forall a. List (ICycle a) -> List (ICycle a)
joinSequential Nil = Nil
joinSequential (ISequential { nel: NonEmptyList (aa :| bb) } : cc) = (aa : joinSequential bb) <> joinSequential cc
joinSequential (aa : bb) = aa : joinSequential bb

sequentialcyclePInternal :: Parser (ICycle (Maybe Note))
sequentialcyclePInternal = ISequential <<< { env: { weight: 1.0, tag: Nothing }, nel: _ } <$> do
  skipSpaces
  leadsWith <- try internalcyclePInternal <|> singleSampleP
  skipSpaces
  rest <- joinSequential <$> many (cyclePInternal unit)
  pure (NonEmptyList (leadsWith :| rest))

singleSampleP :: Parser (ICycle (Maybe Note))
singleSampleP = do
  skipSpaces
  sample <- sampleP
  afterMatter <- afterMatterP
  skipSpaces
  { tag } <- tagP
  weight <- weightP
  pure $ case afterMatter.asInternal of
    Nothing -> ISingleNote { env: { weight, tag }, val: sample }
    Just ntimes -> IInternal { env: { weight, tag }, nel: map (const $ ISingleNote { env: { weight: 1.0, tag: Nothing }, val: sample }) ntimes }

cyclePInternal :: Unit -> Parser (ICycle (Maybe Note))
cyclePInternal _ = try branchingcyclePInternal
  <|> try (simultaneouscyclePInternal unit)
  <|> try sequentialcyclePInternal
  <|> try singleSampleP
  <|> fail "Could not parse cycle"

cycleP :: Parser (Cycle (Maybe Note))
cycleP = go <$> cyclePInternal unit
  where
  go (IBranching { nel: NonEmptyList (a :| Nil) }) = go a
  go (ISimultaneous { nel: NonEmptyList (a :| Nil) }) = go a
  go (ISequential { nel: NonEmptyList (a :| Nil) }) = go a
  go (IInternal { nel: NonEmptyList (a :| Nil) }) = go a
  go (IBranching { env, nel }) = Branching { env, nel: map go nel }
  go (ISimultaneous { env, nel }) = Simultaneous { env, nel: map go nel }
  go (ISequential { env, nel }) = Internal { env, nel: map go nel }
  go (IInternal { env, nel }) = Internal { env, nel: map go nel }
  go (ISingleNote note) = SingleNote note

flatMap :: NonEmptyList (NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))) -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
flatMap (NonEmptyList (aa :| Nil)) = aa
flatMap (NonEmptyList (aa :| bb : cc)) = join $ aa # map \a' -> flatMap (wrap (bb :| cc)) # map \b' -> a' <> b'

getWeight :: forall a. Cycle a -> Number
getWeight (Branching { env: { weight } }) = weight
getWeight (Simultaneous { env: { weight } }) = weight
getWeight (Internal { env: { weight } }) = weight
getWeight (SingleNote { env: { weight } }) = weight

onTagsCWithIndex :: forall a. (Set.Set String -> Boolean) -> (Int -> Cycle a -> Cycle a) -> Cycle a -> Cycle a
onTagsCWithIndex pf fff vvv = (go Set.empty 0 vvv).val
  where
  go' st ff ii env nel = let nst = ((Set.fromFoldable env.tag) <> st) in let folded = foldl (\axc cyc -> axc <> (pure (go nst (NEL.last axc).i cyc))) (pure (go nst ii (NEL.head nel))) (NEL.tail nel) in { i: _.i $ NEL.last folded, val: ff { env, nel: map _.val folded } }

  go :: Set.Set String -> Int -> Cycle a -> { i :: Int, val :: Cycle a }
  go st ii = case _ of
    Branching { env, nel } -> go' st Branching ii env nel
    Simultaneous { env, nel } -> go' st Simultaneous ii env nel
    Internal { env, nel } -> go' st Internal ii env nel
    SingleNote { env, val } -> let res = (Set.fromFoldable env.tag) <> st in if pf res then { i: ii + 1, val: fff ii $ SingleNote { env, val } } else { i: ii, val: SingleNote { env, val } }

onTagsC :: forall a. (Set.Set String -> Boolean) -> (Cycle a -> Cycle a) -> Cycle a -> Cycle a
onTagsC pf f = onTagsCWithIndex pf \_ -> f

onTagsCWithIndex' :: forall a. (Set.Set String -> Boolean) -> (Int -> Cycle a -> Cycle a) -> Cycle a -> Cycle a
onTagsCWithIndex' pf fff vvv = (go Set.empty 0 vvv).val
  where
  go' st ff ii env nel = let nst = st in let folded = foldl (\axc cyc -> axc <> (pure (go nst (NEL.last axc).i cyc))) (pure (go nst ii (NEL.head nel))) (NEL.tail nel) in { i: _.i $ NEL.last folded, val: ff { env, nel: map _.val folded } }

  go :: Set.Set String -> Int -> Cycle a -> { i :: Int, val :: Cycle a }
  go st ii = case _ of
    Branching { env, nel } -> go' st Branching ii env nel
    Simultaneous { env, nel } -> go' st Simultaneous ii env nel
    Internal { env, nel } -> go' st Internal ii env nel
    SingleNote { env, val } -> let res = (Set.fromFoldable env.tag) <> st in if pf res then { i: ii + 1, val: fff ii $ SingleNote { env, val } } else { i: ii, val: SingleNote { env, val } }

onTagsC' :: forall a. (Set.Set String -> Boolean) -> (Cycle a -> Cycle a) -> Cycle a -> Cycle a
onTagsC' pf f = onTagsCWithIndex' pf \_ -> f

onTagsWithIndex :: forall a. (Set.Set String -> Boolean) -> (Int -> a -> a) -> Cycle a -> Cycle a
onTagsWithIndex pf zz = onTagsCWithIndex pf (map <<< zz)

onTagsWithIndex' :: forall a. (Set.Set String -> Boolean) -> (Int -> a -> a) -> Cycle a -> Cycle a
onTagsWithIndex' pf zz = onTagsCWithIndex' pf (map <<< zz)

onTags :: forall a. (Set.Set String -> Boolean) -> (a -> a) -> Cycle a -> Cycle a
onTags pf = onTagsC pf <<< map

onTags' :: forall a. (Set.Set String -> Boolean) -> (a -> a) -> Cycle a -> Cycle a
onTags' pf = onTagsC' pf <<< map

onTagWithIndex :: forall a. String -> (Int -> a -> a) -> Cycle a -> Cycle a
onTagWithIndex = onTagsWithIndex <<< Set.member

onTagWithIndex' :: forall a. String -> (Int -> a -> a) -> Cycle a -> Cycle a
onTagWithIndex' = onTagsWithIndex' <<< Set.member

onTag :: forall a. String -> (a -> a) -> Cycle a -> Cycle a
onTag = onTags <<< Set.member

onTag' :: forall a. String -> (a -> a) -> Cycle a -> Cycle a
onTag' = onTags' <<< Set.member

cycleToSequence :: CycleDuration -> Cycle (Maybe Note) -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
cycleToSequence (CycleDuration cycleDuration) = go { currentSubdivision: cycleDuration, currentOffset: 0.0 }
  where
  go state (Branching { nel }) = join $ map (go state) nel
  go state (Simultaneous { nel }) = map (sortBy (compare `on` (unwrap >>> _.startsAt)))
    $ flatMap
    $ map (go state) nel
  go state (Internal { nel }) = seq state nel
  go state (SingleNote { env: { tag }, val }) = pure $ pure $ NoteInTime
    { duration: state.currentSubdivision
    , startsAt: state.currentOffset
    , note: val
    , cycleDuration
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
      ( \(NoteInTime { startsAt, duration, cycleDuration, tag, note }) ->
          NoteInTime <<< { startsAt, duration, cycleDuration, tag, note: _ } <$> note
      ) <<< NEL.toList

asScore :: Boolean -> NonEmptyList (NoteInFlattenedTime Note) -> NextCycle
asScore force flattened = NextCycle
  { force
  , samples: Set.fromFoldable $ map (unwrap >>> _.note >>> unwrap >>> _.sample) flattened
  , func: scoreInput
  }
  where
  scoreInput ccPce = go ccPce.currentCount ccPce.prevCycleEnded flattened
  go currentCount prevCycleEnded (NonEmptyList (NoteInFlattenedTime aa :| bb)) =
    let
      st = prevCycleEnded + aa.bigStartsAt
    in
      { startsAfter: st - currentCount
      , rest:
          { sampleF: \silence ->
              let
                unw = unwrap aa.note
              in
                maybe silence
                  (if unw.forward then _.buffer.forward else _.buffer.backwards) <<< Map.lookup unw.sample
          , cycleStartsAt: prevCycleEnded
          , rateFoT: (unwrap aa.note).rateFoT
          , bufferOffsetFoT: (unwrap aa.note).bufferOffsetFoT
          , volumeFoT: (unwrap aa.note).volumeFoT
          , bigCycleDuration: aa.bigCycleDuration
          , littleCycleDuration: aa.littleCycleDuration
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
              , prevCycleEnded: prevCycleEnded + aa.bigCycleDuration
              , time
              , headroomInSeconds
              }
            cc : dd ->
              if nc.force && aa.positionInCycle == aa.elementsInCycle - 1 then nc.func
                { currentCount: st
                , prevCycleEnded: prevCycleEnded + aa.littleCycleDuration * toNumber (aa.currentCycle + 1)
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
        ( \jj (NoteInTime { note, duration, startsAt, cycleDuration, tag }) -> NoteInFlattenedTime
            { note
            , duration
            , bigStartsAt: startsAt + cycleDuration * toNumber ii
            , currentCycle: ii
            , elementsInCycle: NEL.length (NEL.head l)
            , nCycles: NEL.length l
            , positionInCycle: jj
            , littleStartsAt: startsAt
            , littleCycleDuration: cycleDuration
            , bigCycleDuration: cycleDuration * toNumber ll
            , tag
            }
        )
    )
    l

openVoice :: Voice
openVoice = Voice
  { globals: Globals { gain: const 0.0, fx: const calm }
  , next: asScore false (pure intentionalSilenceForInternalUseOnly)
  }

openVoices :: { | EWF (CycleDuration -> Voice) }
openVoices = hmap (\(_ :: Unit) -> (const $ openVoice)) (mempty :: { | EWF Unit })

openDrones :: { | AH (Maybe DroneNote) }
openDrones = hmap (\(_ :: Unit) -> Nothing) (mempty :: { | AH Unit })

openFuture :: TheFuture
openFuture = TheFuture
  $ Record.union (hmap (\(_ :: Unit) -> openVoice) (mempty :: { | EWF Unit }))
  $ Record.union
      (hmap (\(_ :: Unit) -> Nothing) (mempty :: { | AH Unit }))
      { title: "wagsi @ tidal", sounds: (Map.empty :: Map.Map Sample BufferUrl) }

reFuture :: forall f. Foldable f => f Sample -> TheFuture
reFuture fdbl = set
  ( unto TheFuture
      <<< prop
        (Proxy :: _ "earth")
      <<< unto Voice
      <<< prop (Proxy :: _ "next")
      <<< unto NextCycle
      <<< prop (Proxy :: _ "samples")
  )
  (Set.fromFoldable fdbl)
  openFuture

massiveFuture :: TheFuture
massiveFuture = reFuture $ map snd nameToSample

droneyFuture :: TheFuture
droneyFuture = reFuture $ map snd dronesToSample

foreign import wagHandlers :: Effect (Object (TheFuture -> Effect Unit))

foreign import wag_ :: String -> (TheFuture -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

foreign import srcHandlers :: Effect (Object (String -> Effect Unit))

foreign import src_ :: String -> (String -> Effect Unit) -> Effect Unit

foreign import desrc_ :: String -> Effect Unit

wag :: Event TheFuture
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

src :: Event String
src =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    src_ id f
    pure (desrc_ id)

intentionalSilenceForInternalUseOnly :: (NoteInFlattenedTime Note)
intentionalSilenceForInternalUseOnly = NoteInFlattenedTime
  { note: Note
      { sample: S.intentionalSilenceForInternalUseOnly__Sample
      , rateFoT: const 1.0
      , forward: true
      , volumeFoT: const 1.0
      , bufferOffsetFoT: const 0.0
      }
  , bigStartsAt: 0.0
  , littleStartsAt: 0.0
  , duration: 0.25
  , elementsInCycle: 1
  , nCycles: 1
  , positionInCycle: 0
  , currentCycle: 0
  , bigCycleDuration: 0.25
  , littleCycleDuration: 0.25
  , tag: Nothing
  }

parse :: String -> Cycle (Maybe Note)
parse = fromMaybe intentionalSilenceForInternalUseOnly_ <<< hush <<< runParser cycleP

parseInternal :: String -> CycleDuration -> NextCycle
parseInternal str dur = asScore false
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

rend :: Cycle (Maybe Note) -> CycleDuration -> NextCycle
rend cyn dur = asScore false
  $ maybe (pure intentionalSilenceForInternalUseOnly) flattenScore
  $ NEL.fromList
  $ compact
  $ map NEL.fromList
  $ unrest
  $ cycleToSequence dur
  $ cyn

rendNit :: NonEmptyList (NonEmptyList (NoteInTime (Maybe Note))) -> NextCycle
rendNit = asScore false <<< s2f

c2s :: Cycle (Maybe Note) -> CycleDuration -> NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))
c2s = flip cycleToSequence

s2f :: NonEmptyList (NonEmptyList (NoteInTime (Maybe Note))) -> NonEmptyList (NoteInFlattenedTime Note)
s2f = maybe (pure intentionalSilenceForInternalUseOnly) flattenScore
  <<< NEL.fromList
  <<< compact
  <<< map NEL.fromList
  <<< unrest

----------------
-- dj quickcheck --

qcSamples :: NonEmptyArray Sample
qcSamples = map fst $ fromMaybe (sampleToDur') $ NEA.fromArray $ NEA.filter ((>) 0.8 <<< snd) sampleToDur

genSingleSample :: Gen Sample
genSingleSample = elements qcSamples

genSingleNote :: Gen (Cycle (Maybe Note))
genSingleNote =
  SingleNote <<< { env: { weight: 1.0, tag: Nothing }, val: _ } <<< Just <<< Note <<<
    { rateFoT: const 1.0
    , volumeFoT: const 1.0
    , forward: true
    , bufferOffsetFoT: const 0.0
    , sample: _
    } <$> genSingleSample

genRest :: Gen (Cycle (Maybe Note))
genRest = pure $ SingleNote { env: { weight: 1.0, tag: Nothing }, val: Nothing }

genSingleNoteOrRest :: Gen (Cycle (Maybe Note))
genSingleNoteOrRest = frequency (NonEmptyList ((7.0 /\ genSingleNote) :| (3.0 /\ genRest) : Nil))

nea2nel :: NonEmptyArray ~> NonEmptyList
nea2nel = NonEmptyList <<< (\(aa :| bb) -> aa :| L.fromFoldable bb) <<< NEA.toNonEmpty

genCycle :: Gen (Cycle (Maybe Note))
genCycle = go 0
  where
  genSameInternal nn = do
    sn <- genSingleNote
    ii <- case nn of
      0 -> elements $ NEA.fromNonEmpty (2 :| [ 3, 4, 5, 6 ])
      1 -> elements $ NEA.fromNonEmpty (2 :| [ 3, 4, 6 ])
      _ -> elements $ NEA.fromNonEmpty (2 :| [ 3, 4 ])
    pure $ Internal { env: { weight: 1.0, tag: Nothing }, nel: nea2nel $ NEA.fromNonEmpty (sn :| A.replicate (ii - 1) sn) }
  genDiffInternal nn = do
    let gg = go (nn + 1)
    ii <- case nn of
      0 -> elements $ NEA.fromNonEmpty (2 :| [ 3, 4, 8 ])
      1 -> elements $ NEA.fromNonEmpty (2 :| [ 4 ])
      _ -> elements $ NEA.fromNonEmpty (2 :| [])
    nel <- sequence $ nea2nel $ NEA.fromNonEmpty (gg :| A.replicate (ii - 1) gg)
    pure $ Internal { env: { weight: 1.0, tag: Nothing }, nel }
  genBranching nn = resize 3 (Branching <<< { env: { weight: 1.0, tag: Nothing }, nel: _ } <<< nea2nel <$> arrayOf1 (go (nn + 1)))
  genSimultaneous nn = resize 3 (Simultaneous <<< { env: { weight: 1.0, tag: Nothing }, nel: _ } <<< nea2nel <$> arrayOf1 (go (nn + 1)))
  go 0 =
    let
      zz = 0
    in
      frequency
        ( NonEmptyList
            ( (1.0 /\ (genBranching zz))
                :| (1.0 /\ (genSimultaneous zz))
                  : (1.0 /\ (genDiffInternal zz))
                  : Nil
            )
        )
  go 1 =
    let
      zz = 1
    in
      frequency
        ( NonEmptyList
            ( (1.0 /\ (genBranching zz))
                :| (1.0 /\ (genSimultaneous zz))
                  : (2.0 /\ (genDiffInternal zz))
                  : (4.0 /\ (genSameInternal zz))
                  : (3.0 /\ genSingleNoteOrRest)
                  : Nil
            )
        )
  go 2 =
    let
      zz = 2
    in
      frequency
        ( NonEmptyList
            ( (1.0 /\ (genBranching zz))
                :| (1.0 /\ (genSimultaneous zz))
                  : (1.0 /\ (genDiffInternal zz))
                  : (4.0 /\ (genSameInternal zz))
                  : (8.0 /\ genSingleNoteOrRest)
                  : Nil
            )
        )
  go 3 =
    let
      zz = 3
    in
      frequency
        ( NonEmptyList
            ( (1.0 /\ (genBranching zz))
                :| (1.0 /\ genSimultaneous zz)
                  : (1.0 /\ (genDiffInternal zz))
                  : (4.0 /\ (genSameInternal zz))
                  : (10.0 /\ genSingleNoteOrRest)
                  : Nil
            )
        )
  go _ = genSingleNoteOrRest

genVoice :: Number -> Gen { cycle :: Cycle (Maybe Note), voice :: Voice }
genVoice vol = do
  let globals = Globals { gain: const vol, fx: const calm }
  cycle <- genCycle
  cl' <- arbitrary
  let cl = CycleDuration (1.0 + 3.0 * cl')
  let next = asScore false $ s2f $ c2s cycle cl
  pure $ { cycle, voice: Voice { globals, next } }

djQuickCheck :: Gen { cycle :: Cycle (Maybe Note), future :: TheFuture }
djQuickCheck = do
  { cycle, voice: earth } <- genVoice 1.0
  wind <- pure openVoice
  fire <- pure openVoice
  pure $
    { cycle
    , future: TheFuture
        { earth
        , wind
        , fire
        , air: Nothing
        , heart: Nothing
        , title: "d j q u i c k c h e c k"
        , sounds: Map.empty
        }
    }

class S s where
  s :: s -> CycleDuration -> Voice

instance sString :: S String where
  s = map plainly <<< parseInternal

instance sCycle :: S (Cycle (Maybe Note)) where
  s = map plainly <<< rend

instance sNit :: S (NonEmptyList (NonEmptyList (NoteInTime (Maybe Note)))) where
  s = map plainly <<< pure <<< rendNit

instance sNitFT :: S (CycleDuration -> (NonEmptyList (NonEmptyList (NoteInTime (Maybe Note))))) where
  s = map plainly <<< map rendNit

instance sNift :: S (NonEmptyList (NoteInFlattenedTime Note)) where
  s = map plainly <<< pure <<< asScore false

instance sNiftFT :: S (CycleDuration -> (NonEmptyList (NoteInFlattenedTime Note))) where
  s = map plainly <<< map (asScore false)

instance sNextCycle :: S NextCycle where
  s = map plainly <<< pure

instance sNextCycleFT :: S (CycleDuration -> NextCycle) where
  s = map plainly

instance sVoice :: S Voice where
  s = const

instance sVoiceFT :: S (CycleDuration -> Voice) where
  s = identity

betwixt :: forall n. Ord n => n -> n -> n -> n
betwixt mn' mx' n = if n < mn then mn else if n > mx then mx else n
  where
  mn = min mn' mx'
  mx = max mn' mx'

derivative :: forall a. ClockTime a => (TimeIsAndWas a -> Number) -> Number -> TimeIsAndWas a -> Number
derivative f y v = fromMaybe' (\_ -> f v) do
  let v' = unwrap v
  let ti = v'.timeIs
  mti' <- v'.timeWas
  mn' <- v'.valWas
  pure $ (y * (clockTime ti - clockTime mti')) + mn'