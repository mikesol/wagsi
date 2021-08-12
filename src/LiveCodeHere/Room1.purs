module WAGSI.LiveCodeHere.Room1 where

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
  = ( room1ClapLatch :: ALatchAP (Maybe Boolean)
    , room1ClapBuffers :: ABufferPool NBuf RBuf
    | r
    )

globalFF = 0.03 :: Number

actualizer ::
  forall r.
  Extern ->
  { | Acc r } ->
  { room1ClapLatch :: CfLatchAP (MakeLatchAP (Maybe Boolean)) (LatchAP (Maybe Boolean))
  , room1ClapBuffers :: CfBufferPool (MakeBufferPoolWithRest RBuf) (BuffyVec NBuf RBuf)
  }
actualizer e@(SceneI e') a =
  { room1ClapLatch
  , room1ClapBuffers:
      actualize
        a.room1ClapBuffers
        e
        $ UF.fromMaybe do
            -- param (Maybe v)
            -- v = Maybe Boolean
            -- param (Maybe (Maybe Boolean))
            AudioParameter { param, timeOffset } <- extract room1ClapLatch
            void $ join param -- Maybe (Maybe Boolean) -> Maybe Boolean
            pure { offset: timeOffset, rest: unit }
  }
  where
  claps =
    makeLoopingTerracedR
      $ ( (0.0 /\ Nothing)
            :| (1.0 /\ Just true)
            : (2.0 /\ Nothing)
            : Nil
        )

  fromPW = claps { time: e'.time, headroom: e'.headroomInSeconds }

  room1ClapLatch = actualize a.room1ClapLatch e fromPW

graph :: forall r. Extern -> { room1ClapLatch :: (LatchAP (Maybe Boolean)), room1ClapBuffers :: BuffyVec NBuf RBuf | r } -> _
graph (SceneI { time }) { room1ClapBuffers } =
  { room1Clap:
      fromTemplate (Proxy :: _ "room1ClapBuffs") room1ClapBuffers \_ -> case _ of
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
                , playbackRate: 1.2 + sin (pi * time * 0.7) * 0.5
                }
                "clap"
            )
        Nothing -> gain 0.0 (playBuf { onOff: Off } "clap")
  }
