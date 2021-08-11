module WAGSI.LiveCodeHere.Room1 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room1Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room1Rate0 :: ARate | r } ->
  { room1Rate0 :: CfRate MakeRate Rate }
actualizer e { room1Rate0 } = { room1Rate0: actualize room1Rate0 e 1.0 }

graph :: forall r. Extern -> { room1Rate0 :: Number | r } -> _
graph _ _ = {}