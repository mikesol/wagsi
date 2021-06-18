module Engine where

import Prelude
import Control.Comonad (extract)
import Control.Monad.Indexed.Qualified as Ix
import Data.Either (Either(..))
import Data.Tuple.Nested (type (/\))
import Hack (Evt(..), Extern, Wag(..))
import Unsafe.Coerce (unsafeCoerce)
import Experiment (ibranch)
import WAGS.Control.Indexed (IxWAG(..))
import WAGS.Control.Types (Scene, WAG)
import WAGS.Graph.AudioUnit (TConstant, TSpeaker)
import WAGS.Patch (class Patch, ipatch)
import WAGS.Run (RunAudio, RunEngine)
import WAGS.Validation (class GraphIsRenderable)

import Prelude

import Data.Tuple.Nested (type (/\))
import WAGS.Change (ichange)
import WAGS.Graph.AudioUnit (TGain, TSinOsc, TSpeaker)

type Graph
  = ( speaker :: TSpeaker /\ { unit0 :: Unit }
    , unit0 :: TGain /\ { osc0 :: Unit, osc1 :: Unit }
    , osc0 :: TSinOsc /\ {}
    , osc1 :: TSinOsc /\ {}
    )

type Control
  = Unit
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
    ibranch (\i -> i { trigger = InitialEvent })
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
