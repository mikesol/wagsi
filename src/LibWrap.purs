module LibWrap where

import Control.Comonad.Cofree (Cofree)
import Data.Newtype (class Newtype)
import Data.Vec as V
import WAGS.Lib.BufferPool (TimeHeadroomOffsets, Buffy)
import WAGS.Lib.Rate (Rate, Emitter)

newtype ARate = ARate Rate

derive instance newtypeARate :: Newtype ARate _

newtype AnEmitter = AnEmitter Emitter

derive instance newtypeAnEmitter :: Newtype AnEmitter _

type BuffyVec n = V.Vec n Buffy

type BuffyStream n = TimeHeadroomOffsets ->
  Cofree ((->) TimeHeadroomOffsets) (BuffyVec n)

newtype ABufferPool n = ABufferPool (BuffyStream n)

derive instance newtypeABufferPool :: Newtype (ABufferPool n) _
