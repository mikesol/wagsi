module WAGSI.Plumbing.Types where

import Prelude

import Data.Maybe (Maybe)
import Data.Tuple.Nested (type (/\))
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

type Wld
  = { mousePosition :: Maybe { x :: Int, y :: Int } }

type Extern
  = SceneI Evt Wld
