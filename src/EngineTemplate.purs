module EngineTemplate where

import Prelude

import Control.Comonad (extract)
import Data.Either (Either(..))
import Data.Tuple.Nested (type (/\))
import Hack (Evt(..), Extern, Wag(..))
import Unsafe.Coerce (unsafeCoerce)
import WAGS.Control.Functions.Validated (ibranch)
import WAGS.Control.Indexed (IxWAG(..))
import WAGS.Control.Types (Scene, WAG)
import WAGS.Graph.AudioUnit (TConstant, TSpeaker)
import WAGS.Run (RunAudio, RunEngine)
import WAGS.Validation (class GraphIsRenderable)

type Graph
  = { speaker :: TSpeaker /\ { toSpeaker :: Unit }
    , toSpeaker :: TConstant /\ {}
    }

type Control = Unit

cont' ::
  forall newGraph newControl proof.
  GraphIsRenderable newGraph =>
  (Control -> IxWAG RunAudio RunEngine proof Unit Graph {|newGraph} newControl) ->
  (forall newProof. Extern -> newControl -> IxWAG RunAudio RunEngine newProof Unit {|newGraph} {|newGraph} newControl) ->
  WAG RunAudio RunEngine proof Unit Graph Control ->
  Scene Extern RunAudio RunEngine proof Unit
cont' update loop w =
  let
    IxWAG ix = update (extract w) 
  in
    ibranch (\e a ->
        if e.active then case e.trigger of
            InitialEvent -> Right (loop e a)
            HotReload (Wag bam) -> Left bam
        else
          Right (loop e a)) (ix w)

cont ::
  forall newGraph newControl proof.
  GraphIsRenderable newGraph =>
  (Control -> IxWAG RunAudio RunEngine proof Unit Graph {|newGraph} newControl) ->
  (forall newProof.
    Extern ->
    newControl ->
    IxWAG RunAudio RunEngine newProof Unit {|newGraph} {|newGraph} newControl
  ) ->
  Wag
cont update loop = Wag (unsafeCoerce (cont' update loop))