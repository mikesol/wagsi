module WAGSI.LiveCodeHere.Wagged where

import Math
import Prelude
import WAGS.Create.Optionals
import Record.Builder as Record
import Type.Row (type (+))
import WAGS.Lib.Cofree (actualizes, tails)
import WAGSI.LiveCodeHere.Room0 as Room0
import WAGSI.LiveCodeHere.Room1 as Room1
import WAGSI.Plumbing.Cofree as Cf
import WAGSI.Plumbing.Hack ((/@\))
import WAGSI.Plumbing.Types (Extern)

-- change this to make sound
-- for example, you can try:
-- a /@\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
type Acc
  = (
    | Room0.Acc + Room1.Acc + ()
    )

wagsi (e :: Extern) (a :: { | Acc }) =
  tailed
    /@\ speaker
        ( Record.build
            ( Record.union (Room0.graph e heads)
                >>> Record.union (Room1.graph e heads)
            )
            { zeros: constant 0.0 }
        )
  where
  actualizer = {}

  --------------------------------------------
  actualized =
    actualizes a e
      ( Record.build
          ( Record.union (Room0.actualizer e)
              >>> Record.union (Room1.actualizer e)
          )
          actualizer
      )

  heads = Cf.heads actualized

  tailed = tails actualized
