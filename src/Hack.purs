module Hack where

import Prelude
import Control.Comonad (extract)
import Data.Array as A
import Data.Either (Either(..))
import Data.Foldable (fold)
import Data.Profunctor (lcmap)
import Data.Traversable (sequence)
import Data.Tuple (snd)
import Data.Tuple.Nested ((/\), type (/\))
import Effect (Effect)
import Effect.Random (randomInt)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import WAGS.Change (class Change, ichange)
import WAGS.Control.Functions.Validated (ibranch, (@!>))
import WAGS.Control.Indexed (IxWAG)
import WAGS.Control.Types (Frame0, Scene, WAG)
import WAGS.CreateT (class CreateT)
import WAGS.Interpret (class AudioInterpret)
import WAGS.Patch (class Patch, ipatch, patch)
import WAGS.Run (RunAudio, SceneI, RunEngine)
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
    -- this is the piece in case we've already started
    Scene (SceneI Evt world) audio engine proof res
      /\ -- this is the continuation
      ( SceneI Evt world ->
        WAG audio engine proof res { | graph } control ->
        Scene (SceneI Evt world) audio engine proof res
      )
  )

foreign import handlers :: Effect (Object (Wag -> Effect Unit))

foreign import wag_ :: String -> (Wag -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

wagsableTuple ::
  forall world controlOld controlNew b c.
  Monoid controlNew =>
  CreateT b () c =>
  GraphIsRenderable c =>
  (SceneI Evt world -> controlOld -> controlNew) ->
  (SceneI Evt world -> controlNew -> (controlNew /\ { | b })) ->
  ( (SceneI Evt world -> controlOld -> controlNew)
      /\ (SceneI Evt world -> controlNew -> (controlNew /\ { | b }))
  )
wagsableTuple = (/\)

infixr 6 wagsableTuple as /@\

wag :: Event Wag
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

class GetRAlpha hasRAlpha isRAlpha | hasRAlpha -> isRAlpha

instance getRAlpha :: GetRAlpha { | rAlpha } rAlpha

instance getRAlphaF :: GetRAlpha gra rAlpha => GetRAlpha (i -> gra) rAlpha

instance getRAlphaT :: GetRAlpha r rAlpha => GetRAlpha (l /\ r) rAlpha

type WTrigger control
  = { control :: control, fromTrigger :: Boolean }

cont___w444g ::
  forall world hasRAlpha rAlpha audio engine proof res outGraphAlpha controlAlpha rBeta outGraphBeta controlBeta.
  -- the residual always has to be a monoid
  Monoid res =>
  -- the audio needs to be renderable
  AudioInterpret audio engine =>
  -- gets an r alpha from the input term. this is usually a graph
  GetRAlpha hasRAlpha rAlpha =>
  -- computes the input graph from rAlpha, used for patching
  CreateT rAlpha () outGraphAlpha =>
  -----
  -- validation step for the output graph
  GraphIsRenderable outGraphBeta =>
  -- computes the output graph from the input term
  CreateT rBeta () outGraphBeta =>
  -- allows the output graph to be changed by rBeta
  Change rBeta outGraphBeta =>
  -- the transition from alpha to beta
  Patch outGraphAlpha outGraphBeta =>
  -- the transition from the first scene to beta in case we start in the middle
  Patch () outGraphBeta =>
  -- controlBeta has to be a monoid in case we start in the middle
  -- in the future, we can consider determining this by the environment as well
  Monoid controlBeta =>
  hasRAlpha ->
  ( (SceneI Evt world -> controlAlpha -> controlBeta)
      /\ ((SceneI Evt world) -> controlBeta -> controlBeta /\ { | rBeta })
  ) ->
  ( Scene (SceneI Evt world) audio engine Frame0 res
      /\ ( SceneI Evt world ->
        WAG audio engine proof res { | outGraphAlpha } { control :: controlAlpha, fromTrigger :: Boolean } ->
        Scene (SceneI Evt world) audio engine proof res
      )
  )
cont___w444g _ (changeControl /\ newGraph) =
  (createFrame @!> branchingLogic)
    /\ \env w ->
        let
          controlAlpha = extract w

          controlBeta = changeControl env controlAlpha.control

          (wBeta :: WAG audio engine proof res { | outGraphBeta } (WTrigger controlAlpha)) = patch w

          wagBeta = wBeta $> { control: controlBeta, fromTrigger: controlAlpha.fromTrigger }
        in
          branchingLogic wagBeta
  where
  createFrame ::
    SceneI Evt world ->
    IxWAG audio engine Frame0 res {} { | outGraphBeta } { fromTrigger :: Boolean, control :: controlBeta }
  createFrame _ = ipatch $> { fromTrigger: false, control: mempty }

  branchingLogic ::
    forall proofB.
    WAG audio engine proofB res { | outGraphBeta } { control :: controlBeta, fromTrigger :: Boolean } ->
    Scene (SceneI Evt world) audio engine proofB res
  branchingLogic =
    ( ibranch
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
                    Left (lcmap (map (\x -> x { fromTrigger = true })) (snd wg e))
              else
                Right loop
        )
    )
