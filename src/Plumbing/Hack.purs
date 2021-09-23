module WAGSI.Plumbing.Hack where

import Prelude

import Control.Comonad (extract)
import Data.Array as A
import Data.Either (Either(..))
import Data.Foldable (fold)
import Data.Maybe (Maybe(..))
import Data.Profunctor (lcmap)
import Data.Traversable (sequence)
import Data.Tuple (snd)
import Data.Tuple.Nested ((/\), type (/\))
import Effect (Effect)
import Effect.Random (randomInt)
import FRP.Event (Event, makeEvent)
import Foreign.Object (Object)
import Prim.RowList as RowList
import Type.Row.Homogeneous (class Homogeneous)
import WAGS.Change (class Change, ichange)
import WAGS.Control.Functions (ibranch, (@!>))
import WAGS.Control.Indexed (IxWAG)
import WAGS.Control.Types (Frame0, Scene, WAG)
import WAGS.CreateT (class CreateT)
import WAGS.Interpret (class AudioInterpret)
import WAGS.Patch (class Patch, ipatch, patch)
import WAGS.Run (SceneI(..))
import WAGS.Validation (class GraphIsRenderable)
import WAGS.WebAPI (BrowserAudioBuffer, BrowserFloatArray, BrowserPeriodicWave)
import WAGSI.Plumbing.EZCtrl (class EZCtrl, ezctrl)
import WAGSI.Plumbing.FromEnv (class FromEnv, fromEnv)
import WAGSI.Plumbing.StashStuff (class ToAudioBufferRL, class ToFloatArrayRL, class ToPeriodicWaveRL, StashedSig)
import WAGSI.Plumbing.Types (Wag(..), Extern, Evt(..))

foreign import handlers :: Effect (Object (Wag -> Effect Unit))

foreign import wag_ :: String -> (Wag -> Effect Unit) -> Effect Unit

foreign import dewag_ :: String -> Effect Unit

foreign import stashHandlers :: forall buffers floatArrays periodicWaves. Effect (Object (StashedSig buffers floatArrays periodicWaves -> Effect Unit))

foreign import stash_ :: forall buffers floatArrays periodicWaves. String -> (StashedSig buffers floatArrays periodicWaves -> Effect Unit) -> Effect Unit

foreign import deStash_ :: String -> Effect Unit

wagsableTuple
  :: forall controlNew b c
   . FromEnv { | controlNew }
  => CreateT b () c
  => GraphIsRenderable c
  => { | controlNew }
  -> { | b }
  -> { | controlNew } /\ { | b }
wagsableTuple = (/\)

infixr 6 wagsableTuple as /@\

stash :: forall buffers floatArrays periodicWaves. Event (StashedSig buffers floatArrays periodicWaves)
stash =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    stash_ id f
    pure (deStash_ id)

wag :: Event Wag
wag =
  makeEvent \f -> do
    id <- (fold <<< map show) <$> (sequence $ A.replicate 24 (randomInt 0 9))
    wag_ id f
    pure (dewag_ id)

class GetRAlphaAndControlAlpha :: forall k1 k2 k3. k1 -> k2 -> k3 -> Constraint
class GetRAlphaAndControlAlpha wagsi rAlpha controlAlpha | wagsi -> rAlpha controlAlpha

instance getRAlphaAndControlAlpha ::
  GetRAlphaAndControlAlpha
    (env -> { | controlAlpha } -> ({ | controlAlpha } /\ { | rAlpha }))
    rAlpha
    controlAlpha

type WTrigger control
  = { control :: control, fromTrigger :: Boolean }

cont___w444g
  :: forall wagsi rAlpha audio engine proof res outGraphAlpha controlAlpha rBeta outGraphBeta controlBeta periodicWavesO buffersO floatArraysO
   .
  -- the residual always has to be a monoid
  Monoid res
  =>
  -- the audio needs to be renderable
  AudioInterpret audio engine
  =>
  -- gets an r alpha from the input term. this is usually a graph
  GetRAlphaAndControlAlpha wagsi rAlpha controlAlpha
  =>
  -- computes the input graph from rAlpha, used for patching
  CreateT rAlpha () outGraphAlpha
  =>
  -----
  -- validation step for the output graph
  -- we skip because the /@\ operation guarantees it for now
  -- add back if we get rid of that flow
  -- GraphIsRenderable outGraphBeta
  -- => 
  -- computes the output graph from the input term
  CreateT rBeta () outGraphBeta
  =>
  -- allows the output graph to be changed by rBeta
  Change rBeta outGraphBeta
  =>
  -- the transition from alpha to beta
  Patch outGraphAlpha outGraphBeta
  =>
  -- the transition from the first scene to beta in case we start in the middle
  Patch () outGraphBeta
  =>
  -- controlBeta has to be a FromEnv in case we start in the middle
  FromEnv { | controlBeta }
  => EZCtrl controlAlpha controlBeta
  -- the first argument is from the stash
  => StashedSig periodicWavesO buffersO floatArraysO
  -- the second argument is the previous wagsi
  -> wagsi
  -> (Extern buffersO floatArraysO periodicWavesO -> { | controlBeta } -> { | controlBeta } /\ { | rBeta })
  -> ( Scene (Extern buffersO floatArraysO periodicWavesO) audio engine Frame0 res
         /\
           ( Extern buffersO floatArraysO periodicWavesO
             -> WAG audio engine proof res outGraphAlpha { control :: { | controlAlpha }, fromTrigger :: Boolean }
             -> Scene (Extern buffersO floatArraysO periodicWavesO) audio engine proof res
           )
     )
cont___w444g _ _ newGraph =
  (createFrame @!> branchingLogic)
    /\ \env w ->
      let
        controlAlpha = extract w

        controlBeta = ezctrl env controlAlpha.control

        (wBeta :: WAG audio engine proof res outGraphBeta (WTrigger { | controlAlpha })) = patch { microphone: Nothing } w

        wagBeta = wBeta $> { control: controlBeta, fromTrigger: controlAlpha.fromTrigger }
      in
        branchingLogic wagBeta
  where
  createFrame
    :: (Extern buffersO floatArraysO periodicWavesO)
    -> IxWAG audio engine Frame0 res () outGraphBeta { fromTrigger :: Boolean, control :: { | controlBeta } }
  -- todo: enable microphone?
  createFrame e = ipatch { microphone: Nothing } $> { fromTrigger: false, control: fromEnv e }

  branchingLogic
    :: forall proofB
     . WAG audio engine proofB res outGraphBeta { control :: { | controlBeta }, fromTrigger :: Boolean }
    -> Scene (Extern buffersO floatArraysO periodicWavesO) audio engine proofB res
  branchingLogic =
    ( ibranch
        ( \e@(SceneI { trigger }) a ->
            let
              newCtrl /\ rec = newGraph e (a.control)

              loop =
                ichange rec
                  $> { fromTrigger: false, control: (newCtrl) }
            in
              case trigger of
                Just (HotReload (Wag wg)) ->
                  if a.fromTrigger then
                    Right loop
                  else
                    Left (lcmap (map (\x -> x { fromTrigger = true })) (snd wg e))
                _ -> Right loop
        )
    )
