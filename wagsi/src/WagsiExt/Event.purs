module WagsiExt.Event where

import Prelude
import Data.Array (replicate)
import Data.Traversable (fold, traverse)
import Effect (Effect)
import Effect.Random (randomInt)
import FRP.Event (Event, makeEvent)

makeCbEvent ::
  forall store r.
  (store -> String -> (r -> Effect Unit) -> Effect Unit) ->
  (store -> String -> Effect Unit) ->
  store ->
  Event r
makeCbEvent add remove store =
  makeEvent \cb -> do
    nonce' <- traverse (const $ randomInt 0 9) (replicate 64 unit)
    let
      nonce = fold (map show nonce')
    add store nonce cb
    pure $ remove store nonce
