module Main where

import Prelude
import Control.Alt ((<|>))
import Data.Array as A
import Data.Filterable (filter)
import Effect (Effect)
import FRP.Event (fold)
import WagsiExt.Event (makeCbEvent)
import WagsiExt.FFI (removeDiagnosticsBeginCallback, removeDiagnosticsEndCallback, removeDidSaveCallback, removeHandleDiagnosticsCallback, removeStartLoopCallback, removeStopLoopCallback, setDiagnosticsBeginCallback, setDiagnosticsEndCallback, setDidSaveCallback, setHandleDiagnosticsCallback, setStartLoopCallback, setStopLoopCallback)
import WagsiExt.Types (DiagnosticsBeginCallbacks, DiagnosticsEndCallbacks, DiagnosticsHeartbeat(..), DiagnosticsInfo, DiagnosticsState(..), DidSaveCallbacks, HandleDiagnosticsCallbacks, LoopHeartbeat(..), LoopStartState(..), StartLoopCallbacks, StopLoopCallbacks)

diagnosticsInfoToErrorCount :: DiagnosticsInfo -> Int
diagnosticsInfoToErrorCount { diagnostics } = A.length $ filter (eq 0 <<< _.severity) diagnostics

main ::
  { didSaveCallbacks :: DidSaveCallbacks
  , handleDiagnosticsCallbacks :: HandleDiagnosticsCallbacks
  , startLoopCallbacks :: StartLoopCallbacks
  , stopLoopCallbacks :: StopLoopCallbacks
  , diagnosticsBeginCallbacks :: DiagnosticsBeginCallbacks
  , diagnosticsEndCallbacks :: DiagnosticsEndCallbacks
  } ->
  Effect Unit
main { didSaveCallbacks
, handleDiagnosticsCallbacks
, startLoopCallbacks
, stopLoopCallbacks
, diagnosticsBeginCallbacks
, diagnosticsEndCallbacks
} = pure unit
  where
  didSaveEvent = makeCbEvent setDidSaveCallback removeDidSaveCallback didSaveCallbacks

  handleDiagnosticsEvent = makeCbEvent setHandleDiagnosticsCallback removeHandleDiagnosticsCallback handleDiagnosticsCallbacks

  startLoopEvent = makeCbEvent setStartLoopCallback removeStartLoopCallback startLoopCallbacks

  stopLoopEvent = makeCbEvent setStopLoopCallback removeStopLoopCallback stopLoopCallbacks

  diagnosticsBeginEvent = makeCbEvent setDiagnosticsBeginCallback removeDiagnosticsBeginCallback diagnosticsBeginCallbacks

  diagnosticsEndEvent = makeCbEvent setDiagnosticsEndCallback removeDiagnosticsEndCallback diagnosticsEndCallbacks

  loopStateEvent =
    fold
      ( \heartbeat state -> case heartbeat, state of
          LoopStart, LoopNotStartedYet -> LoopStarted
          LoopStart, LoopStarted -> LoopRestarted
          LoopStart, LoopRestarted -> LoopRestarted
          LoopStart, LoopStopped -> LoopStarted
          LoopStart, LoopRestopped -> LoopStarted
          LoopStop, LoopNotStartedYet -> LoopStopped
          LoopStop, LoopStarted -> LoopStopped
          LoopStop, LoopRestarted -> LoopStopped
          LoopStop, LoopStopped -> LoopRestopped
          LoopStop, LoopRestopped -> LoopRestopped
      )
      (startLoopEvent $> LoopStart <|> stopLoopEvent $> LoopStop)
      LoopNotStartedYet

  diagnosticsEvent =
    fold
      ( \heartbeat state -> case heartbeat, state of
          DiagnosticsStart, _ -> DiagnosticsStarted { errorCount: 0 }
          DiagnosticsEnd, DiagnosticsStarted { errorCount } -> DiagnosticsEnded { errorCount }
          DiagnosticsEnd, DiagnosticsEnded { errorCount } -> DiagnosticsEnded { errorCount }
          DiagnosticsEnd, _ -> DiagnosticsEnded { errorCount: 0 }
          DiagnosticsErrors i, DiagnosticsStarted { errorCount } -> DiagnosticsStarted { errorCount: errorCount + i }
          -- shouldn't happen
          DiagnosticsErrors i, DiagnosticsNotStartedYet -> DiagnosticsStarted { errorCount: i }
          -- shouldn't happen
          DiagnosticsErrors i, x -> x
      )
      ( (handleDiagnosticsEvent <#> (DiagnosticsErrors <<< diagnosticsInfoToErrorCount))
          <|> (diagnosticsBeginEvent $> DiagnosticsStart)
          <|> (diagnosticsEndEvent $> DiagnosticsEnd)
      )
      DiagnosticsNotStartedYet
