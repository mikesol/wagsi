module Main where

import Prelude
import Control.Alt ((<|>))
import Control.Monad.Error.Class (throwError, try)
import Data.Array as A
import Data.Either (Either(..))
import Data.Filterable (filter, filterMap)
import Data.Foldable as Foldable
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), isNothing)
import Data.String as String
import Data.Traversable (for_, intercalate, traverse)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Random (randomInt)
import Effect.Ref as Ref
import FRP.Event (fold, subscribe)
import Node.Buffer as Buffer
import Node.Encoding (Encoding(..))
import Node.FS.Sync (readFile, readdir, unlink, writeTextFile)
import Node.Path as Path
import WagsiExt.Event (dedup, makeCbEvent, onlyFirst)
import WagsiExt.FFI (removeDiagnosticsBeginCallback, removeDiagnosticsEndCallback, removeDidSaveCallback, removeHandleDiagnosticsCallback, removeStartLoopCallback, removeStopLoopCallback, setDiagnosticsBeginCallback, setDiagnosticsEndCallback, setDidSaveCallback, setHandleDiagnosticsCallback, setStartLoopCallback, setStopLoopCallback)
import WagsiExt.Types (DiagnosticsBeginCallbacks, DiagnosticsEndCallbacks, DiagnosticsHeartbeat(..), DiagnosticsInfo, DiagnosticsState(..), DidSaveCallbacks, HandleDiagnosticsCallbacks, LoopHeartbeat(..), LoopState(..), OutputChannel, StartLoopCallbacks, StopLoopCallbacks)

diagnosticsInfoToErrorCount :: DiagnosticsInfo -> Int
diagnosticsInfoToErrorCount { diagnostics } = A.length $ filter (eq 0 <<< _.severity) diagnostics

diagnosticsRunning :: DiagnosticsState -> Boolean
diagnosticsRunning = case _ of
  DiagnosticsStarted _ -> true
  _ -> false

buildFileCache :: String -> Array String -> Effect (Map String String)
buildFileCache path files =
  Map.fromFoldable
    <$>
      ( files
          # traverse \f ->
              Tuple f
                <$>
                  ( (readFile $ Path.concat [ path, f ])
                      >>= Buffer.toString UTF8
                  )
      )

pastIsMissing :: Map String String -> String -> String -> Boolean
pastIsMissing filezPast file content = case Map.lookup file filezPast of
  Just f -> putInPast content /= f
  Nothing -> true

presentIsMissing :: Map String String -> String -> Boolean
presentIsMissing filezPresent file = isNothing $ Map.lookup file filezPresent

putInPast :: String -> String
putInPast =
  String.replaceAll (String.Pattern "LiveCodeHere")
    (String.Replacement "PutThePastBehindUs")

rebuildGopher :: String -> Effect Unit
rebuildGopher gopherUri = do
  nonce' <- traverse (\_ -> show <$> randomInt 0 9) (A.replicate 64 unit)
  writeTextFile UTF8 gopherUri
    $ intercalate "\n"
        [ "module WAGSI.PutThePastBehindUs.Gopher where"
        , "import WAGSI.Plumbing.Hack (cont___w444g)"
        , "import WAGSI.PutThePastBehindUs.Wagged as Passsssssssttttttt"
        , "import WAGSI.LiveCodeHere.Wagged as Wagggggggeeeeeddddddd"
        , "import WAGSI.LiveCodeHere.Stash as Staaaaasssshhhhhhhhhh"
        , "nonce = \"" <> Foldable.fold nonce' <> "\" :: String"
        , "w_4_4_gg_ = cont___w444g Staaaaasssshhhhhhhhhh.stash Passsssssssttttttt.wagsi Wagggggggeeeeeddddddd.wagsi"
        ]

foreign import log_ :: OutputChannel -> String -> Effect Unit

main
  :: { didSaveCallbacks :: DidSaveCallbacks
     , handleDiagnosticsCallbacks :: HandleDiagnosticsCallbacks
     , startLoopCallbacks :: StartLoopCallbacks
     , stopLoopCallbacks :: StopLoopCallbacks
     , diagnosticsBeginCallbacks :: DiagnosticsBeginCallbacks
     , diagnosticsEndCallbacks :: DiagnosticsEndCallbacks
     , outputChannel :: OutputChannel
     }
  -> Effect Unit
