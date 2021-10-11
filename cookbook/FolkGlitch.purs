module WAGSI.Cookbook.FolkGlitch where

import Prelude

import Data.Lens (set)
import Data.Profunctor (lcmap)
import WAGSI.Plumbing.Samples (initialEntropy)
import WAGSI.Plumbing.Samples as S
import WAGSI.Plumbing.Tidal (lns, lnv, make, onTag, parse, s)
import WAGSI.Plumbing.Types (TheFuture)

wag :: TheFuture
wag = make 1.0
  { earth: s
      $ onTag "tb"
          ( map
              $ compose
                  (set lnv $ lcmap initialEntropy ((>) 0.5 >>> if _ then 0.0 else 1.0))
                  (set lns $ lcmap initialEntropy ((>) 0.5 >>> if _ then S.tabla_0__Sample else S.tabla2_0__Sample))
          )
      $ parse "bassdm <chin*4 psr> tabla;tb ~"
  , title: "Tabla + glitch"
  , preload: [S.tabla_0__Sample, S.tabla2_0__Sample]
  }