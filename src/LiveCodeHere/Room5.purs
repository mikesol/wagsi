module WAGSI.LiveCodeHere.Room5 where

import Math
import Prelude
import WAGS.Create.Optionals

import Data.Monoid.Additive (Additive)
import Data.Newtype (unwrap)
import WAGS.Lib.Rate (CfRate)
import WAGS.Run (SceneI(..))
import WAGSI.Plumbing.FromEnv (NTRate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = (room5Rate0 :: NTRate | r)

actualizer
  :: forall buffers floatArrays periodicWaves r
   . Extern buffers floatArrays periodicWaves
  -> { room5Rate0 :: NTRate | r }
  -> { room5Rate0 :: CfRate }
actualizer (SceneI { time }) { room5Rate0 } = { room5Rate0: unwrap room5Rate0 { time, rate: 1.0 } }

graph :: forall buffers floatArrays periodicWaves r. Extern buffers floatArrays periodicWaves -> { room5Rate0 :: Additive Number | r } -> _
graph _ _ = {}