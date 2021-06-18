module Experiment where

import Prelude

import Control.Comonad (extract)
import Data.Either (Either(..))
import Data.Profunctor (lcmap)
import WAGS.Control.Functions.Validated (makeScene)
import WAGS.Control.Indexed (IxWAG(..))
import WAGS.Control.Types (EFrame, Scene, WAG)
import WAGS.Interpret (class AudioInterpret)
import WAGS.Validation (class GraphIsRenderable)

branch ::
  forall env audio engine proofA res graph a.
  Monoid res =>
  GraphIsRenderable graph =>
  AudioInterpret audio engine =>
  (env -> env) ->
  ( forall proofB.
    WAG audio engine proofB res { | graph } a ->
    EFrame env audio engine proofB res { | graph } a
  ) ->
  WAG audio engine proofA res { | graph } a ->
  Scene env audio engine proofA res
branch e fa w = makeScene (lcmap e (fa w)) (branch identity fa)

ibranch ::
  forall env audio engine proofA res graph a.
  Monoid res =>
  GraphIsRenderable graph =>
  AudioInterpret audio engine =>
  (env -> env) ->
  ( forall proofB.
    env ->
    a ->
    Either
      (WAG audio engine proofB res { | graph } a -> Scene env audio engine proofB res)
      (IxWAG audio engine proofB res { | graph } { | graph } a)
  ) ->
  WAG audio engine proofA res { | graph } a ->
  Scene env audio engine proofA res
ibranch ef fa = branch ef
    ( \wa e -> case fa e (extract wa) of
        Left l -> Left $ l wa
        Right (IxWAG r) -> Right $ r wa
    )