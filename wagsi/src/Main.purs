module Main where

import Prelude
import Control.Alt ((<|>))
import Data.Array as A
import Data.Filterable (filter, filterMap)
import Data.Foldable as Foldable
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe, isNothing)
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
import WagsiExt.Types (DiagnosticsBeginCallbacks, DiagnosticsEndCallbacks, DiagnosticsHeartbeat(..), DiagnosticsInfo, DiagnosticsState(..), DidSaveCallbacks, HandleDiagnosticsCallbacks, LoopHeartbeat(..), LoopState(..), StartLoopCallbacks, StopLoopCallbacks)

diagnosticsInfoToErrorCount :: DiagnosticsInfo -> Int
diagnosticsInfoToErrorCount { diagnostics } = A.length $ filter (eq 0 <<< _.severity) diagnostics

diagnosticsRunning :: DiagnosticsState -> Boolean
diagnosticsRunning = case _ of
  DiagnosticsStarted _ -> true
  _ -> false

buildFileCache :: String -> Array String -> Effect (Map String String)
buildFileCache pathForLiveCodeHere files =
  Map.fromFoldable
    <$> ( files
          # traverse \f ->
              Tuple f
                <$> ( (readFile $ Path.concat [ pathForLiveCodeHere, f ])
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
        , "nonce = \"" <> Foldable.fold nonce' <> "\" :: String"
        , "w_4_4_gg_ = cont___w444g Passsssssssttttttt.wagsi Wagggggggeeeeeddddddd.wagsi"
        ]

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
    subscribe events \{ startStop, diagnostics, pathForLiveCodeHere } -> do
      -- on successful compilation, copy to prev
      when (diagnostics == DiagnosticsEnded { errorCount: 0 })
        $ do
            filezPast <-
              readdir
                ( String.replace (String.Pattern "LiveCodeHere")
                    (String.Replacement "PutThePastBehindUs")
                    pathForLiveCodeHere
                )
                >>= buildFileCache pathForLiveCodeHere
            filezPresent <- fromMaybe Map.empty <$> (Ref.read liveCodeHere)
            for_ (Map.toUnfoldable filezPresent :: Array (Tuple String String)) \(Tuple file content) ->
              when (pastIsMissing filezPast file content)
                ( writeTextFile UTF8
                    (putInPast (Path.concat [ pathForLiveCodeHere, file ]))
                    (putInPast content)
                )
            for_ (Map.keys filezPast) \file ->
              when (file /= "Gopher.purs" && presentIsMissing filezPresent file)
                (unlink (putInPast (Path.concat [ pathForLiveCodeHere, file ])))
      -- if diagnostics have ended and we are in started or restarted, launch compilation
      when
        ( not (diagnosticsRunning diagnostics)
            && (startStop == LoopStarted || startStop == LoopRestarted)
        ) do
        filezPresent <- readdir pathForLiveCodeHere >>= buildFileCache pathForLiveCodeHere
        Ref.write (Just filezPresent) liveCodeHere
        rebuildGopher (putInPast (Path.concat [ pathForLiveCodeHere, "Gopher.purs" ]))
        launchCompilation
  pure unit
  where
  pathForLiveCode =
    onlyFirst
      $ filterMap
          ( map (flip append "src/LiveCodeHere")
              <<< A.head
              <<< String.split (String.Pattern "src/LiveCodeHere")
              <<< _.fileName
          )
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
        , pathForLiveCodeHere: _
        }
      <$> loopStateEvent
      <*> diagnosticsEvent
      <*> pathForLiveCode
