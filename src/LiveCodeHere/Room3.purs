module WAGSI.LiveCodeHere.Room3 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room3Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room3Rate0 :: ARate | r } ->
  { room3Rate0 :: CfRate MakeRate Rate }
actualizer e { room3Rate0 } = { room3Rate0: actualize room3Rate0 e 1.0 }

graph :: forall r. Extern -> { room3Rate0 :: Number | r } -> _
graph _ _ = {}