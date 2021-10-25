module WAGSI.Plumbing.Repl where

import Prelude

import Data.Array as A
import Data.Foldable (fold)
import Data.Traversable (sequence)
import Effect (Effect)
import Effect.Random (randomInt)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import WAGSI.Plumbing.Types (TheFuture)

foreign import wagHandlers :: Effect (Object (TheFuture -> Effect Unit))

foreign import wag_ :: String -> (TheFuture -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

foreign import srcHandlers :: Effect (Object (String -> Effect Unit))

foreign import src_ :: String -> (String -> Effect Unit) -> Effect Unit

foreign import desrc_ :: String -> Effect Unit

wag :: Event TheFuture
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

src :: Event String
src =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    src_ id f
    pure (desrc_ id)
