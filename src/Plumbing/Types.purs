module WAGSI.Plumbing.Types where

import Prelude

import Data.Function (on)
import Data.Generic.Rep (class Generic)
import Data.List.Types (NonEmptyList)
import Data.Map (Map)
import Data.Maybe (Maybe)
import Data.Newtype (class Newtype, unwrap)
import Data.Set (Set)
import Data.Show.Generic (genericShow)
import Data.Symbol (class IsSymbol)
import Data.Typelevel.Num (class Nat, class Succ, D0, D1, D8)
import Data.Vec as V
import Foreign.Object (Object)
import Heterogeneous.Mapping (class MappingWithIndex)
import Prim.Row as Row
import Prim.RowList as RL
import Record as Record
import Type.Proxy (Proxy(..))
import WAGS.Lib.BufferPool (AScoredBufferPool)
import WAGS.Lib.Score (CfNoteStream')
import WAGS.Tumult (Tumultuous)
import WAGS.WebAPI (BrowserAudioBuffer)

--

type ForwardBackwards = { forward :: BrowserAudioBuffer, backwards :: BrowserAudioBuffer }

newtype BufferUrl = BufferUrl String

derive instance newtypeBufferUrl :: Newtype BufferUrl _
derive instance eqBufferUrl :: Eq BufferUrl
derive instance ordBufferUrl :: Ord BufferUrl
instance showBufferUrl :: Show BufferUrl where
  show (BufferUrl s) = "BufferUrl <" <> s <> ">"

type SampleCache = Map Sample { url :: BufferUrl, buffer :: ForwardBackwards }

--- @@ ---

type RBuf
  =
  { sampleFoT :: UnsampledTimeIs -> Sample
  , forward :: Boolean
  , rateFoT :: FoT
  , bufferOffsetFoT :: FoT
  , volumeFoT :: FoT
  , cycleStartsAt :: Number
  , bigCycleDuration :: Number
  , littleCycleDuration :: Number
  , currentCycle :: Int
  , bigStartsAt :: Number
  , littleStartsAt :: Number
  , duration :: Number
  }

newtype NextCycle = NextCycle
  { force :: Boolean
  , samples :: Set Sample
  , func ::
      { currentCount :: Number
      , prevCycleEnded :: Number
      , time :: Number
      , headroomInSeconds :: Number
      }
      -> CfNoteStream' RBuf Next
  }

derive instance newtypeNextCycle :: Newtype NextCycle _

newtype Globals = Globals
  { gain :: O'Past
  , fx :: ClockTimeIs -> Tumultuous D1 "output" (voice :: Unit)
  }

derive instance newtypeGlobals :: Newtype Globals _

newtype Voice = Voice { globals :: Globals, next :: NextCycle }

derive instance newtypeVoice :: Newtype Voice _

type EWF' (v :: Type) r = (earth :: v, wind :: v, fire :: v | r)
type EWF (v :: Type) = EWF' v ()

type AH' (v :: Type) r = (air :: v, heart :: v | r)
type AH (v :: Type) = AH' v ()

newtype TheFuture = TheFuture
  { | EWF' Voice
      ( AH' (Maybe DroneNote)
          (sounds :: Map Sample BufferUrl, title :: String, preload :: Array Sample)
      )
  }

derive instance newtypeTheFuture :: Newtype TheFuture _

--- @@ ---
newtype CycleDuration = CycleDuration Number

derive instance newtypeCycleDuration :: Newtype CycleDuration _
derive instance eqCycleDuration :: Eq CycleDuration
derive instance ordCycleDuration :: Ord CycleDuration

newtype NoteInTime note = NoteInTime
  { note :: note
  , startsAt :: Number
  , duration :: Number
  , cycleDuration :: Number
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
  , bigCycleDuration :: Number
  , littleCycleDuration :: Number
  , tag :: Maybe String
  }

derive instance newtypeNoteInFlattenedTime :: Newtype (NoteInFlattenedTime note) _
derive instance genericNoteInFlattenedTime :: Generic (NoteInFlattenedTime note) _
derive instance eqNoteInFlattenedTime :: Eq note => Eq (NoteInFlattenedTime note)
derive instance ordNoteInFlattenedTime :: Ord note => Ord (NoteInFlattenedTime note)
instance showNoteInFlattenedTime :: Show note => Show (NoteInFlattenedTime note) where
  show xx = genericShow xx

derive instance functorNoteInFlattenedTime :: Functor NoteInFlattenedTime

--
type AfterMatter = { asInternal :: Maybe (NonEmptyList Unit) }

--
type Tag = { tag :: Maybe String }

--

type NBuf
  = D8

type Next = { next :: NextCycle }

type Acc
  =
  { buffers :: { | EWF (AScoredBufferPool Next NBuf RBuf) }
  , backToTheFuture :: TheFuture
  }

----------------

newtype ZipProps fns = ZipProps { | fns }

instance zipProps ::
  ( IsSymbol sym
  , Row.Cons sym (a -> b) x fns
  ) =>
  MappingWithIndex (ZipProps fns) (Proxy sym) a b where
  mappingWithIndex (ZipProps fns) prop = Record.get prop fns

---

class Nat n <= HomogenousToVec (rl :: RL.RowList Type) (r :: Row Type) (n :: Type) (a :: Type) | rl r -> n a where
  h2v' :: forall proxy. proxy rl -> { | r } -> V.Vec n a

instance h2vNil :: HomogenousToVec RL.Nil r D0 a where
  h2v' _ _ = V.empty

instance h2vCons ::
  ( IsSymbol key
  , Row.Lacks key r'
  , Row.Cons key a r' r
  , HomogenousToVec rest r n' a
  , Succ n' n
  ) =>
  HomogenousToVec (RL.Cons key a rest) r n a where
  h2v' _ r = V.cons (Record.get (Proxy :: _ key) r) (h2v' (Proxy :: _ rest) r)

