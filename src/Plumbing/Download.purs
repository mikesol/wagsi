module WAGSI.Plumbing.Download where

import Prelude

import Control.Promise (toAffE)
import Data.Array as A
import Data.Either (Either(..))
import Data.Int (toNumber)
import Data.Traversable (foldl, traverse)
import Data.Tuple.Nested ((/\), type (/\))
import Effect.Aff (Aff, Milliseconds(..), delay, error, parallel, sequential, throwError, try)
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

getBuffers :: AudioContext -> Aff ({ | Samples BrowserAudioBuffer })
getBuffers audioCtx = do
  res <- traverse (sequential <<< traverse (parallel <<< dl)) unfolded
  pure $ (unsafeCoerce :: Object BrowserAudioBuffer -> { | Samples BrowserAudioBuffer }) (foldl Object.union Object.empty res)
  where
  hacky = (unsafeCoerce :: { | Samples String } -> Object String) urls
  unfolded = map (Object.fromFoldable) $ chunks 100 (Object.toUnfoldable hacky)
  dl bf = backoff $ toAffE $ decodeAudioDataFromUri audioCtx bf

downloadFiles
  :: forall trigger world
   . Lacks "buffers" world
  => AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { buffers :: { | Samples BrowserAudioBuffer } | world })
downloadFiles (ac /\ aff) = ac /\ do
  trigger /\ world <- aff
  b' <- b
  pure (trigger /\ (Record.insert (Proxy :: _ "buffers") b' <$> world))
  where
  b = getBuffers ac