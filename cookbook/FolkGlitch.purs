module WAGSI.Cookbook.FolkGlitch where

import Prelude

import Data.Lens (set)
import Data.Newtype (unwrap, wrap)
import Data.Profunctor (lcmap)
import Data.Variant.Either (left)
import WAGS.Lib.Tidal.Tidal (lns, lnv, make, onTag, parse, s)
import WAGS.Lib.Tidal.Types (AFuture)

tabla_0__Sample = wrap "tabla"
tabla2_0__Sample = wrap "tabla2"
wag :: AFuture
wag = make 1.0
  { earth: s
      $ onTag "tb"
          ( map
              $ compose
                  (set lnv $ lcmap (unwrap >>> _.initialEntropy) ((>) 0.5 >>> if _ then 0.0 else 1.0))
                  (set lns $ left $ lcmap (unwrap >>> _.initialEntropy) ((>) 0.5 >>> if _ then tabla_0__Sample else tabla2_0__Sample))
          )
      $ parse "bassdm <chin*4 psr> tabla;tb ~"
  , title: "Tabla + glitch"
  , preload: [tabla_0__Sample, tabla2_0__Sample]
  }