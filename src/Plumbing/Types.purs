module WAGSI.Plumbing.Types where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.List.Types (NonEmptyList)
import Data.Maybe (Maybe)
import Data.Newtype (class Newtype)
import Data.Show.Generic (genericShow)
import Data.Symbol (class IsSymbol)
import Data.Typelevel.Num (class Nat, class Succ, D0, D8)
import Data.Vec as V
import Heterogeneous.Mapping (class MappingWithIndex)
import Prim.Row as Row
import Prim.RowList as RL
import Record as Record
import Type.Proxy (Proxy(..))
import WAGS.Lib.BufferPool (AScoredBufferPool, CfScoredBufferPool)
import WAGS.Lib.Score (CfNoteStream')
import WAGS.WebAPI (BrowserAudioBuffer)
import WAGSI.Plumbing.Download (ForwardBackwards)
import WAGSI.Plumbing.Samples (FoT)
import WAGSI.Plumbing.Samples as S

--- @@ ---

type RBuf
  =
  { sampleF :: BrowserAudioBuffer -> { | S.Samples (Maybe ForwardBackwards) } -> BrowserAudioBuffer
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
  , func ::
      { currentCount :: Number
      , prevCycleEnded :: Number
      , time :: Number
      , headroomInSeconds :: Number
      }
      -> CfNoteStream' RBuf Next
  }

derive instance newtypeNextCycle :: Newtype NextCycle _

newtype Globals = Globals { gain :: { clockTime :: Number } -> Number }

derive instance newtypeGlobals :: Newtype Globals _

newtype Voice = Voice { globals :: Globals, next :: NextCycle }

derive instance newtypeVoice :: Newtype Voice _

type EWF' (v :: Type) r = (earth :: v, wind :: v, fire :: v | r)
type EWF (v :: Type) = EWF' v ()

newtype TheFuture = TheFuture { | EWF Voice }

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

type FutureAndGlobals = { future :: CfScoredBufferPool Next NBuf RBuf, globals :: Globals }

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