module LibWrap
  ( ARate(..)
  , AnEmitter(..)
  , ABufferPool(..)
  , AnImpulse(..)
  ) where

import Prelude

import Control.Comonad.Cofree (Cofree, deferCofree)
import Data.Identity (Identity)
import Data.Maybe (Maybe(..))
import Data.Tuple.Nested ((/\))
import Data.Newtype (class Newtype)
import Data.Typelevel.Num (class Pos)
import Data.Vec as V
import FromEnv (class FromEnv)
import WAGS.Lib.BufferPool (Buffy, TimeHeadroomOffsets, bufferPool)
import WAGS.Lib.Rate (Emitter, Rate, makeEmitter, makeRate)

newtype ARate
  = ARate Rate

derive instance newtypeARate :: Newtype ARate _

newtype AnEmitter
  = AnEmitter Emitter

derive instance newtypeAnEmitter :: Newtype AnEmitter _

newtype ABufferPool n
  = ABufferPool
  ( TimeHeadroomOffsets ->
    Cofree ((->) TimeHeadroomOffsets) (V.Vec n Buffy)
  )

derive instance newtypeABufferPool :: Newtype (ABufferPool n) _

newtype AnImpulse = AnImpulse (Cofree Identity Boolean)

impulse :: Cofree Identity Boolean
impulse = go true
  where
  go tf = deferCofree \_ -> tf /\ pure (go false)

derive instance newtypeAnImpulse :: Newtype AnImpulse _

----
instance fromEnvRate :: FromEnv ARate where
  fromEnv { time } = ARate (makeRate { prevTime: time, startsAt: time })

instance fromEnvEmitter :: FromEnv AnEmitter where
  fromEnv { time } = AnEmitter (makeEmitter { prevTime: time, startsAt: time })

instance fromEnvBufferPool :: Pos n => FromEnv (ABufferPool n) where
  fromEnv _ = ABufferPool (bufferPool Nothing Nothing)

instance fromEnvImpulse :: FromEnv AnImpulse where
  fromEnv _ = AnImpulse impulse
