module WAGSI.Cookbook.BWV887 where

import Prelude

import Data.Array.NonEmpty as NEA
import Data.Array.NonEmpty.Internal (NonEmptyArray)
import Data.Int (toNumber)
import Data.NonEmpty (NonEmpty, (:|))
import Data.Tuple.Nested ((/\))
import Data.Variant.Either (right)
import Data.Variant.Maybe (nothing)
import Foreign.Object as Object
import WAGS.Lib.Tidal (AFuture)
import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (BufferUrl(..), Note(..), NoteInFlattenedTime(..), Sample(..))

wag :: AFuture
wag = make end
  { earth: s notes
  , sounds: Object.fromFoldable
      ( asNea <#> \{ n } -> ("hcd" <> show n) /\
          ( BufferUrl $ "https://sound.klank.dev/petit-italien-k2/jeu-1/"
              <> show n
              <> ".mp3"
          )
      )
  }

type Nt = { n :: Int, t :: Int }

fac :: Int -> Number
fac i = toNumber i * 0.00037 + 1.5

asNea = NEA.fromNonEmpty bwv887
end = fac (NEA.last asNea).t + 2.5 :: Number
len = NEA.length asNea :: Int

notes :: NonEmptyArray (NoteInFlattenedTime (Note Unit))
notes = NEA.mapWithIndex nt2nift asNea

nt2nift :: Int -> Nt -> NoteInFlattenedTime (Note Unit)
nt2nift i { n, t } =
  let
    startsAt = fac t
  in
    NoteInFlattenedTime
      { note: Note
          { sampleFoT: right (Sample $ "hcd" <> show n)
          , forward: true
          , rateFoT: const 1.0
          , bufferOffsetFoT: const 0.0
          , volumeFoT: const 1.0
          }
      , bigStartsAt: startsAt
      , littleStartsAt: startsAt
      , currentCycle: 0
      , positionInCycle: i
      , elementsInCycle: len
      , nCycles: 1
      , duration: 2.0
      , bigCycleDuration: end
      , littleCycleDuration: end
      , tag: nothing
      }

