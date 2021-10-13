module WAGSI.Plumbing.WagsiMode (WagsiMode(..), wagsiMode) where

data WagsiMode = LiveCoding | DJQuickCheck | Example

foreign import wagsiMode_ :: WagsiMode -> WagsiMode -> WagsiMode -> WagsiMode

wagsiMode = wagsiMode_ LiveCoding DJQuickCheck Example