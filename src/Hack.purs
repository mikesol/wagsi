module Hack where

import Prelude

import Control.Comonad (extract)
import Data.Array as A
import Data.Either (Either(..))
import Data.Foldable (fold)
import Data.Profunctor (lcmap)
import Data.Traversable (sequence)
import Data.Tuple.Nested ((/\), type (/\))
import Effect (Effect)
import Effect.Random (randomInt)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import WAGS.Change (class Change, ichange)
import WAGS.Control.Functions.Validated (ibranch)
import WAGS.Control.Types (Scene, WAG)
import WAGS.Create (class Create)
import WAGS.Interpret (class AudioInterpret)
import WAGS.Patch (class Patch, patch)
import WAGS.Run (SceneI)
import WAGS.Validation (class GraphIsRenderable)

data Evt
  = InitialEvent
  | HotReload Wag

type Extern
  = SceneI Evt Unit

newtype Wag
  = Wag
  ( forall world audio engine proof res graph control.
    Monoid res =>
    AudioInterpret audio engine =>
    SceneI Evt world ->
    WAG audio engine proof res { | graph } control ->
    Scene (SceneI Evt world) audio engine proof res
  )

foreign import handlers :: Effect (Object (Wag -> Effect Unit))

foreign import wag_ :: String -> (Wag -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

renderableTuple :: forall a b c. Create b () c => GraphIsRenderable c => a -> { | b } -> a /\ { | b }
renderableTuple = (/\)

infixr 6 renderableTuple as /-\

wag :: Event Wag
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

class GetRAlpha (hasRAlpha :: Type) (isRAlpha :: Row Type) | hasRAlpha -> isRAlpha

instance getRAlpha :: GetRAlpha { | rAlpha } rAlpha
instance getRAlphaF :: GetRAlpha gra rAlpha => GetRAlpha (i -> gra) rAlpha
instance getRAlphaT :: GetRAlpha r rAlpha => GetRAlpha (l /\ r) rAlpha

type WTrigger control = { control :: control, fromTrigger :: Boolean }

cont___w444g ::
  forall world hasRAlpha rAlpha audio engine proof res outGraphAlpha controlAlpha
         rBeta outGraphBeta controlBeta.
  Monoid res =>
  AudioInterpret audio engine =>
  GetRAlpha hasRAlpha rAlpha =>
  Create rAlpha () outGraphAlpha =>
  -----
  GraphIsRenderable outGraphBeta =>
  Create rBeta () outGraphBeta =>
  Change rBeta outGraphBeta =>
  Patch outGraphAlpha outGraphBeta =>
  hasRAlpha ->
  (SceneI Evt world -> controlAlpha -> controlBeta) ->
  ((SceneI Evt world) -> controlBeta -> controlBeta /\ { | rBeta }) ->
  SceneI Evt world ->
  WAG audio engine proof res { | outGraphAlpha } { control :: controlAlpha, fromTrigger :: Boolean } ->
  Scene (SceneI Evt world) audio engine proof res
cont___w444g _ changeControl newGraph env w =
  let
    controlAlpha = extract w

    controlBeta = changeControl env controlAlpha.control

    (wBeta :: WAG audio engine proof res { | outGraphBeta } (WTrigger controlAlpha)) = patch w

    wagBeta = wBeta $> { control: controlBeta, fromTrigger: controlAlpha.fromTrigger }
  in
    ibranch
      ( \e a ->
          let
            newCtrl /\ rec = newGraph e a.control

            loop =
              ichange rec
                $> { fromTrigger: false, control: newCtrl }
          in
            if e.active then case e.trigger of
              InitialEvent -> Right loop
              HotReload (Wag wg) ->
                if a.fromTrigger then
                  Right loop
                else
                  Left (lcmap (map (\x -> x { fromTrigger = true })) (wg e))
            else
              Right loop
      )
      wagBeta
