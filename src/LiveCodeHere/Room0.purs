module WAGSI.LiveCodeHere.Room0 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room0Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room0Rate0 :: ARate | r } ->
  { room0Rate0 :: CfRate MakeRate Rate }
actualizer e { room0Rate0 } = { room0Rate0: actualize room0Rate0 e 1.0 }

graph :: forall r. Extern -> { room0Rate0 :: Number | r } -> _
graph _ _ = {}