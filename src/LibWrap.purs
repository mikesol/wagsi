module LibWrap
  ( ARate(..)
  , AnEmitter(..)
  , ABufferPool(..)
  , AnImpulse(..)
  ) where

import Control.Comonad.Cofree (Cofree)
import Data.Identity (Identity)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.Typelevel.Num (class Pos)
import FromEnv (class FromEnv)
import WAGS.Lib.BufferPool (BuffyStream, bufferPool)
import WAGS.Lib.Impulse (blip, impulse)
import WAGS.Lib.Rate (Emitter, Rate, makeEmitter, makeRate)

newtype ARate
  = ARate Rate

derive instance newtypeARate :: Newtype ARate _

newtype AnEmitter
  = AnEmitter Emitter

derive instance newtypeAnEmitter :: Newtype AnEmitter _

newtype ABufferPool n r
  = ABufferPool (BuffyStream n r)

derive instance newtypeABufferPool :: Newtype (ABufferPool n r) _

newtype AnImpulse = AnImpulse (Cofree Identity Boolean)

derive instance newtypeAnImpulse :: Newtype AnImpulse _

newtype ABlip = ABlip (Boolean -> Cofree ((->) Boolean) Boolean)

derive instance newtypeABlip :: Newtype ABlip _

----
instance fromEnvRate :: FromEnv ARate where
  fromEnv { time } = ARate (makeRate { prevTime: time, startsAt: time })

instance fromEnvEmitter :: FromEnv AnEmitter where
  fromEnv { time } = AnEmitter (makeEmitter { prevTime: time, startsAt: time })

instance fromEnvBufferPool :: Pos n => FromEnv (ABufferPool n r) where
  fromEnv _ = ABufferPool (bufferPool Nothing Nothing)

instance fromEnvImpulse :: FromEnv AnImpulse where
  fromEnv _ = AnImpulse impulse

instance fromEnvBlip :: FromEnv ABlip where
  fromEnv _ = ABlip blip
