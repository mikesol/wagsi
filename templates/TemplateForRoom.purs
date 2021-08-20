module WAGSI.PutThePastBehindUs.Room where

import Math
import Prelude
import WAGS.Create.Optionals

import WAGS.Lib.Cofree (actualize)
import WAGS.Lib.Rate (ARate, CfRate, MakeRate, Rate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( roomRate0 :: ARate | r )

actualizer :: 
  forall r.
  Extern ->
  { roomRate0 :: ARate | r } ->
  { roomRate0 :: CfRate MakeRate Rate }
actualizer e { roomRate0 } = { roomRate0: actualize roomRate0 e 1.0 }

graph :: forall r. Extern -> { roomRate0 :: Number | r } -> _
graph _ _ = {}