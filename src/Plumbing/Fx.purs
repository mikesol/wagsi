module WAGSI.Plumbing.FX where

import Prelude

import Data.Tuple.Nested (type (/\))
import Data.Typelevel.Num (D1)
import Data.Vec ((+>))
import Data.Vec as V
import Prim.RowList (class RowToList)
import Type.Proxy (Proxy(..))
import WAGS.Create (class Create)
import WAGS.Create.Optionals (input)
import WAGS.Graph.AudioUnit as CTOR
import WAGS.Tumult (Tumultuous)
import WAGS.Tumult.Make (tumultuously)
import WAGS.Validation (class NodesCanBeTumultuous, class SubgraphIsRenderable)

type WAGSITumult = Tumultuous D1 "output" (voice :: Unit)

fx
  :: forall scene graph graphRL
   . RowToList graph graphRL
  => Create scene () graph
  => SubgraphIsRenderable graph "output" (voice :: Unit)
  => NodesCanBeTumultuous graphRL
  => { | scene }
  -> WAGSITumult
fx scene = tumultuously (scene +> V.empty)

hello :: CTOR.Input "voice" /\ {}
hello = input (Proxy :: _ "voice")

goodbye :: forall a. a -> { output :: a }
goodbye = { output: _ }

calm :: WAGSITumult
calm = fx $ goodbye hello