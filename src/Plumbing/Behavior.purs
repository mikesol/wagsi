module Wagsi.Behavior where

import Prelude

-- import Debug (spy)
-- import Effect.Class.Console as Log
import Effect.Ref as Ref
import FRP.Behavior (Behavior, behavior)
import FRP.Event (makeEvent, subscribe)


-- oddly, this started to work when we started using left binds for everything
-- weird...
ref2Behavior :: Ref.Ref ~> Behavior
ref2Behavior r =
  behavior \e ->
    makeEvent \k -> do
      subscribe e \f -> do
        val <- Ref.read r
        o <- k (f val)
        pure o