module WAGSI.Plumbing.WagsiMode (WagsiMode(..), wagsiMode) where

data WagsiMode = LiveCoding | Example

foreign import wagsiMode_ :: WagsiMode -> WagsiMode -> WagsiMode

wagsiMode = wagsiMode_ LiveCoding Example