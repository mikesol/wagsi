module WAGSI.LiveCodeHere.Room3 where

import Math
import Prelude
import WAGS.Create.Optionals

import Data.Monoid.Additive (Additive)
import Data.Newtype (unwrap)
import WAGS.Lib.Rate (ARate, CfRate)
import WAGS.Run (SceneI(..))
import WAGSI.Plumbing.FromEnv (NTRate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room3Rate0 :: NTRate | r )

actualizer :: 
  forall buffers floatArrays periodicWaves r.
  Extern buffers floatArrays periodicWaves ->
  { room3Rate0 :: NTRate | r } ->
  { room3Rate0 :: CfRate }
actualizer (SceneI { time }) { room3Rate0 } = { room3Rate0: unwrap room3Rate0 {time, rate: 1.0 } }

graph :: forall buffers floatArrays periodicWaves r. Extern buffers floatArrays periodicWaves -> { room3Rate0 :: Additive Number | r } -> _
graph _ _ = {}