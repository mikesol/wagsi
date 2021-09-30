module WAGSI.Plumbing.Example where

import WAGSI.Plumbing.Tidal (TheFuture, make, s)

example :: TheFuture
example = make 1.0 { earth: s "" }