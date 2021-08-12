module WAGSI.LiveCodeHere.Room5 where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room5Rate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { room5Rate0 :: ARate | r } ->
  { room5Rate0 :: CfRate MakeRate Rate }
actualizer e { room5Rate0 } = { room5Rate0: actualize room5Rate0 e 1.0 }

graph :: forall r. Extern -> { room5Rate0 :: Number | r } -> _
graph _ _ = {}