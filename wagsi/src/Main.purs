module Main where

import Prelude

import Control.Alt ((<|>))
import Data.Array as A
import Data.Filterable (filter)
import Data.Map (Map)
import Data.Maybe (Maybe(..), isJust)
import Data.String as String
import Effect (Effect)
import Effect.Ref as Ref
import FRP.Event (EventIO, create, fold, subscribe)
import Record as R
import WagsiExt.Event (dedup, makeCbEvent)
import WagsiExt.FFI (removeDiagnosticsBeginCallback, removeDiagnosticsEndCallback, removeDidSaveCallback, removeHandleDiagnosticsCallback, removeStartLoopCallback, removeStopLoopCallback, setDiagnosticsBeginCallback, setDiagnosticsEndCallback, setDidSaveCallback, setHandleDiagnosticsCallback, setStartLoopCallback, setStopLoopCallback)
import WagsiExt.Types (DiagnosticsBeginCallbacks, DiagnosticsEndCallbacks, DiagnosticsHeartbeat(..), DiagnosticsInfo, DiagnosticsState(..), DidSaveCallbacks, HandleDiagnosticsCallbacks, LoopHeartbeat(..), LoopState(..), StartLoopCallbacks, StopLoopCallbacks)

diagnosticsInfoToErrorCount :: DiagnosticsInfo -> Int
diagnosticsInfoToErrorCount { diagnostics } = A.length $ filter (eq 0 <<< _.severity) diagnostics

diagnosticsRunning :: DiagnosticsState -> Boolean
diagnosticsRunning = case _ of
  DiagnosticsStarted _ -> true
  _ -> false

main ::
  { didSaveCallbacks :: DidSaveCallbacks
  , handleDiagnosticsCallbacks :: HandleDiagnosticsCallbacks
  , startLoopCallbacks :: StartLoopCallbacks
  , stopLoopCallbacks :: StopLoopCallbacks
  , diagnosticsBeginCallbacks :: DiagnosticsBeginCallbacks
  , diagnosticsEndCallbacks :: DiagnosticsEndCallbacks
  , launchCompilation :: Effect Unit
  } ->
  Effect Unit
main { didSaveCallbacks
, handleDiagnosticsCallbacks
, startLoopCallbacks
, stopLoopCallbacks
, diagnosticsBeginCallbacks
, diagnosticsEndCallbacks
, launchCompilation
} = do
  liveCodeHere :: Ref.Ref (Maybe (Map String String)) <- Ref.new Nothing
  -- starts with nothing as there has not been a successful compilation yet
  _ <-
    subscribe events \{ startStop, diagnostics } -> do
      -- on successful compilation, copy to prev
      when (diagnostics == DiagnosticsEnded { errorCount: 0 }) $ ?hole
      -- if diagnostics have ended and we are in started or restarted, launch compilation
      when
        (not (diagnosticsRunning diagnostics) && (startStop == LoopStarted || startStop == LoopRestarted)) do
        ?hole -- get current files
        launchCompilation
  pure unit
  where
  didSaveEvent =
    filter
      (isJust <<< String.indexOf (String.Pattern "/LiveCodeHere/") <<< _.fileName)
      $ makeCbEvent setDidSaveCallback removeDidSaveCallback didSaveCallbacks

  handleDiagnosticsEvent = makeCbEvent setHandleDiagnosticsCallback removeHandleDiagnosticsCallback handleDiagnosticsCallbacks

  startLoopEvent = makeCbEvent setStartLoopCallback removeStartLoopCallback startLoopCallbacks

  stopLoopEvent = makeCbEvent setStopLoopCallback removeStopLoopCallback stopLoopCallbacks

  diagnosticsBeginEvent = makeCbEvent setDiagnosticsBeginCallback removeDiagnosticsBeginCallback diagnosticsBeginCallbacks

  diagnosticsEndEvent = makeCbEvent setDiagnosticsEndCallback removeDiagnosticsEndCallback diagnosticsEndCallbacks

  loopStateEvent =
    dedup
      $ fold
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
    dedup
      $ fold
          ( \heartbeat state -> case heartbeat, state of
              DiagnosticsStart, _ -> DiagnosticsStarted { errorCount: 0 }
              DiagnosticsEnd, DiagnosticsStarted { errorCount } -> DiagnosticsEnded { errorCount }
              DiagnosticsEnd, DiagnosticsEnded { errorCount } -> DiagnosticsEnded { errorCount }
              DiagnosticsEnd, _ -> DiagnosticsEnded { errorCount: 0 }
              DiagnosticsErrors i, DiagnosticsStarted { errorCount } -> DiagnosticsStarted { errorCount: errorCount + i }
              -- shouldn't happen
              DiagnosticsErrors i, DiagnosticsNotStartedYet -> DiagnosticsStarted { errorCount: i }
              -- shouldn't happen
              DiagnosticsErrors _, x -> x
          )
          ( (handleDiagnosticsEvent <#> (DiagnosticsErrors <<< diagnosticsInfoToErrorCount))
              <|> (diagnosticsBeginEvent $> DiagnosticsStart)
              <|> (diagnosticsEndEvent $> DiagnosticsEnd)
          )
          DiagnosticsNotStartedYet

  events =
    dedup
      $ { startStop: _
        , diagnostics: _
        , representativeFile: _
        }
      <$> loopStateEvent
      <*> diagnosticsEvent
      <*> didSaveEvent
