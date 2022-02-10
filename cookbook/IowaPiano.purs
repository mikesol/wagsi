module WAGSI.Cookbook.IowaPiano where

import Prelude

import Data.Array ((..))
import Data.Lens (set)
import Data.Profunctor (lcmap)
import Data.String as String
import Data.Tuple.Nested ((/\))
import Data.Variant.Either (left)
import Foreign.Object (Object)
import Foreign.Object as Object
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Samples (initialEntropy)
import WAGS.Lib.Tidal.Tidal (betwixt, changeVolume, lns, make, onTag, parse, s)
import WAGS.Lib.Tidal.Types (BufferUrl(..), Sample(..))
import WAGS.Math (calcSlope)

arenv :: Number -> Number
arenv t
  | t < 0.1 = calcSlope 0.0 0.0 0.1 1.0 t
  | otherwise = calcSlope 0.1 1.0 1.0 0.0 t

e2s :: Number -> String
e2s e
  | e < 0.4 = "ip:F5"
  | e < 0.6 = "ip:G5"
  | e < 0.8 = "silence"
  | otherwise = "ip:Bb5"

-- many thanks to http://theremin.music.uiowa.edu/MIS.html
wag :: AFuture
wag = make 1.0
  { earth: s
      $ onTag "fun"
          ( map
              ( set lns $ left
                  $ lcmap initialEntropy (Sample <<< e2s)
              )
          )
      $ map
          ( changeVolume
              (_.sampleTime >>> (betwixt 0.0 1.0 <<< arenv))
          )
      $ parse "ip:C4 ip:G4 ip:Bb4 ip:D4 ip:D5 ip:F4, ~ ip:F5;fun ~"
  , sounds: pno
  , preload: map Sample [ "ip:C5", "ip:D5", "ip:E5", "ip:F5", "ip:G5", "ip:A5", "ip:Bb5" ]
  , title: "m i n i m a l"
  }

keys = "C Db D Eb E F Gb G Ab A Bb B" :: String
pno =
  Object.fromFoldable $ join $ map
    ( \key ->
        map
          ( \n -> ("ip:" <> key <> show n)
              /\ BufferUrl
                ( "https://klank-share.s3.amazonaws.com/iowa/piano/Piano.mf." <> key
                    <> show n
                    <> ".ogg"
                )
          )
          (2 .. 5)
    )
    (String.split (String.Pattern " ") keys) :: Object BufferUrl