module Wagsi.Behavior where

import Prelude
import Effect.Ref as Ref
import FRP.Behavior (Behavior, behavior)
import FRP.Event (makeEvent, subscribe)

ref2Behavior :: Ref.Ref ~> Behavior
ref2Behavior r =
  behavior \e ->
    makeEvent \k ->
      subscribe e \f -> k <$> (f <$> (Ref.read r))
