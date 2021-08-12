module WAGSI.LiveCodeHere.Room4 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Graph.AudioUnit (OnOff(..))
import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)
import WAGS.Run (SceneI(..))
import Type.Proxy (Proxy (..))

type Acc (r :: Row Type) = ( room4Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room4Rate0 :: ARate | r } ->
  { room4Rate0 :: CfRate MakeRate Rate }
actualizer e { room4Rate0 } = { room4Rate0: actualize room4Rate0 e 1.0 }

pbFot t
  | t < 0.3 = 0.5
  | t < 0.6 = 0.0
  | t < 1.2 = 0.3
  | otherwise = 0.0

graph :: forall r. Extern -> { room4Rate0 :: Number | r } -> _
graph (SceneI { time }) _ = {
  room4Pad: gain  (pbFot (time % 4.0)) (  (loopBuf { playbackRate: 1.0 }  "pad") )
}