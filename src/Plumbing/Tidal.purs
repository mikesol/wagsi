module WAGSI.Plumbing.Tidal
  ( make
  , parse
  , tidal
  , plainly
  , wag
  , openFuture
  --
  , CycleLength(..)
  , Voice(..)
  , Globals(..)
  , NextCycle(..)
  , RBuf
  , Next
  , Instruments
  , Instruments'
  , Instruments''
  , TheFuture
  ) where

import Prelude hiding (between)

import Control.Alt ((<|>))
import Control.Comonad (extract)
import Control.Comonad.Cofree ((:<))
import Data.Array as A
import Data.Either (Either(..), hush)
import Data.Filterable (compact, filter, filterMap)
import Data.Function (on)
import Data.FunctorWithIndex (mapWithIndex)
import Data.Generic.Rep (class Generic)
import Data.Int (toNumber)
import Data.Lens (_1, _2, over, traversed)
import Data.List (List(..), fold, (:))
import Data.List as L
import Data.List.NonEmpty (sortBy)
import Data.List.NonEmpty as NEL
import Data.List.Types (NonEmptyList(..))
import Data.Maybe (Maybe(..), maybe)
import Data.Newtype (class Newtype, unwrap, wrap)
import Data.NonEmpty ((:|))
import Data.Show.Generic (genericShow)
import Data.String.CodeUnits (fromCharArray)
import Data.Symbol (class IsSymbol)
import Data.Traversable (sequence, traverse)
import Data.Tuple (fst, snd, uncurry)
import Data.Tuple.Nested ((/\), type (/\))
import Data.Typelevel.Num (D8)
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
  = { sampleF :: Instruments BrowserAudioBuffer -> BrowserAudioBuffer, duration :: Number }

newtype NextCycle = NextCycle
  ( { currentCount :: Number, prevCycleEnded :: Number }
    -> CfNoteStream' RBuf Next
  )

derive instance newtypeNextCycle :: Newtype NextCycle _

newtype Globals = Globals Unit

newtype Voice = Voice { globals :: Globals, next :: NextCycle }

derive instance newtypeVoice :: Newtype Voice _

type EWF (v :: Type) = (earth :: v)

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
make cl r = TheFuture $ hmapWithIndex (ZipProps z) (hmap (\(_ :: (CycleLength -> Voice)) -> (wrap cl)) z)
  where
  z = Record.merge r openVoices :: { | EWF (CycleLength -> Voice) }

plainly :: forall f. Functor f => f NextCycle -> f Voice
plainly = map (Voice <<< { globals: Globals unit, next: _ })

--- @@ ---
newtype CycleLength = CycleLength Number

derive instance newtypeCycleLength :: Newtype CycleLength _
derive instance eqCycleLength :: Eq CycleLength
derive instance ordCycleLength :: Ord CycleLength

newtype Note = Note { sample :: Sample }

derive instance newtypeNote :: Newtype Note _
derive instance genericNote :: Generic Note _
derive instance eqNote :: Eq Note
derive instance ordNote :: Ord Note
instance showNote :: Show Note where
  show x = genericShow x

newtype NoteInTime' note = NoteInTime
  { note :: note
  , startsAt :: Number
  , duration :: Number
  , cycleLength :: Number
  }

type NoteInTime = NoteInTime' (Maybe Note)
type NoteInTime_ = NoteInTime' Note

