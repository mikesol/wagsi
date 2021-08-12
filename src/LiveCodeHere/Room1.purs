module WAGSI.LiveCodeHere.Room1 where

import Prelude
import WAGS.Create.Optionals
import Control.Alternative (guard)
import Control.Comonad (extract)
import Data.Maybe (Maybe(..), isJust)
import Data.Typelevel.Num (D3)
import Data.Unfoldable as UF
import Math (pi, sin, cos, (%))
import Type.Proxy (Proxy(..))
import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Graph.Parameter (ff)
import WAGS.Lib.Blip (ABlip, CfBlip, MakeBlip, Blip)
import WAGS.Lib.BufferPool (ABufferPool, Buffy(..), BuffyVec, CfBufferPool, MakeBufferPoolWithRest)
import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Emitter (fEmitter)
import WAGS.Run (SceneI(..))
import WAGS.Template (fromTemplate)
import WAGSI.Plumbing.Types (Extern)

type NBuf
  = D3 -- 3 buffers

type RBuf
  = Unit -- no extra info needed

type Acc r
  = ( room1ClapBlip :: ABlip
    , room1ClapBuffers :: ABufferPool NBuf RBuf
    | r
    )

globalFF = 0.03 :: Number

actualizer ::
  forall r.
  Extern ->
  { | Acc r } ->
  { room1ClapBlip :: CfBlip MakeBlip Blip
  , room1ClapBuffers :: CfBufferPool (MakeBufferPoolWithRest RBuf) (BuffyVec NBuf RBuf)
  }
actualizer e@(SceneI e') a =
  { room1ClapBlip
  , room1ClapBuffers:
      actualize
        a.room1ClapBuffers
        e
        $ UF.fromMaybe do
            guard (extract room1ClapBlip)
            { offset: _, rest: unit } <$> fromEmitter
  }
  where
  claps = fEmitter 1.0

  fromEmitter = claps { time: e'.time, headroom: e'.headroomInSeconds }

  room1ClapBlip = actualize a.room1ClapBlip e (isJust fromEmitter)

graph :: forall r. Extern -> { room1ClapBlip :: Blip, room1ClapBuffers :: BuffyVec NBuf RBuf | r } -> _
graph (SceneI { time }) { room1ClapBuffers } =
  { room1Clap:
      fromTemplate (Proxy :: _ "room1ClapBuffs") room1ClapBuffers \_ -> case _ of
        Just (Buffy { starting, startTime }) ->
          gain 1.00
            ( playBuf
                { onOff:
                    ff globalFF
                      $ if starting then
                          ff (max 0.0 (startTime - time)) (pure OffOn)
                        else if time - startTime > 1.0 then
                          pure Off
                        else
                          pure On
                , playbackRate: 1.0
                }
                "clap"
            )
        Nothing -> gain 0.0 (playBuf { onOff: Off } "clap")
  }
