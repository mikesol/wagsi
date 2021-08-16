module Main where

import Prelude

import Effect (Effect)
import WagsiExt.Types (DiagnosticsBeginCallbacks, DiagnosticsEndCallbacks, DidSaveCallbacks, HandleDiagnosticsCallbacks, StartLoopCallbacks, StopLoopCallbacks)

main ::
  { didSaveCallbacks :: DidSaveCallbacks
  , handleDiagnosticsCallbacks :: HandleDiagnosticsCallbacks
  , startLoopCallbacks :: StartLoopCallbacks
  , stopLoopCallbacks :: StopLoopCallbacks
  , diagnosticsBeginCallbacks :: DiagnosticsBeginCallbacks
  , diagnosticsEndCallbacks :: DiagnosticsEndCallbacks
  } ->
  Effect Unit
main _ = pure unit
