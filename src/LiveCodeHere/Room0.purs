module WAGSI.LiveCodeHere.Room0 where

import Math
import Prelude
import WAGS.Create.Optionals

import Data.Monoid.Additive (Additive)
import Data.Newtype (unwrap)
import WAGS.Lib.Rate (ARate, CfRate)
import WAGS.Run (SceneI(..))
import WAGSI.Plumbing.FromEnv (NTRate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room0Rate0 :: NTRate | r )

actualizer :: 
  forall buffers floatArrays periodicWaves r.
  Extern buffers floatArrays periodicWaves ->
  { room0Rate0 :: NTRate | r } ->
  { room0Rate0 :: CfRate }
actualizer (SceneI { time }) { room0Rate0 } = { room0Rate0: unwrap room0Rate0 {time, rate: 1.0 } }

graph :: forall buffers floatArrays periodicWaves r. Extern buffers floatArrays periodicWaves -> { room0Rate0 :: Additive Number | r } -> _
graph _ _ = {}