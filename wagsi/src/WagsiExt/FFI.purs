module WagsiExt.FFI where

import Prelude
import Effect (Effect)
import WagsiExt.Types (DiagnosticsBeginCallbacks, DiagnosticsEndCallbacks, DidSaveCallbacks, DiagnosticsInfo, HandleDiagnosticsCallbacks, StartLoopCallbacks, StopLoopCallbacks)

foreign import setDidSaveCallback :: DidSaveCallbacks -> String -> (Unit -> Effect Unit) -> Effect Unit

foreign import setHandleDiagnosticsCallback :: HandleDiagnosticsCallbacks -> String -> (DiagnosticsInfo -> Effect Unit) -> Effect Unit

foreign import setStartLoopCallback :: StartLoopCallbacks -> String -> (Unit -> Effect Unit) -> Effect Unit

foreign import setStopLoopCallback :: StopLoopCallbacks -> String -> (Unit -> Effect Unit) -> Effect Unit

foreign import setDiagnosticsBeginCallback :: DiagnosticsBeginCallbacks -> String -> (Unit -> Effect Unit) -> Effect Unit

foreign import setDiagnosticsEndCallback :: DiagnosticsEndCallbacks -> String -> (Unit -> Effect Unit) -> Effect Unit

foreign import removeDidSaveCallback :: DidSaveCallbacks -> String -> Effect Unit

foreign import removeHandleDiagnosticsCallback :: HandleDiagnosticsCallbacks -> String -> Effect Unit

foreign import removeStartLoopCallback :: StartLoopCallbacks -> String -> Effect Unit

foreign import removeStopLoopCallback :: StopLoopCallbacks -> String -> Effect Unit

foreign import removeDiagnosticsBeginCallback :: DiagnosticsBeginCallbacks -> String -> Effect Unit

foreign import removeDiagnosticsEndCallback :: DiagnosticsEndCallbacks -> String -> Effect Unit
