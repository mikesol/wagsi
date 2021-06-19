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
    SceneI Evt world ->
    WAG audio engine proof res { | graph } control ->
    Scene (SceneI Evt world) audio engine proof res
  )

foreign import handlers :: Effect (Object (Wag -> Effect Unit))

foreign import wag_ :: String -> (Wag -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

wag :: Event Wag
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

{- cont' ::
  forall world rAlpha audio engine proof res outGraphAlpha controlAlpha.
  Monoid res =>
  AudioInterpret audio engine =>
  Create rAlpha () outGraphAlpha =>
  { | rAlpha } ->
  ( forall rBeta outGraphBeta controlBeta.
    GraphIsRenderable outGraphBeta =>
    Create rBeta () outGraphBeta =>
    Change rBeta outGraphBeta =>
    Patch outGraphAlpha outGraphBeta =>
    ( (SceneI Evt world -> controlAlpha -> controlBeta)
        /\ ((SceneI Evt world) -> controlBeta -> controlBeta /\ { | rBeta })
    ) ->
    SceneI Evt world ->
    WAG audio engine proof res { | outGraphAlpha } { control :: controlAlpha, fromTrigger :: Boolean } ->
    Scene (SceneI Evt world) audio engine proof res
  )
cont' _ = go
  where
  go ::
    forall rBeta outGraphBeta controlBeta.
    GraphIsRenderable outGraphBeta =>
    Create rBeta () outGraphBeta =>
    Change rBeta outGraphBeta =>
    Patch outGraphAlpha outGraphBeta =>
    ( (SceneI Evt world -> controlAlpha -> controlBeta)
        /\ ((SceneI Evt world) -> controlBeta -> controlBeta /\ { | rBeta })
    ) ->
    SceneI Evt world ->
    WAG audio engine proof res { | outGraphAlpha } { control :: controlAlpha, fromTrigger :: Boolean } ->
    Scene (SceneI Evt world) audio engine proof res
  go (changeControl /\ newGraph) env w =
    let
      controlAlpha = extract w

      controlBeta = changeControl env controlAlpha.control

      ((IxWAG wg) :: IxWAG audio engine proof res { | outGraphAlpha } { | outGraphBeta } Unit) = ipatch

      wagBeta = wg w $> { control: controlBeta, fromTrigger: controlAlpha.fromTrigger }
    in
      ibranch
        ( \e a ->
            let
              newCtrl /\ rec = newGraph e a.control

              loop =
                ( ichange ::
                    forall proofInner.
                    Change rBeta outGraphBeta =>
                    { | rBeta } ->
                    IxWAG
                      audio
                      engine
                      proofInner
                      res
                      { | outGraphBeta }
                      { | outGraphBeta }
                      Unit
                )
                  rec
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
  -}
cont' ::
  forall world rAlpha audio engine proof res outGraphAlpha controlAlpha.
  Monoid res =>
  AudioInterpret audio engine =>
  Create rAlpha () outGraphAlpha =>
  { | rAlpha } ->
  ( forall rBeta outGraphBeta controlBeta.
    GraphIsRenderable outGraphBeta =>
    Create rBeta () outGraphBeta =>
    Change rBeta outGraphBeta =>
    Patch outGraphAlpha outGraphBeta =>
    (forall m. WAG audio engine proof res { | outGraphBeta } m -> WAG audio engine proof res { | outGraphBeta } m) ->
    ( (SceneI Evt world -> controlAlpha -> controlBeta)
        /\ ((SceneI Evt world) -> controlBeta -> controlBeta /\ { | rBeta })
    ) ->
    SceneI Evt world ->
    WAG audio engine proof res { | outGraphAlpha } { control :: controlAlpha, fromTrigger :: Boolean } ->
    Scene (SceneI Evt world) audio engine proof res
  )
cont' _ forceId (changeControl /\ newGraph) env w =
  let
    controlAlpha = extract w

    controlBeta = changeControl env controlAlpha.control

    wBeta = forceId (patch w)

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
