module Hack where

import Prelude

import Control.Comonad (extract)
import Data.Array as A
import Data.Either (Either(..))
import Data.Foldable (fold)
import Data.Maybe (Maybe(..))
import Data.Newtype (unwrap, wrap)
import Data.Profunctor (lcmap)
import Data.Traversable (sequence)
import Data.Tuple (snd)
import Data.Tuple.Nested ((/\), type (/\))
import EZCtrl (class EZCtrl, ezctrl)
import Effect (Effect)
import Effect.Random (randomInt)
import FFIStuff (Stash)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import FromEnv (class FromEnv, ORow(..), fromEnv)
import WAGS.Change (class Change, ichange)
import WAGS.Control.Functions.Validated (ibranch, (@!>))
import WAGS.Control.Indexed (IxWAG)
import WAGS.Control.Types (Frame0, Scene, WAG)
import WAGS.CreateT (class CreateT)
import WAGS.Interpret (class AudioInterpret)
import WAGS.Patch (class Patch, ipatch, patch)
import WAGS.Run (SceneI)
import WAGS.Validation (class GraphIsRenderable)
import Wagsi.Types (Wag(..), Extern, Evt(..), Wld)

foreign import handlers :: Effect (Object (Wag -> Effect Unit))

foreign import wag_ :: String -> (Wag -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

foreign import ffiHandlers :: Effect (Object (Stash -> Effect Unit))

foreign import ffi_ :: String -> (Stash -> Effect Unit) -> Effect Unit

foreign import deffi_ :: String -> Effect Unit

wagsableTuple ::
  forall controlNew b c.
  FromEnv (ORow controlNew) =>
  CreateT b () c =>
  GraphIsRenderable c =>
  { | controlNew } -> { | b } -> { | controlNew } /\ { | b }
wagsableTuple = (/\)

infixr 6 wagsableTuple as /@\

stash :: Event Stash
stash =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    ffi_ id f
    pure (deffi_ id)

wag :: Event Wag
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

class GetRAlphaAndControlAlpha wagsi rAlpha controlAlpha | wagsi -> rAlpha controlAlpha

instance getRAlphaAndControlAlpha ::
  GetRAlphaAndControlAlpha
    (env -> { | controlAlpha } -> ({ | controlAlpha } /\ { | rAlpha }))
    rAlpha
    controlAlpha

type WTrigger control
  = { control :: control, fromTrigger :: Boolean }

cont___w444g ::
  forall wagsi rAlpha audio engine proof res outGraphAlpha controlAlpha rBeta outGraphBeta controlBeta.
  -- the residual always has to be a monoid
  Monoid res =>
  -- the audio needs to be renderable
  AudioInterpret audio engine =>
  -- gets an r alpha from the input term. this is usually a graph
  GetRAlphaAndControlAlpha wagsi rAlpha controlAlpha =>
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
  -- controlBeta has to be a FromEnv in case we start in the middle
  FromEnv (ORow controlBeta) =>
  EZCtrl controlAlpha controlBeta =>
  wagsi ->
  (Extern -> { | controlBeta } -> { | controlBeta } /\ { | rBeta }) ->
  ( Scene Extern audio engine Frame0 res
      /\ ( Extern ->
        WAG audio engine proof res { | outGraphAlpha } { control :: (ORow controlAlpha), fromTrigger :: Boolean } ->
        Scene Extern audio engine proof res
      )
  )
cont___w444g _ newGraph =
  (createFrame @!> branchingLogic)
    /\ \env w ->
        let
          controlAlpha = extract w

          controlBeta = ezctrl env controlAlpha.control

          (wBeta :: WAG audio engine proof res { | outGraphBeta } (WTrigger (ORow controlAlpha))) = patch w

          wagBeta = wBeta $> { control: controlBeta, fromTrigger: controlAlpha.fromTrigger }
        in
          branchingLogic wagBeta
  where
  createFrame ::
    Extern ->
    IxWAG audio engine Frame0 res {} { | outGraphBeta } { fromTrigger :: Boolean, control :: (ORow controlBeta) }
  createFrame e = ipatch $> { fromTrigger: false, control: fromEnv e }

  branchingLogic ::
    forall proofB.
    WAG audio engine proofB res { | outGraphBeta } { control :: (ORow controlBeta), fromTrigger :: Boolean } ->
    Scene Extern audio engine proofB res
  branchingLogic =
    ( ibranch
        ( \e a ->
            let
              newCtrl /\ rec = newGraph e (unwrap a.control)

              loop =
                ichange rec
                  $> { fromTrigger: false, control: (wrap newCtrl) }
            in
              case e.trigger of
                Just (HotReload (Wag wg)) ->
                  if a.fromTrigger then
                    Right loop
                  else
                    Left (lcmap (map (\x -> x { fromTrigger = true })) (snd wg e))
                _ -> Right loop
        )
    )