---
data ICycle a
  = IBranching { nel :: NonEmptyList (ICycle a), env :: { weight :: Number, tag :: Maybe String } }
  | ISimultaneous { nel :: NonEmptyList (ICycle a), env :: { weight :: Number, tag :: Maybe String } }
  | ISequential { nel :: NonEmptyList (ICycle a), env :: { weight :: Number, tag :: Maybe String } }
  | IInternal { nel :: NonEmptyList (ICycle a), env :: { weight :: Number, tag :: Maybe String } }
  | ISingleNote { val :: a, env :: { weight :: Number, tag :: Maybe String } }

----
newtype DroneNote = DroneNote
  { sample :: Sample
  , forward :: Boolean
  , rateFoT :: O'Past
  , loopStartFoT :: O'Past
  , loopEndFoT :: O'Past
  , volumeFoT :: O'Past
  , tumultFoT :: ClockTimeIs -> Tumultuous D1 "output" (voice :: Unit)
  }

derive instance newtypeDroneNote :: Newtype DroneNote _
derive instance genericDroneNote :: Generic DroneNote _
instance eqDroneNote :: Eq DroneNote where
  eq = eq `on` (unwrap >>> _.sample)

instance ordDroneNote :: Ord DroneNote where
  compare = compare `on` (unwrap >>> _.sample)

instance showDroneNote :: Show DroneNote where
  show (DroneNote { sample }) = "DroneNote <" <> show sample <> ">"

----

newtype Note = Note
  { sampleFoT :: UnsampledTimeIs -> Sample
  , forward :: Boolean
  , rateFoT :: FoT
  , bufferOffsetFoT :: FoT
  , volumeFoT :: FoT
  }

unlockSample :: UnsampledTimeIs
unlockSample = UnsampledTimeIs
  { clockTime: 0.0
  , bigCycleTime: 0.0
  , littleCycleTime: 0.0
  , normalizedClockTime: 0.0
  , normalizedBigCycleTime: 0.0
  , normalizedLittleCycleTime: 0.0
  , littleCycleDuration: 0.0
  , bigCycleDuration: 0.0
  , entropy: 0.0
  , initialEntropy: 0.0
  }

derive instance newtypeNote :: Newtype Note _
derive instance genericNote :: Generic Note _
instance eqNote :: Eq Note where
  eq = eq `on` (unwrap >>> _.sampleFoT >>> (#) unlockSample)

instance ordNote :: Ord Note where
  compare = compare `on` (unwrap >>> _.sampleFoT >>> (#) unlockSample)

instance showNote :: Show Note where
  show (Note { sampleFoT }) = "Note <" <> show (sampleFoT unlockSample) <> ">"

----------------------------------

newtype Sample = Sample String

derive instance sampleNewtype :: Newtype Sample _
derive instance sampleEq :: Eq Sample
derive instance sampleOrd :: Ord Sample
instance sampleShow :: Show Sample where
  show (Sample i) = "Sample <" <> show i <> ">"

newtype ClockTimeIs = ClockTimeIs
  { clockTime :: Number
  , entropy :: Number
  }

derive instance newtypeClockTimeIs :: Newtype ClockTimeIs _

newtype UnsampledTimeIs =
  UnsampledTimeIs
    { clockTime :: Number
    , bigCycleTime :: Number
    , littleCycleTime :: Number
    , normalizedClockTime :: Number
    , normalizedBigCycleTime :: Number
    , normalizedLittleCycleTime :: Number
    , littleCycleDuration :: Number
    , bigCycleDuration :: Number
    , entropy :: Number
    , initialEntropy :: Number
    }

derive instance newtypeUnsampledTimeIs :: Newtype UnsampledTimeIs _

newtype TimeIs =
  TimeIs
    { clockTime :: Number
    , sampleTime :: Number
    , bigCycleTime :: Number
    , littleCycleTime :: Number
    , normalizedClockTime :: Number
    , normalizedSampleTime :: Number
    , normalizedBigCycleTime :: Number
    , normalizedLittleCycleTime :: Number
    , littleCycleDuration :: Number
    , bigCycleDuration :: Number
    , bufferDuration :: Number
    , entropy :: Number
    , initialEntropy :: Number
    }

derive instance newtypeTimeIs :: Newtype TimeIs _

newtype TimeIsAndWas time = TimeIsAndWas
  { timeIs :: time
  , valWas :: Maybe Number
  , timeWas :: Maybe time
  }

derive instance newtypeTimeIsAndWas :: Newtype (TimeIsAndWas time) _

type O'Clock = ClockTimeIs -> Number
type O'Past = TimeIsAndWas ClockTimeIs -> Number
type FoT = TimeIs -> Number
type FoP = TimeIsAndWas TimeIs -> Number

---------------------------------- samples
type Samples a = Object a
