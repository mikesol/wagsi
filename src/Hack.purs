module Hack (Wag, unwag, Extern, Evt(..)) where

import Prelude
import Effect (Effect)
import WAGS.Control.Types (Scene, WAG)
import WAGS.Run (RunAudio, RunEngine, SceneI)

data Evt
  = InitialEvent
  | HotReload

derive instance eqEvt :: Eq Evt

type Extern
  = SceneI Evt Wag

newtype Wag
  = Wag
  ( forall proof graph control.
    WAG RunAudio RunEngine proof Unit { | graph } control ->
    Scene (Extern) RunAudio RunEngine proof Unit
  )

unwag ::
  Wag ->
  ( forall proof graph control.
    WAG RunAudio RunEngine proof Unit { | graph } control ->
    Scene (Extern) RunAudio RunEngine proof Unit
  )
unwag (Wag w) = w

foreign import wag_ :: Effect Wag
