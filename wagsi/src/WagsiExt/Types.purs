module WagsiExt.Types where

import Prelude

type TextDocument = { fileName :: String }

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

derive instance eqLoopHeartbeat :: Eq LoopHeartbeat

data LoopState
  = LoopNotStartedYet
  | LoopStarted
  | LoopRestarted
  | LoopStopped
  | LoopRestopped

derive instance eqLoopStartState :: Eq LoopState

data DiagnosticsHeartbeat
  = DiagnosticsStart
  | DiagnosticsEnd
  | DiagnosticsErrors Int

derive instance eqDiagnosticsHeartbeat :: Eq DiagnosticsHeartbeat

data DiagnosticsState
  = DiagnosticsNotStartedYet
  | DiagnosticsStarted { errorCount :: Int }
  | DiagnosticsEnded { errorCount :: Int }

derive instance eqDiagnosticsState :: Eq DiagnosticsState

