module WagsiExt.Types where

import Prelude
import Data.Generic.Rep (class Generic)
import Data.Show.Generic (genericShow)

type TextDocument
  = { fileName :: String }

type DiagnosticsInfo
  = { uri :: { path :: String }
    , diagnostics :: Array { severity :: Int }
    }

data DidSaveCallbacks

data HandleDiagnosticsCallbacks

data StartLoopCallbacks

data StopLoopCallbacks

data DiagnosticsBeginCallbacks

data DiagnosticsEndCallbacks

data LoopHeartbeat
  = LoopStart
  | LoopStop

derive instance genericLoopHeartbeat :: Generic LoopHeartbeat _

instance showLoopHeartbeat :: Show LoopHeartbeat where
  show = genericShow

derive instance eqLoopHeartbeat :: Eq LoopHeartbeat

data LoopState
  = LoopNotStartedYet
  | LoopStarted
  | LoopRestarted
  | LoopStopped
  | LoopRestopped

derive instance eqLoopState :: Eq LoopState

derive instance genericLoopState :: Generic LoopState _

instance showLoopState :: Show LoopState where
  show = genericShow

data DiagnosticsHeartbeat
  = DiagnosticsStart
  | DiagnosticsEnd
  | DiagnosticsErrors Int

derive instance eqDiagnosticsHeartbeat :: Eq DiagnosticsHeartbeat

derive instance genericDiagnosticsHeartbeat :: Generic DiagnosticsHeartbeat _

instance showDiagnosticsHeartbeat :: Show DiagnosticsHeartbeat where
  show = genericShow

data DiagnosticsState
  = DiagnosticsNotStartedYet
  | DiagnosticsStarted { errorCount :: Int }
  | DiagnosticsEnded { errorCount :: Int }

derive instance eqDiagnosticsState :: Eq DiagnosticsState

derive instance genericDiagnosticsState :: Generic DiagnosticsState _

instance showDiagnosticsState :: Show DiagnosticsState where
  show = genericShow
