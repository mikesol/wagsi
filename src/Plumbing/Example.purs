module WAGSI.Plumbing.Example where

import WAGSI.Plumbing.Types (TheFuture)
import Data.Maybe (Maybe(..))
import WAGSI.Plumbing.Download (HasOrLacks)
import WAGSI.Plumbing.Tidal (make, s)

title :: String
title = "Example"

hasOrLacks :: Maybe HasOrLacks
hasOrLacks = Nothing

example :: TheFuture
example = make 1.0 { earth: s "" }