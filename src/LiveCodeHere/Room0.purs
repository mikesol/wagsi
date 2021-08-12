module WAGSI.LiveCodeHere.Room0 where

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
import WAGS.Lib.Emitter (fEmitter, fEmitter')
import WAGS.Run (SceneI(..))
import WAGS.Template (fromTemplate)
import WAGSI.Plumbing.Types (Extern)

type NBuf
  = D3 -- 3 buffers

type RBuf
  = Unit -- no extra info needed

type Acc r
  = ( room0KickBlip :: ABlip
    , room0KickBuffers :: ABufferPool NBuf RBuf
    | r
    )

globalFF = 0.03 :: Number

actualizer ::
  forall r.
  Extern ->
  { | Acc r } ->
  { room0KickBlip :: CfBlip MakeBlip Blip
  , room0KickBuffers :: CfBufferPool (MakeBufferPoolWithRest RBuf) (BuffyVec NBuf RBuf)
  }
actualizer e@(SceneI e') a =
  { room0KickBlip
  , room0KickBuffers:
      actualize
        a.room0KickBuffers
        e
        $ UF.fromMaybe do
            guard (extract room0KickBlip)
            { offset: _, rest: unit } <$> fromEmitter
  }
  where
  tmod2 = e'.time % 2.0

  freq
    | tmod2 < 0.75 = 0.0000001
    | tmod2 > 1.75 = 0.0000001
    | otherwise = 2.00

  kicks = fEmitter' { sensitivity: 0.08 } freq

  fromEmitter = kicks { time: e'.time, headroom: e'.headroomInSeconds }

  room0KickBlip = actualize a.room0KickBlip e (isJust fromEmitter)

graph :: forall r. Extern -> { room0KickBlip :: Blip, room0KickBuffers :: BuffyVec NBuf RBuf | r } -> _
graph (SceneI { time }) { room0KickBuffers } =
  { room0Kick:
      fromTemplate (Proxy :: _ "room0KickBuffs") room0KickBuffers \_ -> case _ of
        Just (Buffy { starting, startTime }) ->
          gain 1.0
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
                "kick1"
            )
        Nothing -> gain 0.0 (playBuf { onOff: Off } "kick1")
  }
