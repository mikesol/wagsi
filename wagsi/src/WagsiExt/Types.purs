module WagsiExt.Types where

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

data LoopStartState
  = LoopNotStartedYet
  | LoopStarted
  | LoopRestarted
  | LoopStopped
  | LoopRestopped

data DiagnosticsHeartbeat
  = DiagnosticsStart
  | DiagnosticsEnd
  | DiagnosticsErrors Int

data DiagnosticsState
  = DiagnosticsNotStartedYet
  | DiagnosticsStarted { errorCount :: Int }
  | DiagnosticsEnded { errorCount :: Int }
