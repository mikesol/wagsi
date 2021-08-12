module WAGSI.LiveCodeHere.Room4 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room4Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room4Rate0 :: ARate | r } ->
  { room4Rate0 :: CfRate MakeRate Rate }
actualizer e { room4Rate0 } = { room4Rate0: actualize room4Rate0 e 1.0 }

graph :: forall r. Extern -> { room4Rate0 :: Number | r } -> _
graph _ _ = {}