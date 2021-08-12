module WAGSI.LiveCodeHere.Room3 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)
import WAGS.Run (SceneI(..))

type Acc (r :: Row Type) = ( room3Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room3Rate0 :: ARate | r } ->
  { room3Rate0 :: CfRate MakeRate Rate }
actualizer e { room3Rate0 } = { room3Rate0: actualize room3Rate0 e 1.0 }

pbFot t
  | t < 0.3 = 1.0
  | t < 0.6 = 1.5
  | t < 1.2 = 0.9
  | otherwise = 1.2

graph :: forall r. Extern -> { room3Rate0 :: Number | r } -> _
graph (SceneI { time }) _ = {
  trumpet: gain  (sin (time * pi * 0.15) * 0.2 + 0.4) ( loopBuf { playbackRate: (pbFot (time % 2.0) / 2.0) }  "trumpet" )
  }