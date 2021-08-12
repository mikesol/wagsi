module WAGSI.LiveCodeHere.Room0 where

import Prelude
import WAGS.Create.Optionals
import Control.Alternative (guard)
import Control.Comonad (extract)
import Data.FunctorWithIndex (mapWithIndex)
import Data.List ((:), List(..))
import Data.Maybe (Maybe(..), isJust)
import Data.NonEmpty ((:|))
import Data.Tuple.Nested ((/\))
import Data.Typelevel.Num (D3)
import Data.Unfoldable as UF
import Math (pi, sin, cos, (%))
import Type.Proxy (Proxy(..))
import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Graph.Parameter (AudioParameter_(..), ff)
import WAGS.Lib.Blip (ABlip, CfBlip, MakeBlip, Blip)
import WAGS.Lib.BufferPool (ABufferPool, Buffy(..), BuffyVec, CfBufferPool, MakeBufferPoolWithRest)
import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Emitter (fEmitter, fEmitter')
import WAGS.Lib.Latch (ALatchAP, CfLatchAP(..), MakeLatchAP, LatchAP)
import WAGS.Lib.Piecewise (makeLoopingTerracedR)
import WAGS.Run (SceneI(..))
import WAGS.Template (fromTemplate)
import WAGSI.Plumbing.Types (Extern)

type NBuf
  = D3 -- 3 buffers

type RBuf
  = Unit -- no extra info needed

type Acc r
  = ( room0KickLatch :: ALatchAP (Maybe Boolean)
    , room0KickBuffers :: ABufferPool NBuf RBuf
    | r
    )

globalFF = 0.03 :: Number

actualizer ::
  forall r.
  Extern ->
  { | Acc r } ->
  { room0KickLatch :: CfLatchAP (MakeLatchAP (Maybe Boolean)) (LatchAP (Maybe Boolean))
  , room0KickBuffers :: CfBufferPool (MakeBufferPoolWithRest RBuf) (BuffyVec NBuf RBuf)
  }
actualizer e@(SceneI e') a =
  { room0KickLatch
  , room0KickBuffers:
      actualize
        a.room0KickBuffers
        e
        $ UF.fromMaybe do
            AudioParameter { param, timeOffset } <- extract room0KickLatch
            void $ join param
            pure { offset: timeOffset, rest: unit }
  }
  where
  kicks =
    makeLoopingTerracedR
      $ ( (0.0 /\ Just true)
            :| (0.5 /\ Just false)
            : (2.0 /\ Just true)
            : Nil
        )

  fromPW = kicks { time: e'.time, headroom: e'.headroomInSeconds }

  room0KickLatch = actualize a.room0KickLatch e fromPW

graph :: forall r. Extern -> { room0KickLatch :: (LatchAP (Maybe Boolean)), room0KickBuffers :: BuffyVec NBuf RBuf | r } -> _
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
