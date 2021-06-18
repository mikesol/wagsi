module Hack where

import Prelude
import Data.Array as A
import Data.Foldable (fold)
import Data.Traversable (sequence)
import Effect (Effect)
import Effect.Random (randomInt)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import WAGS.Control.Types (Scene, WAG)
import WAGS.Run (RunAudio, RunEngine, SceneI)

data Evt
  = InitialEvent
  | HotReload Wag

type Extern
  = SceneI Evt Unit

newtype Wag
  = Wag
  ( forall proof graph control.
    WAG RunAudio RunEngine proof Unit { | graph } control ->
    Scene (Extern) RunAudio RunEngine proof Unit
  )

foreign import handlers :: Effect (Object (Wag -> Effect Unit))

foreign import wag_ :: String -> (Wag -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

wag :: Event Wag
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)
