module WAGSI.Plumbing.Audio where

import Prelude

import Control.Applicative.Indexed (ipure)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Data.Profunctor (lcmap)
import Data.Tuple (snd)
import Data.Tuple.Nested (type (/\))
import WAGSI.Plumbing.FromEnv (ORow(..))
import WAGSI.Plumbing.Types (Evt(..), Extern, Wag(..))
import WAGS.Control.Functions.Validated (ibranch, (@!>))
import WAGS.Control.Indexed (IxWAG)
import WAGS.Control.Types (Frame0, Scene)
import WAGS.Graph.AudioUnit (TConstant, TSpeaker)
import WAGS.Patch (ipatch)
import WAGS.Run (RunAudio, RunEngine, SceneI(..))

type FrameTp a e p i o x
  = IxWAG a e p Unit i o x

type SceneType
  = { speaker :: TSpeaker /\ { toSpeaker :: Unit }
    , toSpeaker :: TConstant /\ {}
    }

type InitialControl
  = { fromTrigger :: Boolean, control :: ORow () }

createFrame ::
  Extern -> FrameTp RunAudio RunEngine Frame0 {} SceneType InitialControl
createFrame _ = ipatch $> { fromTrigger: false, control: ORow {} }

piece ::
  Scene Extern RunAudio RunEngine Frame0 Unit
piece =
  createFrame
    @!> ibranch \e@(SceneI { trigger }) a ->
        let
          loop = ipure { fromTrigger: false, control: a.control }
        in
          case trigger of
            Just (HotReload (Wag wg)) ->
              if a.fromTrigger then
                Right loop
              else
                Left (lcmap (map (\x -> x { fromTrigger = true })) (snd wg e))
            _ -> Right loop
