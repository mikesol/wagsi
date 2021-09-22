module WAGSI.PutThePastBehindUs.Room where

import Math
import Prelude
import WAGS.Create.Optionals

import Data.Monoid.Additive (Additive)
import Data.Newtype (unwrap)
import WAGS.Lib.Rate (CfRate)
import WAGS.Run (SceneI(..))
import WAGSI.Plumbing.FromEnv (NTRate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( roomRate0 :: NTRate | r )

actualizer :: 
  forall buffers floatArrays periodicWaves r.
  Extern buffers floatArrays periodicWaves ->
  { roomRate0 :: NTRate | r } ->
  { roomRate0 :: CfRate }
actualizer (SceneI { time }) { roomRate0 } = { roomRate0: unwrap roomRate0 {time, rate: 1.0 } }

graph :: forall buffers floatArrays periodicWaves r. Extern buffers floatArrays periodicWaves -> { roomRate0 :: Additive Number | r } -> _
graph _ _ = {}