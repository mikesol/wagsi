module EngineTemplate where

import Prelude

import Control.Comonad (extract)
import Control.Monad.Indexed.Qualified as Ix
import Data.Either (Either(..))
import Data.Tuple.Nested (type (/\))
import Hack (Evt(..), Extern, Wag(..))
import Unsafe.Coerce (unsafeCoerce)
import WAGS.Control.Functions.Validated (ibranch)
import WAGS.Control.Indexed (IxWAG(..))
import WAGS.Control.Types (Scene, WAG)
import WAGS.Graph.AudioUnit (TConstant, TSpeaker)
import WAGS.Patch (class Patch, ipatch)
import WAGS.Run (RunAudio, RunEngine)
import WAGS.Validation (class GraphIsRenderable)

-- stopPrelude
type Graph
  = ( speaker :: TSpeaker /\ { toSpeaker :: Unit }
    , toSpeaker :: TConstant /\ {}
    )

type Control
  = Unit

-- startCont
cont' ::
  forall newGraph newControl proof.
  GraphIsRenderable newGraph =>
  Patch Graph newGraph =>
  (Control -> IxWAG RunAudio RunEngine proof Unit { | newGraph } { | newGraph } newControl) ->
  (forall newProof. Extern -> newControl -> IxWAG RunAudio RunEngine newProof Unit { | newGraph } { | newGraph } newControl) ->
  WAG RunAudio RunEngine proof Unit { | Graph } Control ->
  Scene Extern RunAudio RunEngine proof Unit
cont' update loop w =
  let
    IxWAG ix = Ix.do
      ipatch
      update (extract w)
  in
    ibranch
      ( \e a ->
          if e.active then case e.trigger of
            InitialEvent -> Right (loop e a)
            HotReload (Wag bam) -> Left bam
          else
            Right (loop e a)
      )
      (ix w)

type Cont newGraph newControl proof
  = GraphIsRenderable newGraph =>
    Patch Graph newGraph =>
    (Control -> IxWAG RunAudio RunEngine proof Unit { | newGraph } { | newGraph } newControl) ->
    ( forall newProof.
      Extern ->
      newControl ->
      IxWAG RunAudio RunEngine newProof Unit { | newGraph } { | newGraph } newControl
    ) ->
    Wag

cont ::
  forall newGraph newControl proof.
  Cont newGraph newControl proof
cont update loop = Wag (unsafeCoerce go)
  where
  go :: WAG RunAudio RunEngine proof Unit { | Graph } Control -> Scene Extern RunAudio RunEngine proof Unit
  go = cont' update loop
