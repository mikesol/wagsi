module WAGSI.Plumbing.WagsiMode(WagsiMode(..), wagsiMode) where

data WagsiMode = LiveCoding | DJQuickCheck

foreign import wagsiMode_ :: WagsiMode -> WagsiMode -> WagsiMode

wagsiMode = wagsiMode_ LiveCoding DJQuickCheck