module WAGSI.LiveCodeHere.Room1 where

import Prelude
import Math
import WAGS.Create.Optionals

import WAGS.Lib.Rate (ARate)
import WAGSI.Plumbing.Types (Extern)

type Acc (r :: Row Type) = ( room1Rate0 :: ARate | r )

actualizer :: Extern -> { room1Rate0 :: Number }
actualizer _ = { room1Rate0: 1.0 }

graph :: forall r. Extern -> { room1Rate0 :: Number | r } -> _
graph _ _ = {}