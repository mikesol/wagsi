module WAGSI.Plumbing.Download where

import Prelude

import Control.Promise (toAffE)
import Data.Array as A
import Data.Array as Array
import Data.Either (Either(..))
import Data.Int (toNumber)
import Data.Maybe (Maybe(..))
import Data.Traversable (foldl, traverse)
import Data.Tuple.Nested ((/\), type (/\))
import Effect (Effect)
import Effect.Aff (Aff, Milliseconds(..), delay, error, parallel, sequential, throwError, try)
import Effect.Class (liftEffect)
import Effect.Class.Console as Log
import FRP.Behavior (Behavior)
import FRP.Event (Event)
import Foreign.Object (Object)
import Foreign.Object as Object
import Prim.Row (class Lacks)
import Record as Record
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import WAGS.Interpret (decodeAudioDataFromUri)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer)
import WAGSI.Plumbing.Samples (Samples, urls)

type ForwardBackwards = { forward :: BrowserAudioBuffer, backwards :: BrowserAudioBuffer }

backoff :: Aff ~> Aff
backoff aff = go 0
  where
  go n
    | n >= 3 = throwError $ error "Maximum download tries exceeded"
    | otherwise = try aff >>= case _ of
        Left err -> Log.error (show err) *> delay (Milliseconds (toNumber (n + 1) * 1000.0)) *> go (n + 1)
        Right val -> pure val

chunks :: forall a. Int -> Array a -> Array (Array a)
chunks _ [] = []
chunks n xs = pure (A.take n xs) <> (chunks n $ A.drop n xs)

foreign import reverseAudioBuffer :: AudioContext -> BrowserAudioBuffer -> Effect BrowserAudioBuffer

getBuffers :: AudioContext -> Maybe HasOrLacks -> Aff ({ | Samples (Maybe ForwardBackwards) })
getBuffers audioCtx hasOrLacks = do
  res <- traverse (sequential <<< traverse (traverse (parallel <<< dl))) unfolded
  pure $ back2Samples (foldl Object.union Object.empty res)
  where
  hacky' = (unsafeCoerce :: { | Samples String } -> Object String) urls
  hacky = hacky' # Object.mapWithKey case hasOrLacks of
    Just (Has kvs) -> \k -> if Array.elem k kvs then Just else const Nothing
    Just (Lacks kvs) -> \k -> if Array.elem k kvs then const Nothing else Just
    Nothing -> const Just
  unfolded = map (Object.fromFoldable) $ chunks 100 (Object.toUnfoldable hacky)
  dl bf = backoff do
    forward <- toAffE $ decodeAudioDataFromUri audioCtx bf
    backwards <- liftEffect $ reverseAudioBuffer audioCtx forward
    pure { forward, backwards }
  back2Samples = unsafeCoerce :: Object (Maybe ForwardBackwards) -> { | Samples (Maybe ForwardBackwards) }

data HasOrLacks = Has (Array String) | Lacks (Array String)

downloadFiles'
  :: forall trigger world
   . Lacks "buffers" world
  => Maybe HasOrLacks
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { buffers :: { | Samples (Maybe ForwardBackwards) } | world })
downloadFiles' hasOrLacks (ac /\ aff) = ac /\ do
  trigger /\ world <- aff
  b' <- b
  pure (trigger /\ (Record.insert (Proxy :: _ "buffers") b' <$> world))
  where
  b = getBuffers ac hasOrLacks

downloadFiles
  :: forall trigger world
   . Lacks "buffers" world
  => AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { buffers :: { | Samples (Maybe ForwardBackwards) } | world })
downloadFiles = downloadFiles' Nothing

downloadSilence
  :: forall trigger world
   . Lacks "silence" world
  => AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { silence :: BrowserAudioBuffer | world })
downloadSilence (ac /\ aff) = ac /\ do
  trigger /\ world <- aff
  b' <- b
  pure (trigger /\ (Record.insert (Proxy :: _ "silence") b' <$> world))
  where
  b = backoff $ toAffE $ decodeAudioDataFromUri ac "https://freesound.org/data/previews/459/459659_4766646-lq.mp3"