derive instance newtypeNoteInTime :: Newtype (NoteInTime' note) _
derive instance genericNoteInTime :: Generic (NoteInTime' note) _
derive instance eqNoteInTime :: Eq note => Eq (NoteInTime' note)
derive instance ordNoteInTime :: Ord note => Ord (NoteInTime' note)
instance showNoteInTime :: Show note => Show (NoteInTime' note) where
  show x = genericShow x

derive instance functorNoteInTime :: Functor NoteInTime'

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
  show x = genericShow x

data Cycle
  = Branching (NonEmptyList Cycle)
  | Simultaneous (NonEmptyList Cycle)
  | Sequential (NonEmptyList Cycle)
  | Internal (NonEmptyList Cycle)
  | SingleNote (Maybe Note)

derive instance genericCycle :: Generic Cycle _
derive instance eqCycle :: Eq Cycle
derive instance ordCycle :: Ord Cycle
instance showCycle :: Show Cycle where
  show x = genericShow x

notes :: Array (String /\ Maybe Note)
notes =
  over (traversed <<< _2) (Just <<< Note <<< { sample: _ })
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

sampleP :: Parser (Maybe Note)
sampleP = go $ L.fromFoldable notes
  where
  go (a : b) = (try (string (fst a)) $> snd a) <|> go b
  go Nil = fail "Could not find a note"

internalcyclePInternal :: Parser Cycle
internalcyclePInternal = Internal <$>
  between (skipSpaces *> char '[' *> skipSpaces) (skipSpaces *> char ']' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      Sequential l -> pure l
      x -> pure (pure x)

branchingcyclePInternal :: Parser Cycle
branchingcyclePInternal = Branching <$>
  between (skipSpaces *> char '<' *> skipSpaces) (skipSpaces *> char '>' *> skipSpaces) do
    pure unit -- breaks recursion
    cyc <- cyclePInternal unit
    case cyc of
      Sequential l -> pure l
      x -> pure (pure x)

simultaneouscyclePInternal :: Unit -> Parser Cycle
simultaneouscyclePInternal _ = Simultaneous <$> do
  sep <- sepBy ((fromCharArray <<< A.fromFoldable) <$> many (satisfy (not <<< eq ','))) (string ",")
  case sep of
    Nil -> fail "Lacks comma"
    (_ : Nil) -> fail "Lacks comma"
    (a : b : c) -> case traverse (runParser reducedP) (NonEmptyList (a :| b : c)) of
      Left e -> fail $ show e
      Right r -> pure r
  where
  reducedP = try branchingcyclePInternal
    <|> try sequentialcyclePInternal
    <|> try internalcyclePInternal
    <|> try singleSampleP
    <|> fail "Could not parse cycle"

joinSequential :: List Cycle -> List Cycle
joinSequential Nil = Nil
joinSequential (Sequential (NonEmptyList (a :| b)) : c) = (a : joinSequential b) <> joinSequential c
joinSequential (a : b) = a : joinSequential b

sequentialcyclePInternal :: Parser Cycle
sequentialcyclePInternal = Sequential <$> do
  skipSpaces
  leadsWith <- try internalcyclePInternal <|> singleSampleP
  skipSpaces
  rest <- joinSequential <$> many (cyclePInternal unit)
  pure (NonEmptyList (leadsWith :| rest))

singleSampleP :: Parser Cycle
singleSampleP = SingleNote <$> do
  skipSpaces
  sample <- sampleP
  skipSpaces
  pure sample

cyclePInternal :: Unit -> Parser Cycle
cyclePInternal _ = try branchingcyclePInternal
  <|> try (simultaneouscyclePInternal unit)
  <|> try sequentialcyclePInternal
  <|> try singleSampleP
  <|> fail "Could not parse cycle"

cycleP :: Parser Cycle
cycleP = go <$> cyclePInternal unit
  where
  go (Branching (NonEmptyList (a :| Nil))) = go a
  go (Simultaneous (NonEmptyList (a :| Nil))) = go a
  go (Sequential (NonEmptyList (a :| Nil))) = go a
  go (Internal (NonEmptyList (a :| Nil))) = go a
  go (Branching nel) = Branching (map go nel)
  go (Simultaneous nel) = Simultaneous (map go nel)
  go (Sequential nel) = Sequential (map go nel)
  go (Internal nel) = Internal (map go nel)
  go (SingleNote sample) = SingleNote sample

flatMap :: NonEmptyList (NonEmptyList (NonEmptyList NoteInTime)) -> NonEmptyList (NonEmptyList NoteInTime)
flatMap (NonEmptyList (a :| Nil)) = a
flatMap (NonEmptyList (a :| b : c)) = join $ a # map \a' -> flatMap (wrap (b :| c)) # map \b' -> a' <> b'

cycleToSequence :: CycleLength -> Cycle -> NonEmptyList (NonEmptyList NoteInTime)
cycleToSequence (CycleLength cycleLength) = go { currentSubdivision: cycleLength, currentOffset: 0.0 }
  where
  go state (Branching nel) = join $ map (go state) nel
  go state (Simultaneous nel) = map (sortBy (compare `on` (unwrap >>> _.startsAt)))
    $ flatMap
    $ map (go state) nel
  go state (Sequential nel) = seq state nel
  go state (Internal nel) = seq state nel
  go state (SingleNote note) = pure $ pure $ NoteInTime
    { duration: state.currentSubdivision
    , startsAt: state.currentOffset
    , note
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

unrest :: NonEmptyList (NonEmptyList NoteInTime) -> List (List NoteInTime_)
unrest = filter (not <<< eq Nil) <<< NEL.toList <<< map go
  where
  go =
    filterMap
      ( \(NoteInTime { startsAt, duration, cycleLength, note }) ->
          NoteInTime <<< { startsAt, duration, cycleLength, note: _ } <$> note
      ) <<< NEL.toList

asScore :: NonEmptyList NoteInTime_ -> NextCycle
asScore flattened = NextCycle scoreInput
  where
  scoreInput ccPce = go ccPce.currentCount ccPce.prevCycleEnded flattened
  go currentCount prevCycleEnded (NonEmptyList (NoteInTime a :| b)) =
    let
      st = prevCycleEnded + a.startsAt
      args = case b of
        Nil -> (prevCycleEnded + a.cycleLength) /\ flattened
        (c : d) -> prevCycleEnded /\ NonEmptyList (c :| d)
    in
      { startsAfter: st - currentCount, rest: { sampleF: sampleToBuffers (unwrap a.note).sample, duration: a.duration } } :<
        \{ input: { next: (NextCycle nc) } } ->
          case b of
            Nil -> nc { currentCount: st, prevCycleEnded: fst args }
            _ -> uncurry (go st) args

flattenScore :: NonEmptyList (NonEmptyList NoteInTime_) -> NonEmptyList NoteInTime_
flattenScore l = flattened
  where
  ll = NEL.length l
  flattened = join $ mapWithIndex
    ( \i -> map
        ( \(NoteInTime { note, duration, startsAt, cycleLength }) -> NoteInTime
            { note
            , duration
            , startsAt: startsAt + cycleLength * toNumber i
            , cycleLength: cycleLength * toNumber ll
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

-- type Actualzied 

emptyPool = makeScoredBufferPool
  { startsAt: 0.0
  , noteStream: \_ -> ((#) { currentCount: 0.0, prevCycleEnded: 0.0 } $ unwrap $ asScore (pure intentionalSilenceForInternalUseOnly)) # map \{ startsAfter, rest } ->
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

intentionalSilenceForInternalUseOnly :: NoteInTime_
intentionalSilenceForInternalUseOnly = NoteInTime
  { note: Note { sample: IntentionalSilenceForInternalUseOnly }
  , startsAt: 0.0
  , duration: 0.25
  , cycleLength: 0.25
  }

parse :: String -> CycleLength -> NextCycle
parse s dur = asScore
  $ maybe (pure intentionalSilenceForInternalUseOnly) flattenScore
  $ join
  $ map
      ( NEL.fromList
          <<< compact
          <<< map NEL.fromList
          <<< (unrest <<< cycleToSequence dur)
      )
  $ hush
  $ runParser cycleP s

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
                        Just (Buffy { starting, startTime, rest: { sampleF, duration } }) ->
                          gain
                            ( ff globalFF $ pure $
                                if time > startTime + duration then
                                  calcSlope (startTime + duration) 1.0 (startTime + duration + 0.5) 0.0 time
                                else 1.0
                            )
                            ( playBuf
                                { onOff:
                                    ff globalFF
                                      $
                                        if starting then
                                          ff (max 0.0 (startTime - time)) (pure OffOn)
                                        else
                                          pure On
                                }
                                (sampleF buffers)
                            )
                        Nothing -> gain 0.0 (playBuf { onOff: Off } buffers.kick1)
                    )
              )
          )
      }

