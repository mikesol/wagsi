module WAGSI.Plumbing.Example where

import Data.Maybe (Maybe(..))
import WAGSI.Plumbing.Download (HasOrLacks)
import WAGSI.Plumbing.Tidal (TheFuture, make, s)

title :: String
title = "Example"

hasOrLacks :: Maybe HasOrLacks
hasOrLacks = Nothing

example :: TheFuture
example = make 1.0 { earth: s "" }