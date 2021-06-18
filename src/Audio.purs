module Audio where

import Prelude

import Control.Applicative.Indexed (ipure)
import Data.Either (Either(..))
import Data.Tuple.Nested (type (/\))
import Hack (Evt(..), Extern, Wag(..))
import WAGS.Control.Functions.Validated (ibranch, (@!>))
import WAGS.Control.Indexed (IxWAG)
import WAGS.Control.Types (Frame0, Scene)
import WAGS.Graph.AudioUnit (TConstant, TSpeaker)
import WAGS.Patch (ipatch)
import WAGS.Run (RunAudio, RunEngine)

type FrameTp a e p i o x
  = IxWAG a e p Unit i o x

type SceneType
  = { speaker :: TSpeaker /\ { toSpeaker :: Unit }
    , toSpeaker :: TConstant /\ {}
    }

createFrame ::
  Extern -> FrameTp RunAudio RunEngine Frame0 {} SceneType Unit
createFrame = const ipatch

piece ::
  Scene Extern RunAudio RunEngine Frame0 Unit
piece =
  createFrame
    @!> ibranch \e _ ->
        if e.active then case e.trigger of
          InitialEvent -> Right (ipure unit)
          HotReload (Wag w) -> Left w
        else
          Right (ipure unit)
