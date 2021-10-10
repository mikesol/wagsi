module WAGSI.Cookbook.FolkGlitch where

import Prelude

import Data.Lens (set)
import Data.Profunctor (lcmap)
import WAGSI.Plumbing.Samples (initialEntropy)
import WAGSI.Plumbing.Tidal (lnv, make, onTag, parse, s)
import WAGSI.Plumbing.Types (TheFuture)

wag :: TheFuture
wag = make 1.0
  { earth: s
      $ onTag "tb"
          ( map
              $ set lnv
              $ lcmap initialEntropy ((>) 0.5 >>> if _ then 0.0 else 1.0)

          )
      $ parse "bassdm <chin*4 psr> tabla;tb ~"
  , title: "Tabla + glitch"
  }