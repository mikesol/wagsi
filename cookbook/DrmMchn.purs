module WAGSI.Cookbook.DrmMchn where

import Data.Typelevel.Num
import Prelude

import Data.Array (filter, intercalate)
import Data.Maybe (Maybe(..), fromMaybe)
import Data.Vec (Vec, empty, fill, toArray, (+>))
import Foreign.Object (Object, fromHomogeneous)
import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (AFuture, BufferUrl(..))

y = true :: Boolean
n = false :: Boolean

type Sig a b = Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Int -> a -> Vec D16 b

v :: forall a. Sig a a
v _ a0 _ a2 _ a3 _ a4 _ a5 _ a6 _ a7 _ a8 _ a9 _ a10 _ a11 _ a12 _ a13 _ a14 _ a15 _ a16 = a0 +> a2 +> a3 +> a4 +> a5 +> a6 +> a7 +> a8 +> a9 +> a10 +> a11 +> a12 +> a13 +> a14 +> a15 +> a16 +> empty

u :: forall a. a -> Sig Boolean (Maybe a)
u a _ a0 _ a2 _ a3 _ a4 _ a5 _ a6 _ a7 _ a8 _ a9 _ a10 _ a11 _ a12 _ a13 _ a14 _ a15 _ a16 = map (if _ then Just a else Nothing) (a0 +> a2 +> a3 +> a4 +> a5 +> a6 +> a7 +> a8 +> a9 +> a10 +> a11 +> a12 +> a13 +> a14 +> a15 +> a16 +> empty)

muzak :: String
muzak = intercalate " , "
  $ map (intercalate " ")
  $ map toArray
  $ (map <<< map) (fromMaybe "~")
  $ filter (notEq (fill (const Nothing)))
  $ toArray machine

sounds :: Object BufferUrl
sounds = map BufferUrl $ fromHomogeneous
  { xe3: "https://freesound.org/data/previews/334/334850_3768893-hq.mp3" -- electr 3
  , xe2: "https://freesound.org/data/previews/43/43315_19852-hq.mp3" -- electr 2
  , xe1: "https://freesound.org/data/previews/254/254239_4486188-hq.mp3" -- electr 1 
  , xe0: "https://freesound.org/data/previews/30/30715_164285-hq.mp3" -- electr 0
  , xdk: "https://freesound.org/data/previews/178/178659_717950-hq.mp3" -- dink
  , xmc: "https://freesound.org/data/previews/388/388443_7301591-hq.mp3" -- maraca
  , xcp: "https://freesound.org/data/previews/436/436674_8904693-hq.mp3" -- clap
  , xcb: "https://freesound.org/data/previews/99/99766_29308-hq.mp3" -- cowbell
  , xho: "https://freesound.org/data/previews/87/87726_932703-hq.mp3" -- open hh
  , xhc: "https://freesound.org/data/previews/0/802_797-hq.mp3" -- closed hh
  , xsn: "https://freesound.org/data/previews/387/387186_7255534-hq.mp3" -- snare
  , xth: "https://freesound.org/data/previews/337/337914_5997821-hq.mp3" -- hi tom
  , xtm: "https://freesound.org/data/previews/173/173838_1954411-hq.mp3" -- mid tom
  , xtl: "https://freesound.org/data/previews/173/173837_1954411-hq.mp3"  -- lo tom
  , xk1: "https://freesound.org/data/previews/568/568581_10655277-hq.mp3" -- kick 1
  , xk0: "https://freesound.org/data/previews/344/344759_1676145-hq.mp3" -- kick 0
  }

wag :: AFuture
wag = make 3.2
  { earth: s muzak
  , title: "drum mash een"
  , sounds
  }

machine :: Vec D16 (Vec D16 (Maybe String))
machine =
  v
    1
    (u "xe3" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    2
    (u "xe2" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    3
    (u "xe1" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    4
    (u "xe0" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    5
    (u "xdk" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    6
    (u "xmc" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    7
    (u "xcp" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    8
    (u "xcb" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    9
    (u "xho" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    10
    (u "xhc" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    11
    (u "xsn" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    12
    (u "xth" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    13
    (u "xtm" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    14
    (u "xtl" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    15
    (u "xk1" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)
    16
    (u "xk0" 1 n 2 n 3 n 4 n 5 n 6 n 7 n 8 n 9 n 10 n 11 n 12 n 13 n 14 n 15 n 16 n)