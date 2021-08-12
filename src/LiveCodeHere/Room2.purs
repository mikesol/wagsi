module WAGSI.LiveCodeHere.Room2 where

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
  = ( room2HiHatLatch :: ALatchAP (Maybe Boolean)
    , room2HiHatBuffers :: ABufferPool NBuf RBuf
    | r
    )

globalFF = 0.03 :: Number

actualizer ::
  forall r.
  Extern ->
  { | Acc r } ->
  { room2HiHatLatch :: CfLatchAP (MakeLatchAP (Maybe Boolean)) (LatchAP (Maybe Boolean))
  , room2HiHatBuffers :: CfBufferPool (MakeBufferPoolWithRest RBuf) (BuffyVec NBuf RBuf)
  }
actualizer e@(SceneI e') a =
  { room2HiHatLatch
  , room2HiHatBuffers:
      actualize
        a.room2HiHatBuffers
        e
        $ UF.fromMaybe do
            -- param (Maybe v)
            -- v = Maybe Boolean
            -- param (Maybe (Maybe Boolean))
            AudioParameter { param, timeOffset } <- extract room2HiHatLatch
            void $ join param -- Maybe (Maybe Boolean) -> Maybe Boolean
            pure { offset: timeOffset, rest: unit }
  }
  where
  hiHats =
    makeLoopingTerracedR
      $ ( (0.0 /\ Nothing)
            :| (0.15 /\ Just true)
            : (0.2 /\ Nothing)
            : (0.3 /\ Just false)
            : (0.4 /\ Nothing)
            : Nil
        )

  fromPW = hiHats { time: e'.time, headroom: e'.headroomInSeconds }

  room2HiHatLatch = actualize a.room2HiHatLatch e fromPW

graph :: forall r. Extern -> { room2HiHatLatch :: (LatchAP (Maybe Boolean)), room2HiHatBuffers :: BuffyVec NBuf RBuf | r } -> _
graph (SceneI { time }) { room2HiHatBuffers } =
  { room2HiHat:
      fromTemplate (Proxy :: _ "room2HiHatBuffs") room2HiHatBuffers \_ -> case _ of
        Just (Buffy { starting, startTime }) ->
          gain (sin (time * pi * 0.5) * 0.2 + 0.2) -- (if time - startTime < 0.3 then 0.6 else 0.1)
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
                "openHH"
            )
        Nothing -> gain 0.0 (playBuf { onOff: Off } "openHH")
  }
