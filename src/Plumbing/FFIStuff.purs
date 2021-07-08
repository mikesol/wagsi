module WAGSI.Plumbing.FFIStuff where

import Data.Symbol (class IsSymbol, reflectSymbol)
import Data.Tuple.Nested (type (/\), (/\))
import Data.Typelevel.Num (class Pos)
import Data.Vec as V
import Effect (Effect)
import Foreign.Object (Object, fromHomogeneous)
import Foreign.Object as O
import Prim.Row as Row
import Prim.RowList as RowList
import Record as Record
import Type.Proxy (Proxy(..))
import Type.Row.Homogeneous (class Homogeneous)
import WAGS.Interpret (AudioContext, BrowserPeriodicWave, makePeriodicWave)

type Stash
  = { buffers :: Object String
    , floatArrays :: Object (Array Number)
    , periodicWaves :: Object ((Array Number /\ Array Number) /\ (AudioContext -> Effect BrowserPeriodicWave))
    }

class ToPeriodicWaveFunctionRL :: forall k. k -> Row Type -> Constraint
class ToPeriodicWaveFunctionRL rl r where
  toPeriodicWaveFunctionRL :: Proxy rl -> { | r } -> Object ((Array Number /\ Array Number) /\(AudioContext -> Effect BrowserPeriodicWave))

instance onlyContainsPeriodicWavesRLNil :: ToPeriodicWaveFunctionRL RowList.Nil r where
  toPeriodicWaveFunctionRL _ _ = O.empty

instance onlyContainsPeriodicWavesRLCons :: (IsSymbol a, Pos n, Row.Cons a (V.Vec n Number /\ V.Vec n Number) r' r, ToPeriodicWaveFunctionRL c r) => ToPeriodicWaveFunctionRL (RowList.Cons a (V.Vec n Number /\ V.Vec n Number) c) r where
  toPeriodicWaveFunctionRL _ r = let sin /\ cos = Record.get (Proxy :: _ a) r in O.insert (reflectSymbol (Proxy :: _ a)) ((V.toArray sin /\ V.toArray cos) /\ (\ctxt -> makePeriodicWave ctxt sin cos)) (toPeriodicWaveFunctionRL (Proxy :: _ c) r)

class ToPeriodicWaveFunction r where
  toPeriodicWaveFunction :: { | r } ->  Object ((Array Number /\ Array Number) /\(AudioContext -> Effect BrowserPeriodicWave))

instance onlyContainsPeriodicWaves :: (RowList.RowToList r rl, ToPeriodicWaveFunctionRL rl r) => ToPeriodicWaveFunction r where
  toPeriodicWaveFunction = toPeriodicWaveFunctionRL (Proxy :: _ rl)

stashable ::
  forall buffers floatArrays periodicWaves.
  Homogeneous buffers String =>
  Homogeneous floatArrays (Array Number) =>
  ToPeriodicWaveFunction periodicWaves =>
  { buffers :: { | buffers }, floatArrays :: { | floatArrays }, periodicWaves :: { | periodicWaves } } -> Stash
stashable { buffers, floatArrays, periodicWaves } =
  { buffers: fromHomogeneous buffers
  , floatArrays: fromHomogeneous floatArrays
  , periodicWaves: toPeriodicWaveFunction periodicWaves
  }
