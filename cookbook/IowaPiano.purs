module WAGSI.Cookbook.IowaPiano where

import Prelude

import Data.Array ((..))
import Data.Either (Either(..))
import Data.Lens (_Just, set, traversed)
import Data.Map as Map
import Data.Profunctor (lcmap)
import Data.String as String
import Data.Tuple.Nested ((/\))
import WAGS.Lib.Tidal.Samples (initialEntropy, sampleTime)
import WAGS.Lib.Tidal.Tidal (betwixt, lns, lnv, make, onTag, parse_, s)
import WAGS.Lib.Tidal.Types (BufferUrl(..), Sample(..))
import WAGS.Math (calcSlope)
import WAGSI.Plumbing.Types (WhatsNext)

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
wag :: WhatsNext
wag = make 1.0
  { earth: s
      $ onTag "fun"
          ( map (set lns $ Left $ lcmap initialEntropy (Sample <<< e2s))
          )
      $ set (traversed <<< _Just <<< lnv)
          (lcmap sampleTime (betwixt 0.0 1.0 <<< arenv))
      $ parse_ "ip:C4 ip:G4 ip:Bb4 ip:D4 ip:D5 ip:F4, ~ ip:F5;fun ~"
  , sounds: pno
  , preload: map Sample [ "ip:C5", "ip:D5", "ip:E5", "ip:F5", "ip:G5", "ip:A5", "ip:Bb5" ]
  , title: "m i n i m a l"
  }

keys = "C Db D Eb E F Gb G Ab A Bb B" :: String
pno =
  Map.fromFoldable $ join $ map
    ( \key ->
        map
          ( \n -> Sample ("ip:" <> key <> show n)
              /\ BufferUrl
                ( "https://klank-share.s3.amazonaws.com/iowa/piano/Piano.mf." <> key
                    <> show n
                    <> ".ogg"
                )
          )
          (2 .. 5)
    )
    (String.split (String.Pattern " ") keys) :: Map.Map Sample BufferUrl