main
  { didSaveCallbacks
  , handleDiagnosticsCallbacks
  , startLoopCallbacks
  , stopLoopCallbacks
  , diagnosticsBeginCallbacks
  , diagnosticsEndCallbacks
  , outputChannel
  } = do
  liveCodeHere :: Ref.Ref (Map String String) <- Ref.new Map.empty
  log "In wagsi main"
  -- starts with nothing as there has not been a successful compilation yet
  _ <-
    subscribe events \{ startStop, diagnostics, pathForLiveCodeHere } -> do
      -- on successful compilation, copy to prev
      log "An event came in"
      if (startStop == LoopStarted || startStop == LoopRestarted) then do
        log $ show ("Kicking off compilation for " <> show { startStop, diagnostics, pathForLiveCodeHere })
        let
          pathForPast =
            String.replace (String.Pattern "LiveCodeHere")
              (String.Replacement "PutThePastBehindUs")
              pathForLiveCodeHere
        when (diagnosticsRunning diagnostics) do
          log $ show ("Compilation triggered, caching the present in the past")
          filezPresent <- readdir pathForLiveCodeHere >>= buildFileCache pathForLiveCodeHere
          Ref.write filezPresent liveCodeHere
        when (diagnostics == DiagnosticsEnded { errorCount: 0 })
          $
            try
              ( do
                  log $ show ("Re-writing the past")
                  filezPast <- readdir pathForPast >>= buildFileCache pathForPast
                  filezPresent <- Ref.read liveCodeHere
                  for_ (Map.toUnfoldable filezPresent :: Array (Tuple String String)) \(Tuple file content) ->
                    when (pastIsMissing filezPast file content)
                      ( writeTextFile UTF8
                          (putInPast (Path.concat [ pathForLiveCodeHere, file ]))
                          (putInPast content)
                      )
                  for_ (Map.keys filezPast) \file ->
                    when (file /= "Gopher.purs" && presentIsMissing filezPresent file)
                      (unlink (putInPast (Path.concat [ pathForLiveCodeHere, file ])))
              )
              >>= case _ of
                Left err -> do
                  log (show err)
                  throwError err
                Right r -> pure r
        -- if diagnostics have ended and we are in started or restarted, launch compilation
        when (not (diagnosticsRunning diagnostics)) do
          log $ show ("Gopher rebuild triggered")
          rebuildGopher (putInPast (Path.concat [ pathForLiveCodeHere, "Gopher.purs" ]))
      else
        log $ show "Wagsi is stopped. If you expect it to do something, start it via the command bar and save again."
  pure unit
  where
  log :: String -> Effect Unit
  log = log_ outputChannel

  -- we take only the first event so that it is guaranteed to be present
  -- before any processing starts but is also guaranteed not to re-trigger
  -- processing
  -- dedup would work here as well, but in the bizarre case that someone adds a new
  -- path matching these criteria, we don't want to pick it up
  pathForLiveCode =
    onlyFirst
      $ filterMap
          ( map (flip append "src/LiveCodeHere")
              <<< A.head
              <<< String.split (String.Pattern "src/LiveCodeHere")
              <<< _.fileName
          )
      $ makeCbEvent log setDidSaveCallback removeDidSaveCallback didSaveCallbacks

  handleDiagnosticsEvent = makeCbEvent log setHandleDiagnosticsCallback removeHandleDiagnosticsCallback handleDiagnosticsCallbacks

  startLoopEvent = makeCbEvent log setStartLoopCallback removeStartLoopCallback startLoopCallbacks

  stopLoopEvent = makeCbEvent log setStopLoopCallback removeStopLoopCallback stopLoopCallbacks

  diagnosticsBeginEvent = makeCbEvent log setDiagnosticsBeginCallback removeDiagnosticsBeginCallback diagnosticsBeginCallbacks

  diagnosticsEndEvent = makeCbEvent log setDiagnosticsEndCallback removeDiagnosticsEndCallback diagnosticsEndCallbacks

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
      $
        { startStop: _
        , diagnostics: _
        , pathForLiveCodeHere: _
        }
          <$> loopStateEvent
          <*> diagnosticsEvent
          <*> pathForLiveCode
