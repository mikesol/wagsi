module WAGSI.LiveCodeHere.Room2 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room2Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room2Rate0 :: ARate | r } ->
  { room2Rate0 :: CfRate MakeRate Rate }
actualizer e { room2Rate0 } = { room2Rate0: actualize room2Rate0 e 1.0 }

graph :: forall r. Extern -> { room2Rate0 :: Number | r } -> _
graph _ _ = {}