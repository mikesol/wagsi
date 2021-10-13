module WAGSI.Plumbing.Download where

import Prelude

import Control.Promise (toAffE)
import Data.Array as A
import Data.Either (Either(..))
import Data.Int (toNumber)
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Newtype (wrap)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Traversable (traverse)
import Data.Tuple.Nested ((/\), type (/\))
import Effect (Effect)
import Effect.Aff (Aff, Milliseconds(..), ParAff, delay, error, parallel, sequential, throwError, try)
import Effect.Class (liftEffect)
import Effect.Class.Console as Log
import FRP.Behavior (Behavior)
import FRP.Event (Event)
import Prim.Row (class Lacks)
import Prim.Row as Row
import Prim.RowList (class RowToList, RowList)
import Prim.RowList as RL
import Record as Record
import Type.Proxy (Proxy(..))
import WAGS.Interpret (decodeAudioDataFromUri)
import WAGS.WebAPI (AudioContext, BrowserAudioBuffer)
import WAGSI.Plumbing.Types (BufferUrl(..), ForwardBackwards, Sample, SampleCache)

class Sounds (rl :: RowList Type) (r :: Row Type) where
  sounds' :: forall proxy. proxy rl -> { | r } -> Map Sample BufferUrl

instance soundsNil :: Sounds RL.Nil r where
  sounds' _ _ = Map.empty

instance soundsCons :: (Row.Cons k String r' r, Sounds c r, Row.Lacks k r', IsSymbol k) => Sounds (RL.Cons k String c) r where
  sounds' _ r = Map.insert (wrap (reflectSymbol (Proxy :: _ k))) (wrap (Record.get (Proxy :: _ k) r)) (sounds' (Proxy :: _ c) r)

chunks :: forall a. Int -> Array a -> Array (Array a)
chunks _ [] = []
chunks n xs = pure (A.take n xs) <> (chunks n $ A.drop n xs)

sounds :: forall r rl. RowToList r rl => Sounds rl r => { | r } -> Map Sample BufferUrl
sounds = sounds' (Proxy :: _ rl)

mapped :: AudioContext -> BufferUrl -> Aff { url :: BufferUrl, buffer :: ForwardBackwards }
mapped audioCtx url@(BufferUrl bf) = backoff do
  forward <- toAffE $ decodeAudioDataFromUri audioCtx bf
  backwards <- liftEffect $ reverseAudioBuffer audioCtx forward
  pure { url, buffer: { forward, backwards } }

getBuffersUsingCache
  :: Map Sample BufferUrl
  -> AudioContext
  -> Map Sample { url :: BufferUrl, buffer :: ForwardBackwards }
  -> Aff (Map Sample { url :: BufferUrl, buffer :: ForwardBackwards })
getBuffersUsingCache nameToUrl audioCtx alreadyDownloaded = do
  res <- Map.union <$> newBuffers <*> pure alreadyDownloaded
  pure res
  where
  toDownload :: Map Sample BufferUrl
  toDownload = nameToUrl # Map.mapMaybeWithKey \k v -> case Map.lookup k alreadyDownloaded of
    Nothing -> Just v
    Just { url } -> if url == v then Nothing else Just v

  toDownloadArr :: Array (Sample /\ BufferUrl)
  toDownloadArr = Map.toUnfoldable toDownload

  traversed :: Array (Sample /\ BufferUrl) -> ParAff (Array (Sample /\ { url :: BufferUrl, buffer :: ForwardBackwards }))
  traversed = traverse \(k /\ v) -> parallel $ backoff $ ((/\) k <$> mapped audioCtx v)
  newBuffers = map (Map.fromFoldable <<< join) $ (traverse (sequential <<< traversed) (chunks 100 toDownloadArr))

backoff :: Aff ~> Aff
backoff aff = go 0
  where
  go n
    | n >= 3 = throwError $ error "Maximum download tries exceeded"
    | otherwise = try aff >>= case _ of
        Left err -> Log.error (show err) *> delay (Milliseconds (toNumber (n + 1) * 1000.0)) *> go (n + 1)
        Right val -> pure val

foreign import reverseAudioBuffer :: AudioContext -> BrowserAudioBuffer -> Effect BrowserAudioBuffer

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

initialBuffers
  :: forall trigger world
   . Lacks "buffers" world
  => Behavior SampleCache
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { buffers :: SampleCache | world })
initialBuffers bf (ac /\ aff) = ac /\ do
  trigger /\ world <- aff
  pure (trigger /\ (Record.insert (Proxy :: _ "buffers") <$> bf <*> world))