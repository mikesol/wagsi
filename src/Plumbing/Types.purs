module WAGSI.Plumbing.Types where

import Prelude
import Data.Maybe (Maybe)
import Data.Tuple.Nested (type (/\))
import Data.Typelevel.Num (D10, D48)
import Data.Vec as V
import WAGS.Control.Types (Scene, WAG)
import WAGS.Interpret (class AudioInterpret)
import WAGS.Run (SceneI)

newtype Wag
  = Wag
  ( forall audio engine proof res graph control.
    Monoid res =>
    AudioInterpret audio engine =>
    Scene Extern audio engine proof res
      /\ ( Extern ->
        WAG audio engine proof res { | graph } control ->
        Scene Extern audio engine proof res
      )
  )

data Evt
  = InitialEvent
  | HotReload Wag
  | MouseDown Int
  | MouseUp Int
  | KeyboardDown String
  | KeyboardUp String

type NKnobs
  = D10

type NSliders
  = D10

type NSwitches
  = D10

type NKeys
  = D48

type Music' knobs sliders switches keyboard
  = ( knobs :: V.Vec NKnobs knobs
    , sliders :: V.Vec NKnobs sliders
    , switches :: V.Vec NKnobs switches
    , keyboard :: V.Vec NKeys keyboard
    )


type Music
  = Music' Number Number Boolean Boolean

type Wld
  = { mousePosition :: Maybe { x :: Int, y :: Int }
    | Music
    }

type Extern
  = SceneI Evt Wld
