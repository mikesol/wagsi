module WAGSI.LiveCodeHere.Room0 where

import Math
import Prelude
import WAGS.Create.Optionals
import Data.NonEmpty (NonEmpty, (:|))
import WAGS.Lib.Rate (ARate)
import WAGSI.Plumbing.Types (Extern)

type Instruments a
  = { kick1 :: a, sideStick :: a, snare :: a, clap :: a, snareRoll :: a, kick2 :: a, closedHH :: a, shaker :: a, openHH :: a, tamb :: a, crash :: a, ride :: a }

data Note
  = Note Int Int Int

notes :: Instruments (NonEmpty Array Note)
notes = { kick1: Note 127 0 12 :| [ Note 127 24 36, Note 127 72 84, Note 127 144 154, Note 127 168 181, Note 127 216 227, Note 127 264 274, Note 126 384 393, Note 127 408 419, Note 127 456 467, Note 127 528 537, Note 127 552 563, Note 127 600 610, Note 127 648 658, Note 127 768 778, Note 126 792 802, Note 126 840 853, Note 126 912 921, Note 127 936 947, Note 126 984 995, Note 127 1032 1042, Note 127 1152 1162, Note 127 1176 1186, Note 127 1224 1236, Note 126 1296 1306, Note 127 1320 1332, Note 126 1368 1380, Note 127 1416 1428 ], sideStick: Note 108 96 120 :| [ Note 108 288 312, Note 108 480 504, Note 108 672 696, Note 108 864 888, Note 108 1056 1080, Note 108 1248 1272, Note 108 1440 1464 ], snare: Note 127 288 312 :| [ Note 127 672 698, Note 127 1056 1081, Note 127 1440 1460, Note 110 1488 1496, Note 110 1512 1520 ], clap: Note 127 96 120 :| [ Note 113 288 312, Note 125 480 504, Note 113 672 696, Note 125 864 888, Note 113 1056 1080, Note 125 1248 1272, Note 113 1440 1464 ], snareRoll: Note 108 360 378 :| [ Note 113 744 763, Note 110 888 903, Note 113 1128 1146, Note 110 1272 1288 ], kick2: Note 111 0 6 :| [ Note 111 24 30, Note 110 144 150, Note 111 168 174, Note 110 384 389, Note 111 408 414, Note 112 528 534, Note 111 552 559, Note 111 768 776, Note 111 792 800, Note 111 912 920, Note 111 936 943, Note 111 1152 1158, Note 110 1176 1183, Note 111 1296 1302, Note 111 1320 1326 ], closedHH: Note 126 24 33 :| [ Note 126 72 84, Note 127 120 132, Note 127 168 181, Note 126 216 233, Note 127 264 280, Note 126 360 378, Note 126 408 425, Note 126 456 473, Note 123 504 522, Note 126 552 569, Note 126 600 617, Note 127 648 667, Note 124 744 762, Note 124 792 810, Note 125 840 858, Note 124 888 906, Note 124 936 954, Note 125 984 1002, Note 127 1032 1051, Note 127 1128 1148, Note 125 1176 1194, Note 127 1224 1242, Note 127 1272 1290, Note 125 1320 1338, Note 126 1368 1386, Note 127 1416 1435, Note 126 1512 1532 ], shaker: Note 110 0 14 :| [ Note 111 48 61, Note 111 96 112, Note 111 144 161, Note 111 192 210, Note 111 240 260, Note 110 288 308, Note 110 336 355, Note 111 384 403, Note 111 432 452, Note 107 480 500, Note 110 528 547, Note 111 576 597, Note 111 624 645, Note 111 672 694, Note 111 720 740, Note 111 768 788, Note 111 792 803, Note 111 816 837, Note 111 840 854, Note 111 864 884, Note 111 888 901, Note 111 912 933, Note 111 936 948, Note 111 960 981, Note 111 984 997, Note 111 1008 1029, Note 111 1032 1046, Note 111 1056 1077, Note 111 1080 1093, Note 111 1104 1126, Note 111 1128 1141, Note 111 1152 1173, Note 111 1176 1190, Note 111 1200 1220, Note 111 1224 1237, Note 111 1248 1270, Note 111 1272 1287, Note 111 1296 1317, Note 111 1320 1333, Note 111 1344 1366, Note 111 1368 1381, Note 111 1392 1414, Note 111 1416 1429, Note 111 1440 1462, Note 111 1464 1478, Note 111 1488 1507, Note 111 1512 1525 ], openHH: Note 127 288 312 :| [ Note 127 672 696, Note 127 1056 1080, Note 127 1440 1464 ], tamb: Note 115 96 120 :| [ Note 115 288 312, Note 115 480 504, Note 115 672 696, Note 115 864 888, Note 115 1056 1080, Note 115 1248 1272, Note 115 1440 1464 ], crash: Note 89 0 16 :| [], ride: Note 72 0 10 :| [ Note 88 96 106, Note 88 192 201, Note 88 288 297, Note 88 384 393, Note 88 480 489, Note 88 576 585, Note 88 672 681, Note 88 768 776, Note 88 864 873, Note 88 960 968, Note 88 1056 1064, Note 88 1152 1161, Note 88 1248 1256, Note 88 1344 1353, Note 88 1440 1449 ] }

type Acc r
  = ( room0Rate0 :: ARate | r )

actualizer :: Extern -> { room0Rate0 :: Number }
actualizer _ = { room0Rate0: 1.0 }

graph :: forall r. Extern -> { room0Rate0 :: Number | r } -> _
graph _ _ = {}
