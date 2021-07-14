module WAGSI.LiveCodeHere.Room0 where

import Prelude
import Math
import WAGS.Create.Optionals
import WAGS.Lib.Rate (ARate)
import WAGSI.Plumbing.Types (Extern)

data MidiInstr
  = NoteOn Int Int
  | NoteOff Int

notes ={}

type Acc r
  = ( room0Rate0 :: ARate | r )

actualizer :: Extern -> { room0Rate0 :: Number }
actualizer _ = { room0Rate0: 1.0 }

graph :: forall r. Extern -> { room0Rate0 :: Number | r } -> _
graph _ _ = {}