bwv887 :: NonEmpty Array Nt
bwv887 = map (\i -> i { n = i.n - 22 }) $ { n: 68, t: 0 } :| [ { n: 70, t: 1443 }, { n: 71, t: 2860 }, { n: 70, t: 4300 }, { n: 75, t: 5726 }, { n: 63, t: 7120 }, { n: 68, t: 8550 }, { n: 71, t: 9873 }, { n: 70, t: 11223 }, { n: 71, t: 12590 }, { n: 70, t: 13973 }, { n: 68, t: 15303 }, { n: 70, t: 16653 }, { n: 71, t: 17983 }, { n: 73, t: 19276 }, { n: 71, t: 20620 }, { n: 76, t: 21930 }, { n: 68, t: 23213 }, { n: 70, t: 24546 }, { n: 73, t: 25830 }, { n: 71, t: 27176 }, { n: 73, t: 28496 }, { n: 71, t: 29773 }, { n: 70, t: 31056 }, { n: 63, t: 32406 }, { n: 71, t: 32443 }, { n: 65, t: 33716 }, { n: 72, t: 35040 }, { n: 66, t: 35053 }, { n: 73, t: 36373 }, { n: 65, t: 36396 }, { n: 70, t: 37753 }, { n: 58, t: 39066 }, { n: 63, t: 40396 }, { n: 66, t: 41653 }, { n: 65, t: 42966 }, { n: 66, t: 44366 }, { n: 72, t: 44380 }, { n: 65, t: 45670 }, { n: 63, t: 46980 }, { n: 73, t: 48333 }, { n: 65, t: 48346 }, { n: 66, t: 49596 }, { n: 68, t: 51013 }, { n: 74, t: 51050 }, { n: 75, t: 52403 }, { n: 66, t: 52413 }, { n: 71, t: 53726 }, { n: 63, t: 54976 }, { n: 65, t: 56300 }, { n: 68, t: 57646 }, { n: 66, t: 58896 }, { n: 74, t: 60193 }, { n: 68, t: 60210 }, { n: 66, t: 61433 }, { n: 65, t: 62783 }, { n: 66, t: 64070 }, { n: 75, t: 64176 }, { n: 73, t: 65466 }, { n: 67, t: 66740 }, { n: 68, t: 68133 }, { n: 70, t: 69433 }, { n: 66, t: 70720 }, { n: 72, t: 70730 }, { n: 73, t: 72026 }, { n: 64, t: 72080 }, { n: 71, t: 73366 }, { n: 65, t: 74623 }, { n: 66, t: 75906 }, { n: 68, t: 77170 }, { n: 70, t: 78443 }, { n: 64, t: 78496 }, { n: 71, t: 79773 }, { n: 63, t: 79826 }, { n: 68, t: 81163 }, { n: 56, t: 82386 }, { n: 61, t: 83683 }, { n: 70, t: 85010 }, { n: 73, t: 86330 }, { n: 67, t: 87666 }, { n: 75, t: 88930 }, { n: 68, t: 90226 }, { n: 59, t: 90263 }, { n: 73, t: 91566 }, { n: 58, t: 91613 }, { n: 68, t: 92876 }, { n: 67, t: 94236 }, { n: 56, t: 95586 }, { n: 68, t: 95650 }, { n: 76, t: 96886 }, { n: 58, t: 96933 }, { n: 59, t: 98216 }, { n: 75, t: 98316 }, { n: 58, t: 99526 }, { n: 73, t: 99596 }, { n: 71, t: 100853 }, { n: 63, t: 100870 }, { n: 51, t: 102096 }, { n: 70, t: 102166 }, { n: 67, t: 102180 }, { n: 71, t: 103436 }, { n: 68, t: 103450 }, { n: 56, t: 103476 }, { n: 59, t: 104756 }, { n: 75, t: 106020 }, { n: 58, t: 106043 }, { n: 80, t: 107380 }, { n: 59, t: 107406 }, { n: 58, t: 108600 }, { n: 56, t: 109916 }, { n: 71, t: 109973 }, { n: 58, t: 111333 }, { n: 73, t: 111340 }, { n: 59, t: 112613 }, { n: 75, t: 112620 }, { n: 79, t: 113913 }, { n: 76, t: 113980 }, { n: 61, t: 113993 }, { n: 75, t: 115270 }, { n: 80, t: 115270 }, { n: 59, t: 115316 }, { n: 64, t: 116603 }, { n: 73, t: 116616 }, { n: 83, t: 117950 }, { n: 56, t: 117993 }, { n: 71, t: 118013 }, { n: 73, t: 119326 }, { n: 58, t: 119366 }, { n: 61, t: 120633 }, { n: 70, t: 120633 }, { n: 75, t: 121856 }, { n: 68, t: 121916 }, { n: 59, t: 121963 }, { n: 76, t: 123190 }, { n: 61, t: 123213 }, { n: 66, t: 123240 }, { n: 59, t: 124520 }, { n: 75, t: 124520 }, { n: 73, t: 125806 }, { n: 58, t: 125830 }, { n: 75, t: 127366 }, { n: 59, t: 127380 }, { n: 66, t: 128666 }, { n: 71, t: 129940 }, { n: 56, t: 130000 }, { n: 53, t: 131260 }, { n: 73, t: 131280 }, { n: 68, t: 132596 }, { n: 70, t: 133870 }, { n: 55, t: 133936 }, { n: 71, t: 135206 }, { n: 56, t: 135270 }, { n: 63, t: 136610 }, { n: 68, t: 137876 }, { n: 52, t: 137936 }, { n: 70, t: 139210 }, { n: 49, t: 139270 }, { n: 65, t: 140513 }, { n: 67, t: 141810 }, { n: 51, t: 141933 }, { n: 52, t: 143250 }, { n: 68, t: 143266 }, { n: 70, t: 144616 }, { n: 71, t: 145900 }, { n: 53, t: 145936 }, { n: 70, t: 147260 }, { n: 54, t: 147273 }, { n: 75, t: 148580 }, { n: 63, t: 149910 }, { n: 68, t: 151226 }, { n: 71, t: 152513 }, { n: 70, t: 153830 }, { n: 75, t: 153846 }, { n: 75, t: 155150 }, { n: 71, t: 155203 }, { n: 53, t: 155240 }, { n: 70, t: 156463 }, { n: 74, t: 157736 }, { n: 68, t: 157753 }, { n: 75, t: 159026 }, { n: 54, t: 159066 }, { n: 70, t: 159080 }, { n: 71, t: 160420 }, { n: 73, t: 161686 }, { n: 55, t: 161763 }, { n: 71, t: 163016 }, { n: 56, t: 163080 }, { n: 76, t: 164333 }, { n: 68, t: 165643 }, { n: 70, t: 166966 }, { n: 73, t: 168310 }, { n: 76, t: 169610 }, { n: 71, t: 169620 }, { n: 75, t: 170870 }, { n: 55, t: 170876 }, { n: 73, t: 170916 }, { n: 71, t: 172183 }, { n: 73, t: 173460 }, { n: 70, t: 173483 }, { n: 56, t: 174826 }, { n: 71, t: 174840 }, { n: 59, t: 176086 }, { n: 68, t: 177353 }, { n: 64, t: 177366 }, { n: 54, t: 178703 }, { n: 70, t: 178756 }, { n: 61, t: 180006 }, { n: 63, t: 181220 }, { n: 72, t: 181290 }, { n: 52, t: 182576 }, { n: 73, t: 182583 }, { n: 56, t: 182636 }, { n: 68, t: 183846 }, { n: 73, t: 185143 }, { n: 51, t: 186340 }, { n: 70, t: 187673 }, { n: 72, t: 188940 }, { n: 49, t: 190126 }, { n: 76, t: 190270 }, { n: 56, t: 191546 }, { n: 69, t: 192796 }, { n: 61, t: 192846 }, { n: 75, t: 194056 }, { n: 66, t: 194106 }, { n: 58, t: 195266 }, { n: 68, t: 196576 }, { n: 60, t: 196650 }, { n: 64, t: 197990 }, { n: 61, t: 198006 }, { n: 73, t: 199303 }, { n: 81, t: 200616 }, { n: 63, t: 201906 }, { n: 59, t: 201983 }, { n: 79, t: 203250 }, { n: 80, t: 204633 }, { n: 73, t: 206000 }, { n: 65, t: 206063 }, { n: 67, t: 207266 }, { n: 58, t: 207320 }, { n: 68, t: 208473 }, { n: 56, t: 208556 }, { n: 70, t: 209846 }, { n: 55, t: 209893 }, { n: 58, t: 211170 }, { n: 51, t: 212406 }, { n: 71, t: 213800 }, { n: 56, t: 213823 }, { n: 68, t: 215063 }, { n: 44, t: 216423 }, { n: 66, t: 216423 }, { n: 65, t: 217746 }, { n: 56, t: 217760 }, { n: 68, t: 219060 }, { n: 63, t: 220376 }, { n: 70, t: 221643 }, { n: 62, t: 221743 }, { n: 54, t: 222953 }, { n: 63, t: 222966 }, { n: 65, t: 224270 }, { n: 53, t: 224283 }, { n: 51, t: 225600 }, { n: 66, t: 225616 }, { n: 54, t: 226913 }, { n: 46, t: 228160 }, { n: 74, t: 228216 }, { n: 75, t: 229530 }, { n: 47, t: 229560 }, { n: 49, t: 230140 }, { n: 47, t: 230430 }, { n: 49, t: 230743 }, { n: 77, t: 230766 }, { n: 68, t: 230833 }, { n: 47, t: 231043 }, { n: 49, t: 231360 }, { n: 47, t: 231646 }, { n: 49, t: 231986 }, { n: 78, t: 232080 }, { n: 70, t: 232130 }, { n: 47, t: 232266 }, { n: 49, t: 232636 }, { n: 47, t: 232926 }, { n: 49, t: 233263 }, { n: 68, t: 233373 }, { n: 47, t: 233600 }, { n: 49, t: 233993 }, { n: 47, t: 234250 }, { n: 77, t: 234520 }, { n: 49, t: 234680 }, { n: 47, t: 234940 }, { n: 49, t: 235316 }, { n: 47, t: 235646 }, { n: 49, t: 235996 }, { n: 80, t: 235996 }, { n: 47, t: 236230 }, { n: 46, t: 236663 }, { n: 47, t: 236933 }, { n: 74, t: 237416 }, { n: 46, t: 237516 }, { n: 77, t: 238726 }, { n: 70, t: 240060 }, { n: 75, t: 241450 }, { n: 66, t: 241503 }, { n: 70, t: 242746 }, { n: 63, t: 244020 }, { n: 65, t: 245330 }, { n: 66, t: 246643 }, { n: 68, t: 247960 }, { n: 74, t: 249236 }, { n: 70, t: 250586 }, { n: 65, t: 251890 }, { n: 51, t: 253243 }, { n: 75, t: 253276 }, { n: 66, t: 253313 }, { n: 53, t: 254626 }, { n: 65, t: 254740 }, { n: 54, t: 255933 }, { n: 63, t: 255993 }, { n: 53, t: 257286 }, { n: 68, t: 257310 }, { n: 58, t: 258700 }, { n: 62, t: 258716 }, { n: 65, t: 260000 }, { n: 46, t: 260016 }, { n: 51, t: 261330 }, { n: 66, t: 261390 }, { n: 54, t: 262656 }, { n: 63, t: 262686 }, { n: 53, t: 263976 }, { n: 62, t: 264066 }, { n: 54, t: 265340 }, { n: 63, t: 265340 }, { n: 53, t: 266660 }, { n: 51, t: 267990 }, { n: 71, t: 267990 }, { n: 53, t: 269396 }, { n: 61, t: 269400 }, { n: 54, t: 270720 }, { n: 56, t: 272043 }, { n: 71, t: 272096 }, { n: 54, t: 273403 }, { n: 70, t: 273403 }, { n: 59, t: 274700 }, { n: 68, t: 274713 }, { n: 51, t: 276060 }, { n: 66, t: 276073 }, { n: 53, t: 277396 }, { n: 68, t: 277413 }, { n: 59, t: 278753 }, { n: 56, t: 278770 }, { n: 58, t: 280030 }, { n: 54, t: 280096 }, { n: 59, t: 281406 }, { n: 56, t: 281453 }, { n: 68, t: 282793 }, { n: 54, t: 282803 }, { n: 53, t: 284110 }, { n: 59, t: 284116 }, { n: 58, t: 285426 }, { n: 54, t: 285440 }, { n: 52, t: 286746 }, { n: 60, t: 288040 }, { n: 51, t: 288106 }, { n: 61, t: 289420 }, { n: 52, t: 289443 }, { n: 57, t: 290740 }, { n: 49, t: 292056 }, { n: 64, t: 292080 }, { n: 66, t: 293406 }, { n: 51, t: 293420 }, { n: 69, t: 294693 }, { n: 68, t: 296023 }, { n: 69, t: 297356 }, { n: 44, t: 297386 }, { n: 60, t: 297430 }, { n: 68, t: 298706 }, { n: 66, t: 299996 }, { n: 64, t: 301280 }, { n: 49, t: 301303 }, { n: 61, t: 301316 }, { n: 68, t: 302606 }, { n: 52, t: 302640 }, { n: 66, t: 303230 }, { n: 68, t: 303846 }, { n: 49, t: 303986 }, { n: 70, t: 304440 }, { n: 71, t: 305153 }, { n: 56, t: 305240 }, { n: 63, t: 306423 }, { n: 68, t: 307706 }, { n: 54, t: 307776 }, { n: 61, t: 309050 }, { n: 52, t: 309080 }, { n: 54, t: 310313 }, { n: 64, t: 310370 }, { n: 63, t: 311650 }, { n: 56, t: 311680 }, { n: 70, t: 312960 }, { n: 49, t: 312983 }, { n: 64, t: 313010 }, { n: 63, t: 314293 }, { n: 61, t: 315493 }, { n: 54, t: 315526 }, { n: 71, t: 316806 }, { n: 47, t: 316843 }, { n: 63, t: 316893 }, { n: 54, t: 318166 }, { n: 68, t: 319503 }, { n: 59, t: 319516 }, { n: 73, t: 320786 }, { n: 65, t: 320886 }, { n: 56, t: 322026 }, { n: 67, t: 323363 }, { n: 58, t: 323393 }, { n: 75, t: 324640 }, { n: 71, t: 324686 }, { n: 51, t: 325993 }, { n: 56, t: 327316 }, { n: 76, t: 328506 }, { n: 70, t: 328553 }, { n: 75, t: 329776 }, { n: 53, t: 329833 }, { n: 73, t: 331136 }, { n: 55, t: 331240 }, { n: 56, t: 332440 }, { n: 63, t: 332466 }, { n: 71, t: 332480 }, { n: 75, t: 333800 }, { n: 78, t: 334970 }, { n: 62, t: 335050 }, { n: 58, t: 335110 }, { n: 63, t: 336386 }, { n: 59, t: 336423 }, { n: 75, t: 337753 }, { n: 77, t: 338996 }, { n: 68, t: 339043 }, { n: 50, t: 339106 }, { n: 66, t: 340380 }, { n: 51, t: 340390 }, { n: 70, t: 341680 }, { n: 75, t: 342916 }, { n: 47, t: 342980 }, { n: 65, t: 344306 }, { n: 44, t: 344343 }, { n: 72, t: 345656 }, { n: 46, t: 347003 }, { n: 74, t: 347003 }, { n: 75, t: 348446 }, { n: 63, t: 348500 }, { n: 51, t: 348513 }, { n: 62, t: 349736 }, { n: 77, t: 349796 }, { n: 60, t: 351080 }, { n: 78, t: 351093 }, { n: 77, t: 352416 }, { n: 62, t: 352536 }, { n: 82, t: 353723 }, { n: 66, t: 353783 }, { n: 54, t: 355060 }, { n: 70, t: 355103 }, { n: 75, t: 356363 }, { n: 59, t: 356370 }, { n: 78, t: 357640 }, { n: 63, t: 357733 }, { n: 77, t: 358963 }, { n: 62, t: 358976 }, { n: 78, t: 360326 }, { n: 63, t: 360383 }, { n: 68, t: 361653 }, { n: 77, t: 361653 }, { n: 75, t: 362933 }, { n: 60, t: 362970 }, { n: 61, t: 364333 }, { n: 77, t: 364376 }, { n: 78, t: 365716 }, { n: 80, t: 367013 }, { n: 59, t: 367026 }, { n: 65, t: 367026 }, { n: 78, t: 368366 }, { n: 61, t: 368370 }, { n: 58, t: 368430 }, { n: 63, t: 369696 }, { n: 83, t: 369696 }, { n: 57, t: 370976 }, { n: 66, t: 370976 }, { n: 75, t: 370976 }, { n: 77, t: 372240 }, { n: 56, t: 372270 }, { n: 71, t: 372303 }, { n: 80, t: 373570 }, { n: 59, t: 373626 }, { n: 78, t: 374813 }, { n: 51, t: 374826 }, { n: 80, t: 376090 }, { n: 70, t: 376126 }, { n: 50, t: 376150 }, { n: 78, t: 377406 }, { n: 46, t: 377446 }, { n: 77, t: 378680 }, { n: 50, t: 378760 }, { n: 78, t: 380036 }, { n: 51, t: 380113 }, { n: 73, t: 381346 }, { n: 79, t: 382570 }, { n: 44, t: 383886 }, { n: 80, t: 383920 }, { n: 70, t: 385150 }, { n: 78, t: 386370 }, { n: 72, t: 386433 }, { n: 73, t: 387793 }, { n: 76, t: 387810 }, { n: 49, t: 387856 }, { n: 71, t: 389076 }, { n: 77, t: 390390 }, { n: 78, t: 391733 }, { n: 42, t: 391763 }, { n: 68, t: 392963 }, { n: 76, t: 394190 }, { n: 70, t: 394213 }, { n: 75, t: 395550 }, { n: 47, t: 395586 }, { n: 71, t: 395606 }, { n: 51, t: 396883 }, { n: 56, t: 398176 }, { n: 73, t: 399526 }, { n: 70, t: 399556 }, { n: 55, t: 400766 }, { n: 58, t: 402030 }, { n: 47, t: 403410 }, { n: 63, t: 404780 }, { n: 71, t: 405996 }, { n: 68, t: 406073 }, { n: 68, t: 406630 }, { n: 49, t: 407343 }, { n: 64, t: 407360 }, { n: 70, t: 408680 }, { n: 73, t: 409926 }, { n: 67, t: 411263 }, { n: 51, t: 411286 }, { n: 63, t: 412616 }, { n: 70, t: 413950 }, { n: 43, t: 413956 }, { n: 61, t: 413993 }, { n: 44, t: 415293 }, { n: 59, t: 415300 }, { n: 63, t: 416586 }, { n: 47, t: 417916 }, { n: 68, t: 417966 }, { n: 49, t: 419240 }, { n: 58, t: 419263 }, { n: 52, t: 420483 }, { n: 61, t: 420483 }, { n: 73, t: 421803 }, { n: 46, t: 421826 }, { n: 64, t: 421833 }, { n: 51, t: 423246 }, { n: 67, t: 423316 }, { n: 63, t: 424613 }, { n: 39, t: 425903 }, { n: 61, t: 425983 }, { n: 68, t: 427223 }, { n: 44, t: 427260 }, { n: 59, t: 427303 }, { n: 46, t: 428530 }, { n: 58, t: 428583 }, { n: 47, t: 429896 }, { n: 63, t: 429926 }, { n: 56, t: 429940 }, { n: 46, t: 431253 }, { n: 61, t: 431253 }, { n: 59, t: 432596 }, { n: 51, t: 432640 }, { n: 58, t: 433963 }, { n: 39, t: 433976 }, { n: 55, t: 434000 }, { n: 59, t: 435363 }, { n: 44, t: 435376 }, { n: 56, t: 435376 }, { n: 47, t: 436713 }, { n: 46, t: 437996 }, { n: 63, t: 438056 }, { n: 47, t: 439366 }, { n: 68, t: 439366 }, { n: 46, t: 440683 }, { n: 71, t: 442053 }, { n: 44, t: 442060 }, { n: 46, t: 443376 }, { n: 73, t: 443390 }, { n: 47, t: 444673 }, { n: 75, t: 444686 }, { n: 49, t: 446010 }, { n: 76, t: 446010 }, { n: 67, t: 446036 }, { n: 75, t: 447393 }, { n: 47, t: 447416 }, { n: 68, t: 447483 }, { n: 52, t: 448706 }, { n: 73, t: 448760 }, { n: 71, t: 450070 }, { n: 44, t: 450080 }, { n: 46, t: 451413 }, { n: 73, t: 451413 }, { n: 49, t: 452686 }, { n: 70, t: 452686 }, { n: 68, t: 453973 }, { n: 47, t: 453993 }, { n: 49, t: 455333 }, { n: 67, t: 455346 }, { n: 47, t: 456623 }, { n: 46, t: 457976 }, { n: 75, t: 457976 }, { n: 47, t: 459246 }, { n: 75, t: 459290 }, { n: 51, t: 460573 }, { n: 43, t: 461880 }, { n: 70, t: 461933 }, { n: 44, t: 463216 }, { n: 71, t: 463246 }, { n: 47, t: 464483 }, { n: 39, t: 465843 }, { n: 67, t: 465903 }, { n: 40, t: 467056 }, { n: 68, t: 467110 }, { n: 42, t: 467740 }, { n: 40, t: 468053 }, { n: 42, t: 468326 }, { n: 70, t: 468356 }, { n: 40, t: 468633 }, { n: 42, t: 469006 }, { n: 40, t: 469283 }, { n: 71, t: 469576 }, { n: 42, t: 469620 }, { n: 40, t: 469903 }, { n: 42, t: 470293 }, { n: 40, t: 470560 }, { n: 74, t: 470876 }, { n: 42, t: 470896 }, { n: 40, t: 471226 }, { n: 42, t: 471586 }, { n: 40, t: 471890 }, { n: 70, t: 472256 }, { n: 42, t: 472270 }, { n: 40, t: 472586 }, { n: 42, t: 472950 }, { n: 40, t: 473253 }, { n: 68, t: 473510 }, { n: 42, t: 473593 }, { n: 40, t: 473876 }, { n: 39, t: 474260 }, { n: 40, t: 474640 }, { n: 39, t: 475163 }, { n: 75, t: 475176 }, { n: 67, t: 476706 }, { n: 51, t: 478260 }, { n: 75, t: 478510 }, { n: 74, t: 479886 }, { n: 53, t: 479976 }, { n: 56, t: 481233 }, { n: 73, t: 482593 }, { n: 55, t: 482610 }, { n: 72, t: 483880 }, { n: 56, t: 483916 }, { n: 51, t: 485160 }, { n: 56, t: 486430 }, { n: 71, t: 486503 }, { n: 70, t: 487773 }, { n: 54, t: 489113 }, { n: 53, t: 489683 }, { n: 54, t: 490430 }, { n: 72, t: 490483 }, { n: 53, t: 491820 }, { n: 73, t: 491846 }, { n: 58, t: 493146 }, { n: 56, t: 494416 }, { n: 74, t: 494480 }, { n: 54, t: 495820 }, { n: 75, t: 495856 }, { n: 59, t: 497120 }, { n: 58, t: 498393 }, { n: 56, t: 499736 }, { n: 58, t: 500996 }, { n: 59, t: 502306 }, { n: 74, t: 503560 }, { n: 53, t: 503580 }, { n: 75, t: 504266 }, { n: 74, t: 504580 }, { n: 58, t: 504823 }, { n: 75, t: 504893 }, { n: 74, t: 505170 }, { n: 75, t: 505366 }, { n: 74, t: 505650 }, { n: 75, t: 505906 }, { n: 56, t: 505930 }, { n: 74, t: 506140 }, { n: 72, t: 506506 }, { n: 74, t: 506780 }, { n: 55, t: 507256 }, { n: 75, t: 507300 }, { n: 56, t: 508576 }, { n: 56, t: 508576 }, { n: 73, t: 509833 }, { n: 58, t: 509863 }, { n: 51, t: 511063 }, { n: 71, t: 511140 }, { n: 56, t: 512473 }, { n: 54, t: 513756 }, { n: 70, t: 513756 }, { n: 52, t: 515093 }, { n: 68, t: 515100 }, { n: 54, t: 516370 }, { n: 68, t: 517666 }, { n: 73, t: 517666 }, { n: 52, t: 517693 }, { n: 67, t: 518956 }, { n: 51, t: 518983 }, { n: 52, t: 520286 }, { n: 70, t: 520286 }, { n: 66, t: 521553 }, { n: 72, t: 521553 }, { n: 51, t: 521593 }, { n: 49, t: 522930 }, { n: 65, t: 522930 }, { n: 73, t: 522936 }, { n: 68, t: 524196 }, { n: 68, t: 524673 }, { n: 70, t: 525440 }, { n: 64, t: 525470 }, { n: 37, t: 525486 }, { n: 71, t: 526750 }, { n: 44, t: 526766 }, { n: 63, t: 526783 }, { n: 43, t: 528053 }, { n: 73, t: 528066 }, { n: 71, t: 529276 }, { n: 65, t: 529286 }, { n: 44, t: 529333 }, { n: 66, t: 530710 }, { n: 70, t: 530720 }, { n: 39, t: 530756 }, { n: 75, t: 532016 }, { n: 73, t: 533270 }, { n: 67, t: 533290 }, { n: 68, t: 534596 }, { n: 71, t: 534620 }, { n: 76, t: 535920 }, { n: 75, t: 537276 }, { n: 73, t: 538560 }, { n: 75, t: 539920 }, { n: 76, t: 541263 }, { n: 70, t: 542480 }, { n: 67, t: 542570 }, { n: 68, t: 543180 }, { n: 67, t: 543473 }, { n: 68, t: 543750 }, { n: 75, t: 543773 }, { n: 67, t: 544020 }, { n: 68, t: 544383 }, { n: 67, t: 544690 }, { n: 68, t: 544976 }, { n: 73, t: 545106 }, { n: 67, t: 545273 }, { n: 65, t: 545680 }, { n: 67, t: 545946 }, { n: 71, t: 546383 }, { n: 68, t: 546400 }, { n: 73, t: 547683 }, { n: 66, t: 548920 }, { n: 75, t: 548936 }, { n: 68, t: 550236 }, { n: 64, t: 550256 }, { n: 73, t: 551580 }, { n: 75, t: 552916 }, { n: 63, t: 552953 }, { n: 61, t: 554190 }, { n: 76, t: 554223 }, { n: 64, t: 555540 }, { n: 61, t: 556783 }, { n: 69, t: 556823 }, { n: 60, t: 558130 }, { n: 75, t: 558130 }, { n: 68, t: 559500 }, { n: 66, t: 560020 }, { n: 68, t: 560740 }, { n: 59, t: 560756 }, { n: 58, t: 562080 }, { n: 73, t: 562080 }, { n: 61, t: 563336 }, { n: 57, t: 564606 }, { n: 66, t: 564606 }, { n: 56, t: 565916 }, { n: 71, t: 565916 }, { n: 80, t: 567176 }, { n: 64, t: 567223 }, { n: 63, t: 567830 }, { n: 64, t: 568463 }, { n: 58, t: 568506 }, { n: 78, t: 569823 }, { n: 63, t: 569836 }, { n: 59, t: 569850 }, { n: 76, t: 571086 }, { n: 68, t: 571130 }, { n: 66, t: 572370 }, { n: 75, t: 572386 }, { n: 60, t: 572443 }, { n: 61, t: 573736 }, { n: 64, t: 573796 }, { n: 73, t: 575003 }, { n: 69, t: 575033 }, { n: 72, t: 575620 }, { n: 73, t: 576263 }, { n: 68, t: 576296 }, { n: 66, t: 577653 }, { n: 75, t: 577696 }, { n: 68, t: 578956 }, { n: 69, t: 580243 }, { n: 63, t: 581603 }, { n: 60, t: 581616 }, { n: 68, t: 582940 }, { n: 66, t: 584266 }, { n: 61, t: 585573 }, { n: 64, t: 585586 }, { n: 68, t: 586930 }, { n: 73, t: 588176 }, { n: 59, t: 588240 }, { n: 58, t: 589516 }, { n: 71, t: 590776 }, { n: 70, t: 591426 }, { n: 71, t: 592106 }, { n: 56, t: 592140 }, { n: 70, t: 593433 }, { n: 54, t: 593483 }, { n: 61, t: 594806 }, { n: 66, t: 596106 }, { n: 52, t: 596136 }, { n: 51, t: 597420 }, { n: 64, t: 598690 }, { n: 63, t: 599340 }, { n: 64, t: 599980 }, { n: 49, t: 600066 }, { n: 47, t: 601240 }, { n: 63, t: 601253 }, { n: 54, t: 602476 }, { n: 68, t: 603796 }, { n: 59, t: 603810 }, { n: 73, t: 605203 }, { n: 64, t: 605233 }, { n: 58, t: 606480 }, { n: 56, t: 607080 }, { n: 58, t: 607703 }, { n: 71, t: 609010 }, { n: 63, t: 609060 }, { n: 51, t: 610336 }, { n: 56, t: 611676 }, { n: 70, t: 612890 }, { n: 61, t: 612950 }, { n: 55, t: 614190 }, { n: 53, t: 614793 }, { n: 55, t: 615506 }, { n: 56, t: 616873 }, { n: 59, t: 616880 }, { n: 68, t: 618176 }, { n: 80, t: 619563 }, { n: 52, t: 619663 }, { n: 61, t: 619663 }, { n: 79, t: 620903 }, { n: 51, t: 620926 }, { n: 58, t: 622176 }, { n: 60, t: 623493 }, { n: 78, t: 623493 }, { n: 77, t: 624833 }, { n: 58, t: 624840 }, { n: 61, t: 624856 }, { n: 56, t: 626133 }, { n: 76, t: 627453 }, { n: 55, t: 627470 }, { n: 75, t: 628746 }, { n: 56, t: 628763 }, { n: 59, t: 630096 }, { n: 50, t: 631440 }, { n: 77, t: 631483 }, { n: 78, t: 632780 }, { n: 51, t: 632786 }, { n: 58, t: 634070 }, { n: 79, t: 635310 }, { n: 46, t: 635340 }, { n: 47, t: 636623 }, { n: 80, t: 636640 }, { n: 51, t: 637950 }, { n: 48, t: 639293 }, { n: 54, t: 639306 }, { n: 49, t: 640560 }, { n: 53, t: 641853 }, { n: 50, t: 643143 }, { n: 59, t: 643143 }, { n: 51, t: 644453 }, { n: 79, t: 644453 }, { n: 58, t: 645736 }, { n: 56, t: 646360 }, { n: 52, t: 647073 }, { n: 58, t: 647073 }, { n: 55, t: 647673 }, { n: 53, t: 648366 }, { n: 56, t: 648366 }, { n: 77, t: 649653 }, { n: 79, t: 650940 }, { n: 60, t: 650993 }, { n: 80, t: 652173 }, { n: 65, t: 652203 }, { n: 53, t: 653453 }, { n: 81, t: 654703 }, { n: 51, t: 654733 }, { n: 49, t: 656020 }, { n: 82, t: 656033 }, { n: 70, t: 657286 }, { n: 61, t: 657333 }, { n: 72, t: 658536 }, { n: 60, t: 658636 }, { n: 58, t: 659826 }, { n: 73, t: 659826 }, { n: 70, t: 661140 }, { n: 68, t: 662410 }, { n: 74, t: 662450 }, { n: 75, t: 663733 }, { n: 66, t: 663740 }, { n: 78, t: 664943 }, { n: 63, t: 664953 }, { n: 80, t: 666213 }, { n: 65, t: 666220 }, { n: 82, t: 667556 }, { n: 66, t: 667573 }, { n: 75, t: 668856 }, { n: 73, t: 670116 }, { n: 67, t: 670143 }, { n: 68, t: 671380 }, { n: 72, t: 671430 }, { n: 80, t: 672733 }, { n: 56, t: 672740 }, { n: 73, t: 673996 }, { n: 58, t: 674026 }, { n: 59, t: 675250 }, { n: 75, t: 675250 }, { n: 77, t: 676533 }, { n: 60, t: 677743 }, { n: 78, t: 677773 }, { n: 77, t: 679113 }, { n: 61, t: 679123 }, { n: 49, t: 680380 }, { n: 73, t: 680393 }, { n: 78, t: 681633 }, { n: 51, t: 681680 }, { n: 80, t: 682940 }, { n: 52, t: 682970 }, { n: 70, t: 684196 }, { n: 71, t: 685423 }, { n: 53, t: 685446 }, { n: 70, t: 686683 }, { n: 54, t: 686736 }, { n: 78, t: 687940 }, { n: 42, t: 687983 }, { n: 44, t: 689246 }, { n: 71, t: 689246 }, { n: 45, t: 690550 }, { n: 73, t: 690570 }, { n: 75, t: 691823 }, { n: 76, t: 693050 }, { n: 46, t: 693106 }, { n: 75, t: 694400 }, { n: 47, t: 694446 }, { n: 71, t: 695690 }, { n: 73, t: 696943 }, { n: 49, t: 697016 }, { n: 70, t: 697033 }, { n: 71, t: 698246 }, { n: 51, t: 698260 }, { n: 66, t: 699540 }, { n: 53, t: 700813 }, { n: 68, t: 700860 }, { n: 54, t: 702160 }, { n: 70, t: 702160 }, { n: 66, t: 703450 }, { n: 72, t: 704700 }, { n: 56, t: 704736 }, { n: 73, t: 705950 }, { n: 58, t: 705993 }, { n: 75, t: 706533 }, { n: 76, t: 707190 }, { n: 75, t: 708473 }, { n: 60, t: 708550 }, { n: 61, t: 709820 }, { n: 68, t: 709833 }, { n: 49, t: 711096 }, { n: 65, t: 711126 }, { n: 67, t: 712300 }, { n: 51, t: 712343 }, { n: 73, t: 713516 }, { n: 53, t: 713546 }, { n: 68, t: 713563 }, { n: 70, t: 714143 }, { n: 71, t: 714843 }, { n: 70, t: 716160 }, { n: 55, t: 716213 }, { n: 56, t: 717436 }, { n: 63, t: 717466 }, { n: 71, t: 718693 }, { n: 58, t: 719926 }, { n: 73, t: 719986 }, { n: 59, t: 721263 }, { n: 75, t: 721286 }, { n: 68, t: 721316 }, { n: 61, t: 721860 }, { n: 73, t: 721860 }, { n: 63, t: 722506 }, { n: 71, t: 722546 }, { n: 70, t: 723170 }, { n: 61, t: 723806 }, { n: 71, t: 723836 }, { n: 76, t: 724453 }, { n: 70, t: 725113 }, { n: 63, t: 725196 }, { n: 67, t: 726446 }, { n: 75, t: 727773 }, { n: 76, t: 729046 }, { n: 73, t: 730273 }, { n: 82, t: 731600 }, { n: 75, t: 732863 }, { n: 71, t: 734136 }, { n: 80, t: 735300 }, { n: 73, t: 736573 }, { n: 70, t: 737810 }, { n: 76, t: 738423 }, { n: 75, t: 739106 }, { n: 73, t: 739713 }, { n: 71, t: 740410 }, { n: 68, t: 741633 }, { n: 66, t: 742256 }, { n: 64, t: 742893 }, { n: 63, t: 743516 }, { n: 61, t: 744206 }, { n: 70, t: 745490 }, { n: 68, t: 746163 }, { n: 67, t: 746766 }, { n: 65, t: 747430 }, { n: 63, t: 748150 }, { n: 75, t: 749330 }, { n: 68, t: 750643 }, { n: 59, t: 750693 }, { n: 58, t: 751963 }, { n: 56, t: 752583 }, { n: 58, t: 753223 }, { n: 67, t: 753240 }, { n: 51, t: 754486 }, { n: 73, t: 754506 }, { n: 56, t: 755933 }, { n: 44, t: 756010 }, { n: 71, t: 756010 }, { n: 46, t: 757330 }, { n: 47, t: 758600 }, { n: 68, t: 758620 }, { n: 46, t: 759920 }, { n: 67, t: 760023 }, { n: 51, t: 761246 }, { n: 39, t: 762550 }, { n: 66, t: 762550 }, { n: 44, t: 763820 }, { n: 65, t: 763843 }, { n: 47, t: 765153 }, { n: 46, t: 766433 }, { n: 64, t: 766433 }, { n: 63, t: 767723 }, { n: 47, t: 767740 }, { n: 46, t: 768990 }, { n: 44, t: 770306 }, { n: 65, t: 770350 }, { n: 46, t: 771623 }, { n: 66, t: 771663 }, { n: 47, t: 772886 }, { n: 49, t: 774223 }, { n: 67, t: 774223 }, { n: 47, t: 775543 }, { n: 68, t: 775630 }, { n: 52, t: 776876 }, { n: 44, t: 778190 }, { n: 46, t: 779510 }, { n: 49, t: 780730 }, { n: 47, t: 782080 }, { n: 49, t: 783383 }, { n: 67, t: 783390 }, { n: 47, t: 784626 }, { n: 46, t: 785946 }, { n: 47, t: 787266 }, { n: 68, t: 787313 }, { n: 51, t: 788590 }, { n: 71, t: 788590 }, { n: 56, t: 789883 }, { n: 63, t: 789883 }, { n: 64, t: 791143 }, { n: 55, t: 792400 }, { n: 63, t: 792490 }, { n: 53, t: 793036 }, { n: 55, t: 793743 }, { n: 61, t: 793743 }, { n: 56, t: 794983 }, { n: 59, t: 795026 }, { n: 63, t: 795593 }, { n: 59, t: 796283 }, { n: 68, t: 796320 }, { n: 63, t: 797616 }, { n: 66, t: 797616 }, { n: 65, t: 798916 }, { n: 70, t: 800240 }, { n: 62, t: 800256 }, { n: 60, t: 800880 }, { n: 68, t: 801550 }, { n: 62, t: 801590 }, { n: 66, t: 802923 }, { n: 75, t: 802923 }, { n: 63, t: 802953 }, { n: 77, t: 804266 }, { n: 78, t: 805506 }, { n: 51, t: 805566 }, { n: 63, t: 805566 }, { n: 58, t: 806860 }, { n: 62, t: 806876 }, { n: 77, t: 806876 }, { n: 82, t: 808203 }, { n: 70, t: 809473 }, { n: 61, t: 809483 }, { n: 55, t: 809520 }, { n: 75, t: 810760 }, { n: 56, t: 810803 }, { n: 60, t: 810803 }, { n: 78, t: 812060 }, { n: 77, t: 813326 }, { n: 59, t: 813343 }, { n: 50, t: 813356 }, { n: 51, t: 814640 }, { n: 78, t: 814653 }, { n: 58, t: 814670 }, { n: 77, t: 815980 }, { n: 75, t: 817270 }, { n: 60, t: 817300 }, { n: 77, t: 818586 }, { n: 61, t: 818630 }, { n: 58, t: 818653 }, { n: 78, t: 819853 }, { n: 80, t: 821153 }, { n: 62, t: 821183 }, { n: 78, t: 822440 }, { n: 63, t: 822530 }, { n: 83, t: 823783 }, { n: 56, t: 823823 }, { n: 75, t: 825000 }, { n: 54, t: 825066 }, { n: 56, t: 826333 }, { n: 77, t: 826373 }, { n: 80, t: 827600 }, { n: 78, t: 828833 }, { n: 80, t: 830153 }, { n: 62, t: 830186 }, { n: 58, t: 830293 }, { n: 78, t: 831450 }, { n: 77, t: 832756 }, { n: 78, t: 834056 }, { n: 51, t: 834110 }, { n: 63, t: 834110 }, { n: 70, t: 835336 }, { n: 47, t: 836540 }, { n: 75, t: 836640 }, { n: 77, t: 837863 }, { n: 44, t: 837893 }, { n: 73, t: 839233 }, { n: 71, t: 839753 }, { n: 76, t: 840383 }, { n: 73, t: 840433 }, { n: 46, t: 840463 }, { n: 75, t: 841676 }, { n: 47, t: 841713 }, { n: 66, t: 842950 }, { n: 51, t: 844236 }, { n: 71, t: 844236 }, { n: 74, t: 845483 }, { n: 53, t: 845520 }, { n: 70, t: 846836 }, { n: 68, t: 847310 }, { n: 70, t: 847940 }, { n: 73, t: 847940 }, { n: 55, t: 848013 }, { n: 56, t: 849220 }, { n: 71, t: 849226 }, { n: 75, t: 850496 }, { n: 59, t: 851783 }, { n: 80, t: 851806 }, { n: 70, t: 853070 }, { n: 61, t: 853150 }, { n: 78, t: 854410 }, { n: 76, t: 854933 }, { n: 78, t: 855630 }, { n: 69, t: 855660 }, { n: 63, t: 855680 }, { n: 68, t: 857026 }, { n: 64, t: 857063 }, { n: 71, t: 858260 }, { n: 76, t: 859603 }, { n: 61, t: 859616 }, { n: 58, t: 860940 }, { n: 67, t: 860983 }, { n: 75, t: 862300 }, { n: 73, t: 862890 }, { n: 75, t: 863563 }, { n: 66, t: 863583 }, { n: 60, t: 863643 }, { n: 73, t: 864993 }, { n: 64, t: 865036 }, { n: 61, t: 865066 }, { n: 60, t: 866293 }, { n: 66, t: 866293 }, { n: 75, t: 866313 }, { n: 76, t: 867586 }, { n: 68, t: 867600 }, { n: 58, t: 867610 }, { n: 75, t: 868883 }, { n: 66, t: 868896 }, { n: 59, t: 868930 }, { n: 58, t: 870153 }, { n: 71, t: 870153 }, { n: 59, t: 871466 }, { n: 56, t: 871520 }, { n: 74, t: 871520 }, { n: 73, t: 872810 }, { n: 57, t: 872816 }, { n: 64, t: 872840 }, { n: 68, t: 874126 }, { n: 72, t: 875413 }, { n: 66, t: 875426 }, { n: 51, t: 875443 }, { n: 68, t: 876706 }, { n: 71, t: 876710 }, { n: 52, t: 876783 }, { n: 66, t: 878023 }, { n: 73, t: 879256 }, { n: 40, t: 879306 }, { n: 64, t: 879306 }, { n: 74, t: 880526 }, { n: 66, t: 880570 }, { n: 47, t: 880596 }, { n: 68, t: 881846 }, { n: 75, t: 883060 }, { n: 69, t: 883106 }, { n: 48, t: 883150 }, { n: 76, t: 884360 }, { n: 68, t: 884383 }, { n: 49, t: 884446 }, { n: 73, t: 885683 }, { n: 64, t: 886946 }, { n: 56, t: 886990 }, { n: 66, t: 888260 }, { n: 57, t: 888290 }, { n: 69, t: 889546 }, { n: 68, t: 890740 }, { n: 61, t: 890800 }, { n: 75, t: 891986 }, { n: 54, t: 891993 }, { n: 69, t: 892023 }, { n: 68, t: 893186 }, { n: 66, t: 894530 }, { n: 59, t: 894573 }, { n: 76, t: 895856 }, { n: 68, t: 895893 }, { n: 52, t: 895943 }, { n: 59, t: 897180 }, { n: 68, t: 898460 }, { n: 64, t: 898510 }, { n: 70, t: 899700 }, { n: 67, t: 899763 }, { n: 63, t: 901063 }, { n: 61, t: 901676 }, { n: 66, t: 902243 }, { n: 72, t: 902243 }, { n: 63, t: 902346 }, { n: 73, t: 903500 }, { n: 65, t: 903563 }, { n: 56, t: 904816 }, { n: 69, t: 906036 }, { n: 64, t: 906060 }, { n: 61, t: 906106 }, { n: 66, t: 907406 }, { n: 63, t: 907456 }, { n: 60, t: 908666 }, { n: 58, t: 909283 }, { n: 68, t: 909930 }, { n: 60, t: 910006 }, { n: 64, t: 911233 }, { n: 61, t: 911263 }, { n: 49, t: 912576 }, { n: 61, t: 912590 }, { n: 69, t: 913913 }, { n: 61, t: 913963 }, { n: 60, t: 915186 }, { n: 68, t: 916510 }, { n: 66, t: 917063 }, { n: 68, t: 917730 }, { n: 59, t: 917746 }, { n: 58, t: 919080 }, { n: 61, t: 920323 }, { n: 57, t: 921663 }, { n: 66, t: 921663 }, { n: 56, t: 922963 }, { n: 65, t: 924263 }, { n: 63, t: 924820 }, { n: 71, t: 925480 }, { n: 65, t: 925486 }, { n: 61, t: 925510 }, { n: 54, t: 926876 }, { n: 66, t: 926893 }, { n: 70, t: 928186 }, { n: 52, t: 928220 }, { n: 72, t: 929456 }, { n: 51, t: 929510 }, { n: 73, t: 930763 }, { n: 49, t: 930800 }, { n: 47, t: 932046 }, { n: 65, t: 932106 }, { n: 46, t: 933340 }, { n: 67, t: 933340 }, { n: 44, t: 934643 }, { n: 68, t: 934676 }, { n: 72, t: 935893 }, { n: 56, t: 935906 }, { n: 58, t: 937183 }, { n: 74, t: 937190 }, { n: 59, t: 938560 }, { n: 75, t: 938560 }, { n: 61, t: 939793 }, { n: 67, t: 939816 }, { n: 69, t: 941080 }, { n: 59, t: 941096 }, { n: 58, t: 942360 }, { n: 70, t: 942420 }, { n: 46, t: 943716 }, { n: 74, t: 943733 }, { n: 75, t: 944946 }, { n: 48, t: 944986 }, { n: 77, t: 946193 }, { n: 50, t: 946213 }, { n: 48, t: 947553 }, { n: 68, t: 948783 }, { n: 50, t: 948806 }, { n: 66, t: 950056 }, { n: 51, t: 950096 }, { n: 56, t: 951356 }, { n: 75, t: 951410 }, { n: 74, t: 951940 }, { n: 54, t: 952636 }, { n: 75, t: 952653 }, { n: 53, t: 953903 }, { n: 58, t: 955193 }, { n: 73, t: 955250 }, { n: 71, t: 955773 }, { n: 73, t: 956466 }, { n: 70, t: 956503 }, { n: 56, t: 956520 }, { n: 63, t: 957773 }, { n: 55, t: 957796 }, { n: 51, t: 959113 }, { n: 75, t: 959126 }, { n: 55, t: 960403 }, { n: 73, t: 960433 }, { n: 56, t: 961716 }, { n: 71, t: 961740 }, { n: 61, t: 963023 }, { n: 76, t: 963036 }, { n: 75, t: 964350 }, { n: 59, t: 964383 }, { n: 58, t: 965713 }, { n: 73, t: 965736 }, { n: 59, t: 967000 }, { n: 75, t: 967013 }, { n: 61, t: 968286 }, { n: 76, t: 968303 }, { n: 63, t: 969653 }, { n: 70, t: 969653 }, { n: 55, t: 969730 }, { n: 75, t: 970960 }, { n: 51, t: 972306 }, { n: 73, t: 972306 }, { n: 56, t: 973596 }, { n: 71, t: 973646 }, { n: 58, t: 974906 }, { n: 59, t: 976323 }, { n: 44, t: 976346 }, { n: 58, t: 977670 }, { n: 43, t: 977700 }, { n: 63, t: 978950 }, { n: 51, t: 980306 }, { n: 42, t: 980316 }, { n: 56, t: 981596 }, { n: 41, t: 981610 }, { n: 59, t: 982863 }, { n: 58, t: 984206 }, { n: 61, t: 984206 }, { n: 40, t: 984226 }, { n: 39, t: 985446 }, { n: 59, t: 985560 }, { n: 66, t: 985560 }, { n: 58, t: 986866 }, { n: 68, t: 988073 }, { n: 56, t: 988090 }, { n: 41, t: 988180 }, { n: 58, t: 989510 }, { n: 42, t: 989523 }
  , { n: 66, t: 990756 }, { n: 59, t: 990823 }, { n: 64, t: 992066 }, { n: 43, t: 992096 }, { n: 61, t: 992110 }, { n: 63, t: 993433 }, { n: 59, t: 993480 }, { n: 44, t: 993520 }, { n: 68, t: 994766 }, { n: 64, t: 994806 }, { n: 56, t: 996076 }, { n: 71, t: 996076 }, { n: 65, t: 997393 }, { n: 58, t: 997406 }, { n: 61, t: 998666 }, { n: 59, t: 999963 }, { n: 61, t: 1001293 }, { n: 70, t: 1001320 }, { n: 43, t: 1001353 }, { n: 51, t: 1002586 }, { n: 59, t: 1002633 }, { n: 58, t: 1003803 }, { n: 49, t: 1003850 }, { n: 59, t: 1005156 }, { n: 51, t: 1005190 }, { n: 49, t: 1006370 }, { n: 47, t: 1007756 }, { n: 68, t: 1007773 }, { n: 58, t: 1009026 }, { n: 49, t: 1009033 }, { n: 63, t: 1010300 }, { n: 47, t: 1010363 }, { n: 67, t: 1011580 }, { n: 61, t: 1011586 }, { n: 46, t: 1011610 }, { n: 63, t: 1012893 }, { n: 68, t: 1012893 }, { n: 47, t: 1012960 }, { n: 61, t: 1014173 }, { n: 46, t: 1014236 }, { n: 59, t: 1015436 }, { n: 44, t: 1015450 }, { n: 61, t: 1016776 }, { n: 51, t: 1016793 }, { n: 59, t: 1018056 }, { n: 75, t: 1018070 }, { n: 73, t: 1019323 }, { n: 58, t: 1019366 }, { n: 59, t: 1020643 }, { n: 75, t: 1020643 }, { n: 58, t: 1021920 }, { n: 73, t: 1021920 }, { n: 71, t: 1023243 }, { n: 56, t: 1023253 }, { n: 44, t: 1023296 }, { n: 58, t: 1024593 }, { n: 73, t: 1024593 }, { n: 52, t: 1024690 }, { n: 71, t: 1025903 }, { n: 56, t: 1025916 }, { n: 70, t: 1027226 }, { n: 55, t: 1027243 }, { n: 71, t: 1028560 }, { n: 56, t: 1028633 }, { n: 51, t: 1029870 }, { n: 50, t: 1031153 }, { n: 51, t: 1032483 }, { n: 70, t: 1033866 }, { n: 61, t: 1033890 }, { n: 68, t: 1035123 }, { n: 59, t: 1035146 }, { n: 70, t: 1036450 }, { n: 61, t: 1036506 }, { n: 59, t: 1037770 }, { n: 58, t: 1039083 }, { n: 59, t: 1040403 }, { n: 68, t: 1041750 }, { n: 67, t: 1043070 }, { n: 68, t: 1044373 }, { n: 49, t: 1045723 }, { n: 47, t: 1046920 }, { n: 58, t: 1048226 }, { n: 49, t: 1048310 }, { n: 47, t: 1049580 }, { n: 65, t: 1049586 }, { n: 46, t: 1050840 }, { n: 67, t: 1050853 }, { n: 68, t:1052176 }, { n: 51, t: 1052226 }, { n: 47, t: 1052256 }, { n: 49, t: 1053440 }, { n: 70, t: 1053493 }, { n: 47, t: 1054120 }, { n: 71, t: 1054726 }, { n: 68, t: 1054753 }, { n: 46, t: 1054810 }, { n: 44, t: 1055363 }, { n: 39, t: 1056080 }, { n: 70, t: 1056080 }, { n: 67, t: 1056096 }, { n: 75, t: 1057376 }, { n: 63, t: 1058693 }, { n: 66, t: 1058790 }, { n: 68, t: 1060026 }, { n: 65, t: 1060126 }, { n: 71, t: 1061323 }, { n: 37, t: 1062610 }, { n: 70, t: 1062610 }, { n: 71, t: 1063846 }, { n: 44, t: 1063943 }, { n: 70, t: 1065103 }, { n: 68, t: 1066373 }, { n: 37, t: 1066466 }, { n: 65, t: 1066466 }, { n: 70, t: 1067703 }, { n: 66, t: 1067753 }, { n: 42, t: 1067803 }, { n: 71, t: 1068990 }, { n: 67, t: 1070263 }, { n: 39, t: 1070306 }, { n: 73, t: 1070306 }, { n: 71, t: 1071540 }, { n: 68, t: 1071553 }, { n: 44, t: 1071610 }, { n: 76, t: 1072863 }, { n: 47, t: 1074130 }, { n: 68, t: 1074160 }, { n: 70, t: 1075470 }, { n: 52, t: 1075513 }, { n: 73, t: 1076730 }, { n: 71, t: 1078036 }, { n: 49, t: 1078073 }, { n: 73, t: 1079256 }, { n: 67, t: 1079326 }, { n: 46, t: 1079380 }, { n: 71, t: 1080583 }, { n: 70, t: 1081863 }, { n: 51, t: 1081950 }, { n: 68, t: 1083290 }, { n: 71, t: 1083303 }, { n: 44, t: 1083336 }, { n: 73, t: 1084613 }, { n: 47, t: 1085916 }, { n: 75, t: 1085930 }, { n: 40, t: 1087200 }, { n: 73, t: 1088536 }, { n: 52, t: 1088590 }, { n: 51, t: 1089850 }, { n: 71, t: 1089850 }, { n: 50, t: 1091210 }, { n: 70, t: 1091210 }, { n: 77, t: 1092486 }, { n: 70, t: 1093780 }, { n: 70, t: 1095193 }, { n: 67, t: 1096473 }, { n: 46, t: 1096520 }, { n: 48, t: 1097836 }, { n: 65, t: 1097846 }, { n: 49, t: 1099196 }, { n: 67, t: 1099196 }, { n: 76, t: 1100620 }, { n: 75, t: 1101963 }, { n: 75, t: 1103396 }, { n: 47, t: 1104766 }, { n: 46, t: 1106080 }, { n: 68, t: 1107516 }, { n: 47, t: 1107630 }, { n: 73, t: 1109010 }, { n: 46, t: 1109026 }, { n: 44, t: 1110573 }, { n: 71, t: 1110590 }, { n: 51, t: 1112666 }, { n: 75, t: 1112666 }, { n: 73, t: 1113643 }, { n: 71, t: 1114823 }, { n: 67, t: 1117570 }, { n: 70, t: 1117570 }, { n: 39, t: 1117586 }, { n: 44, t: 1122746 }, { n: 68, t: 1122770 }
 ]