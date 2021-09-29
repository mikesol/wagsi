module WAGSI.Plumbing.Cycle where

import Prelude

import Data.Foldable (class Foldable, foldMapDefaultR, foldl, foldr)
import Data.FunctorWithIndex (class FunctorWithIndex)
import Data.Generic.Rep (class Generic)
import Data.List.NonEmpty as NEL
import Data.List.Types (NonEmptyList)
import Data.Maybe (Maybe(..))
import Data.Show.Generic (genericShow)
import Data.Traversable (class Traversable, sequenceDefault, traverse)
import WAGSI.Plumbing.Samples (Sample, Note(..))
import WAGSI.Plumbing.Samples as S

data Cycle a
  = Branching { nel :: NonEmptyList (Cycle a), env :: { weight :: Number, tag :: Maybe String } }
  | Simultaneous { nel :: NonEmptyList (Cycle a), env :: { weight :: Number, tag :: Maybe String } }
  | Internal { nel :: NonEmptyList (Cycle a), env :: { weight :: Number, tag :: Maybe String } }
  | SingleNote { val :: a, env :: { weight :: Number, tag :: Maybe String } }

derive instance genericCycle :: Generic (Cycle a) _
derive instance eqCycle :: Eq a => Eq (Cycle a)
derive instance ordCycle :: Ord a => Ord (Cycle a)
instance showCycle :: Show a => Show (Cycle a) where
  show xx = genericShow xx

derive instance functorCycle :: Functor Cycle

instance functorWithIndexCycle :: FunctorWithIndex Int Cycle where
  mapWithIndex fff vvv = (go 0 vvv).val
    where
    go' ff ii env nel = let folded = foldl (\axc cyc -> axc <> (pure (go (NEL.last axc).i cyc))) (pure (go ii (NEL.head nel))) (NEL.tail nel) in { i: _.i $ NEL.last folded, val: ff { env, nel: map _.val folded } }
    go ii = case _ of
      Branching { env, nel } -> go' Branching ii env nel
      Simultaneous { env, nel } -> go' Simultaneous ii env nel
      Internal { env, nel } -> go' Internal ii env nel
      SingleNote { env, val } -> { i: ii + 1, val: SingleNote { env, val: fff ii val } }

instance foldableCycle :: Foldable Cycle where
  foldl fba aa fbb = foldl fba aa (flattenCycle fbb)
  foldr fab aa fbb = foldr fab aa (flattenCycle fbb)
  foldMap = foldMapDefaultR

instance traversableCycle :: Traversable Cycle where
  traverse ff = case _ of
    Branching { env, nel } -> Branching <<< { env, nel: _ } <$> (traverse (traverse ff) nel)
    Simultaneous { env, nel } -> Simultaneous <<< { env, nel: _ } <$> (traverse (traverse ff) nel)
    Internal { env, nel } -> Internal <<< { env, nel: _ } <$> (traverse (traverse ff) nel)
    SingleNote { env, val } -> SingleNote <<< { env, val: _ } <$> ff val
  sequence = sequenceDefault

flattenCycle :: Cycle ~> NonEmptyList
flattenCycle = case _ of
  Branching { nel } -> join $ map flattenCycle nel
  Simultaneous { nel } -> join $ map flattenCycle nel
  Internal { nel } -> join $ map flattenCycle nel
  SingleNote { val } -> pure val

reverse :: Cycle ~> Cycle
reverse l = go l
  where
  go' fff env nel = fff { env, nel: NEL.reverse (map reverse nel) }
  go = case _ of
    Branching { env, nel } -> go' Branching env nel
    Simultaneous { env, nel } -> go' Simultaneous env nel
    Internal { env, nel } -> go' Internal env nel
    SingleNote snnn -> SingleNote snnn

noteFromSample' :: Number -> Sample -> Cycle (Maybe Note)
noteFromSample' weight sample = SingleNote { env: { weight, tag: Nothing }, val: Just (Note { sample, rateFoT: const 1.0, volumeFoT: const 1.0 }) }

noteFromSample :: Sample -> Cycle (Maybe Note)
noteFromSample = noteFromSample' 1.0

intentionalSilenceForInternalUseOnly_ :: Cycle (Maybe Note)
intentionalSilenceForInternalUseOnly_ = noteFromSample S.intentionalSilenceForInternalUseOnly__Sample

r :: Cycle (Maybe Note)
r = SingleNote { val: Nothing, env: { weight: 1.0, tag: Nothing } }

kicklinn :: Cycle (Maybe Note)
kicklinn = noteFromSample S.kicklinn_0__Sample

kicklinn_0 :: Cycle (Maybe Note)
kicklinn_0 = noteFromSample S.kicklinn_0__Sample

msg :: Cycle (Maybe Note)
msg = noteFromSample S.msg_0__Sample

msg_0 :: Cycle (Maybe Note)
msg_0 = noteFromSample S.msg_0__Sample

msg_1 :: Cycle (Maybe Note)
msg_1 = noteFromSample S.msg_1__Sample

msg_2 :: Cycle (Maybe Note)
msg_2 = noteFromSample S.msg_2__Sample

msg_3 :: Cycle (Maybe Note)
msg_3 = noteFromSample S.msg_3__Sample

msg_4 :: Cycle (Maybe Note)
msg_4 = noteFromSample S.msg_4__Sample

msg_5 :: Cycle (Maybe Note)
msg_5 = noteFromSample S.msg_5__Sample

msg_6 :: Cycle (Maybe Note)
msg_6 = noteFromSample S.msg_6__Sample

msg_7 :: Cycle (Maybe Note)
msg_7 = noteFromSample S.msg_7__Sample

msg_8 :: Cycle (Maybe Note)
msg_8 = noteFromSample S.msg_8__Sample

gabbalouder :: Cycle (Maybe Note)
gabbalouder = noteFromSample S.gabbalouder_0__Sample

gabbalouder_0 :: Cycle (Maybe Note)
gabbalouder_0 = noteFromSample S.gabbalouder_0__Sample

gabbalouder_1 :: Cycle (Maybe Note)
gabbalouder_1 = noteFromSample S.gabbalouder_1__Sample

gabbalouder_2 :: Cycle (Maybe Note)
gabbalouder_2 = noteFromSample S.gabbalouder_2__Sample

gabbalouder_3 :: Cycle (Maybe Note)
gabbalouder_3 = noteFromSample S.gabbalouder_3__Sample

kurt :: Cycle (Maybe Note)
kurt = noteFromSample S.kurt_0__Sample

kurt_0 :: Cycle (Maybe Note)
kurt_0 = noteFromSample S.kurt_0__Sample

kurt_1 :: Cycle (Maybe Note)
kurt_1 = noteFromSample S.kurt_1__Sample

kurt_2 :: Cycle (Maybe Note)
kurt_2 = noteFromSample S.kurt_2__Sample

kurt_3 :: Cycle (Maybe Note)
kurt_3 = noteFromSample S.kurt_3__Sample

kurt_4 :: Cycle (Maybe Note)
kurt_4 = noteFromSample S.kurt_4__Sample

kurt_5 :: Cycle (Maybe Note)
kurt_5 = noteFromSample S.kurt_5__Sample

kurt_6 :: Cycle (Maybe Note)
kurt_6 = noteFromSample S.kurt_6__Sample

bassdm :: Cycle (Maybe Note)
bassdm = noteFromSample S.bassdm_0__Sample

bassdm_0 :: Cycle (Maybe Note)
bassdm_0 = noteFromSample S.bassdm_0__Sample

bassdm_1 :: Cycle (Maybe Note)
bassdm_1 = noteFromSample S.bassdm_1__Sample

bassdm_2 :: Cycle (Maybe Note)
bassdm_2 = noteFromSample S.bassdm_2__Sample

bassdm_3 :: Cycle (Maybe Note)
bassdm_3 = noteFromSample S.bassdm_3__Sample

bassdm_4 :: Cycle (Maybe Note)
bassdm_4 = noteFromSample S.bassdm_4__Sample

bassdm_5 :: Cycle (Maybe Note)
bassdm_5 = noteFromSample S.bassdm_5__Sample

bassdm_6 :: Cycle (Maybe Note)
bassdm_6 = noteFromSample S.bassdm_6__Sample

bassdm_7 :: Cycle (Maybe Note)
bassdm_7 = noteFromSample S.bassdm_7__Sample

bassdm_8 :: Cycle (Maybe Note)
bassdm_8 = noteFromSample S.bassdm_8__Sample

bassdm_9 :: Cycle (Maybe Note)
bassdm_9 = noteFromSample S.bassdm_9__Sample

bassdm_10 :: Cycle (Maybe Note)
bassdm_10 = noteFromSample S.bassdm_10__Sample

bassdm_11 :: Cycle (Maybe Note)
bassdm_11 = noteFromSample S.bassdm_11__Sample

bassdm_12 :: Cycle (Maybe Note)
bassdm_12 = noteFromSample S.bassdm_12__Sample

bassdm_13 :: Cycle (Maybe Note)
bassdm_13 = noteFromSample S.bassdm_13__Sample

bassdm_14 :: Cycle (Maybe Note)
bassdm_14 = noteFromSample S.bassdm_14__Sample

bassdm_15 :: Cycle (Maybe Note)
bassdm_15 = noteFromSample S.bassdm_15__Sample

bassdm_16 :: Cycle (Maybe Note)
bassdm_16 = noteFromSample S.bassdm_16__Sample

bassdm_17 :: Cycle (Maybe Note)
bassdm_17 = noteFromSample S.bassdm_17__Sample

bassdm_18 :: Cycle (Maybe Note)
bassdm_18 = noteFromSample S.bassdm_18__Sample

bassdm_19 :: Cycle (Maybe Note)
bassdm_19 = noteFromSample S.bassdm_19__Sample

bassdm_20 :: Cycle (Maybe Note)
bassdm_20 = noteFromSample S.bassdm_20__Sample

bassdm_21 :: Cycle (Maybe Note)
bassdm_21 = noteFromSample S.bassdm_21__Sample

bassdm_22 :: Cycle (Maybe Note)
bassdm_22 = noteFromSample S.bassdm_22__Sample

bassdm_23 :: Cycle (Maybe Note)
bassdm_23 = noteFromSample S.bassdm_23__Sample

tabla2 :: Cycle (Maybe Note)
tabla2 = noteFromSample S.tabla2_0__Sample

tabla2_0 :: Cycle (Maybe Note)
tabla2_0 = noteFromSample S.tabla2_0__Sample

tabla2_1 :: Cycle (Maybe Note)
tabla2_1 = noteFromSample S.tabla2_1__Sample

tabla2_2 :: Cycle (Maybe Note)
tabla2_2 = noteFromSample S.tabla2_2__Sample

tabla2_3 :: Cycle (Maybe Note)
tabla2_3 = noteFromSample S.tabla2_3__Sample

tabla2_4 :: Cycle (Maybe Note)
tabla2_4 = noteFromSample S.tabla2_4__Sample

tabla2_5 :: Cycle (Maybe Note)
tabla2_5 = noteFromSample S.tabla2_5__Sample

tabla2_6 :: Cycle (Maybe Note)
tabla2_6 = noteFromSample S.tabla2_6__Sample

tabla2_7 :: Cycle (Maybe Note)
tabla2_7 = noteFromSample S.tabla2_7__Sample

tabla2_8 :: Cycle (Maybe Note)
tabla2_8 = noteFromSample S.tabla2_8__Sample

tabla2_9 :: Cycle (Maybe Note)
tabla2_9 = noteFromSample S.tabla2_9__Sample

tabla2_10 :: Cycle (Maybe Note)
tabla2_10 = noteFromSample S.tabla2_10__Sample

tabla2_11 :: Cycle (Maybe Note)
tabla2_11 = noteFromSample S.tabla2_11__Sample

tabla2_12 :: Cycle (Maybe Note)
tabla2_12 = noteFromSample S.tabla2_12__Sample

tabla2_13 :: Cycle (Maybe Note)
tabla2_13 = noteFromSample S.tabla2_13__Sample

tabla2_14 :: Cycle (Maybe Note)
tabla2_14 = noteFromSample S.tabla2_14__Sample

tabla2_15 :: Cycle (Maybe Note)
tabla2_15 = noteFromSample S.tabla2_15__Sample

tabla2_16 :: Cycle (Maybe Note)
tabla2_16 = noteFromSample S.tabla2_16__Sample

tabla2_17 :: Cycle (Maybe Note)
tabla2_17 = noteFromSample S.tabla2_17__Sample

tabla2_18 :: Cycle (Maybe Note)
tabla2_18 = noteFromSample S.tabla2_18__Sample

tabla2_19 :: Cycle (Maybe Note)
tabla2_19 = noteFromSample S.tabla2_19__Sample

tabla2_20 :: Cycle (Maybe Note)
tabla2_20 = noteFromSample S.tabla2_20__Sample

tabla2_21 :: Cycle (Maybe Note)
tabla2_21 = noteFromSample S.tabla2_21__Sample

tabla2_22 :: Cycle (Maybe Note)
tabla2_22 = noteFromSample S.tabla2_22__Sample

tabla2_23 :: Cycle (Maybe Note)
tabla2_23 = noteFromSample S.tabla2_23__Sample

tabla2_24 :: Cycle (Maybe Note)
tabla2_24 = noteFromSample S.tabla2_24__Sample

tabla2_25 :: Cycle (Maybe Note)
tabla2_25 = noteFromSample S.tabla2_25__Sample

tabla2_26 :: Cycle (Maybe Note)
tabla2_26 = noteFromSample S.tabla2_26__Sample

tabla2_27 :: Cycle (Maybe Note)
tabla2_27 = noteFromSample S.tabla2_27__Sample

tabla2_28 :: Cycle (Maybe Note)
tabla2_28 = noteFromSample S.tabla2_28__Sample

tabla2_29 :: Cycle (Maybe Note)
tabla2_29 = noteFromSample S.tabla2_29__Sample

tabla2_30 :: Cycle (Maybe Note)
tabla2_30 = noteFromSample S.tabla2_30__Sample

tabla2_31 :: Cycle (Maybe Note)
tabla2_31 = noteFromSample S.tabla2_31__Sample

tabla2_32 :: Cycle (Maybe Note)
tabla2_32 = noteFromSample S.tabla2_32__Sample

tabla2_33 :: Cycle (Maybe Note)
tabla2_33 = noteFromSample S.tabla2_33__Sample

tabla2_34 :: Cycle (Maybe Note)
tabla2_34 = noteFromSample S.tabla2_34__Sample

tabla2_35 :: Cycle (Maybe Note)
tabla2_35 = noteFromSample S.tabla2_35__Sample

tabla2_36 :: Cycle (Maybe Note)
tabla2_36 = noteFromSample S.tabla2_36__Sample

tabla2_37 :: Cycle (Maybe Note)
tabla2_37 = noteFromSample S.tabla2_37__Sample

tabla2_38 :: Cycle (Maybe Note)
tabla2_38 = noteFromSample S.tabla2_38__Sample

tabla2_39 :: Cycle (Maybe Note)
tabla2_39 = noteFromSample S.tabla2_39__Sample

tabla2_40 :: Cycle (Maybe Note)
tabla2_40 = noteFromSample S.tabla2_40__Sample

tabla2_41 :: Cycle (Maybe Note)
tabla2_41 = noteFromSample S.tabla2_41__Sample

tabla2_42 :: Cycle (Maybe Note)
tabla2_42 = noteFromSample S.tabla2_42__Sample

tabla2_43 :: Cycle (Maybe Note)
tabla2_43 = noteFromSample S.tabla2_43__Sample

tabla2_44 :: Cycle (Maybe Note)
tabla2_44 = noteFromSample S.tabla2_44__Sample

tabla2_45 :: Cycle (Maybe Note)
tabla2_45 = noteFromSample S.tabla2_45__Sample

chin :: Cycle (Maybe Note)
chin = noteFromSample S.chin_0__Sample

chin_0 :: Cycle (Maybe Note)
chin_0 = noteFromSample S.chin_0__Sample

chin_1 :: Cycle (Maybe Note)
chin_1 = noteFromSample S.chin_1__Sample

chin_2 :: Cycle (Maybe Note)
chin_2 = noteFromSample S.chin_2__Sample

chin_3 :: Cycle (Maybe Note)
chin_3 = noteFromSample S.chin_3__Sample

mp3 :: Cycle (Maybe Note)
mp3 = noteFromSample S.mp3_0__Sample

mp3_0 :: Cycle (Maybe Note)
mp3_0 = noteFromSample S.mp3_0__Sample

mp3_1 :: Cycle (Maybe Note)
mp3_1 = noteFromSample S.mp3_1__Sample

mp3_2 :: Cycle (Maybe Note)
mp3_2 = noteFromSample S.mp3_2__Sample

mp3_3 :: Cycle (Maybe Note)
mp3_3 = noteFromSample S.mp3_3__Sample

tablex :: Cycle (Maybe Note)
tablex = noteFromSample S.tablex_0__Sample

tablex_0 :: Cycle (Maybe Note)
tablex_0 = noteFromSample S.tablex_0__Sample

tablex_1 :: Cycle (Maybe Note)
tablex_1 = noteFromSample S.tablex_1__Sample

tablex_2 :: Cycle (Maybe Note)
tablex_2 = noteFromSample S.tablex_2__Sample

sf :: Cycle (Maybe Note)
sf = noteFromSample S.sf_0__Sample

sf_0 :: Cycle (Maybe Note)
sf_0 = noteFromSample S.sf_0__Sample

sf_1 :: Cycle (Maybe Note)
sf_1 = noteFromSample S.sf_1__Sample

sf_2 :: Cycle (Maybe Note)
sf_2 = noteFromSample S.sf_2__Sample

sf_3 :: Cycle (Maybe Note)
sf_3 = noteFromSample S.sf_3__Sample

sf_4 :: Cycle (Maybe Note)
sf_4 = noteFromSample S.sf_4__Sample

sf_5 :: Cycle (Maybe Note)
sf_5 = noteFromSample S.sf_5__Sample

sf_6 :: Cycle (Maybe Note)
sf_6 = noteFromSample S.sf_6__Sample

sf_7 :: Cycle (Maybe Note)
sf_7 = noteFromSample S.sf_7__Sample

sf_8 :: Cycle (Maybe Note)
sf_8 = noteFromSample S.sf_8__Sample

sf_9 :: Cycle (Maybe Note)
sf_9 = noteFromSample S.sf_9__Sample

sf_10 :: Cycle (Maybe Note)
sf_10 = noteFromSample S.sf_10__Sample

sf_11 :: Cycle (Maybe Note)
sf_11 = noteFromSample S.sf_11__Sample

sf_12 :: Cycle (Maybe Note)
sf_12 = noteFromSample S.sf_12__Sample

sf_13 :: Cycle (Maybe Note)
sf_13 = noteFromSample S.sf_13__Sample

sf_14 :: Cycle (Maybe Note)
sf_14 = noteFromSample S.sf_14__Sample

sf_15 :: Cycle (Maybe Note)
sf_15 = noteFromSample S.sf_15__Sample

sf_16 :: Cycle (Maybe Note)
sf_16 = noteFromSample S.sf_16__Sample

sf_17 :: Cycle (Maybe Note)
sf_17 = noteFromSample S.sf_17__Sample

speakspell :: Cycle (Maybe Note)
speakspell = noteFromSample S.speakspell_0__Sample

speakspell_0 :: Cycle (Maybe Note)
speakspell_0 = noteFromSample S.speakspell_0__Sample

speakspell_1 :: Cycle (Maybe Note)
speakspell_1 = noteFromSample S.speakspell_1__Sample

speakspell_2 :: Cycle (Maybe Note)
speakspell_2 = noteFromSample S.speakspell_2__Sample

speakspell_3 :: Cycle (Maybe Note)
speakspell_3 = noteFromSample S.speakspell_3__Sample

speakspell_4 :: Cycle (Maybe Note)
speakspell_4 = noteFromSample S.speakspell_4__Sample

speakspell_5 :: Cycle (Maybe Note)
speakspell_5 = noteFromSample S.speakspell_5__Sample

speakspell_6 :: Cycle (Maybe Note)
speakspell_6 = noteFromSample S.speakspell_6__Sample

speakspell_7 :: Cycle (Maybe Note)
speakspell_7 = noteFromSample S.speakspell_7__Sample

speakspell_8 :: Cycle (Maybe Note)
speakspell_8 = noteFromSample S.speakspell_8__Sample

speakspell_9 :: Cycle (Maybe Note)
speakspell_9 = noteFromSample S.speakspell_9__Sample

speakspell_10 :: Cycle (Maybe Note)
speakspell_10 = noteFromSample S.speakspell_10__Sample

speakspell_11 :: Cycle (Maybe Note)
speakspell_11 = noteFromSample S.speakspell_11__Sample

cc :: Cycle (Maybe Note)
cc = noteFromSample S.cc_0__Sample

cc_0 :: Cycle (Maybe Note)
cc_0 = noteFromSample S.cc_0__Sample

cc_1 :: Cycle (Maybe Note)
cc_1 = noteFromSample S.cc_1__Sample

cc_2 :: Cycle (Maybe Note)
cc_2 = noteFromSample S.cc_2__Sample

cc_3 :: Cycle (Maybe Note)
cc_3 = noteFromSample S.cc_3__Sample

cc_4 :: Cycle (Maybe Note)
cc_4 = noteFromSample S.cc_4__Sample

cc_5 :: Cycle (Maybe Note)
cc_5 = noteFromSample S.cc_5__Sample

gabbaloud :: Cycle (Maybe Note)
gabbaloud = noteFromSample S.gabbaloud_0__Sample

gabbaloud_0 :: Cycle (Maybe Note)
gabbaloud_0 = noteFromSample S.gabbaloud_0__Sample

gabbaloud_1 :: Cycle (Maybe Note)
gabbaloud_1 = noteFromSample S.gabbaloud_1__Sample

gabbaloud_2 :: Cycle (Maybe Note)
gabbaloud_2 = noteFromSample S.gabbaloud_2__Sample

gabbaloud_3 :: Cycle (Maybe Note)
gabbaloud_3 = noteFromSample S.gabbaloud_3__Sample

ades2 :: Cycle (Maybe Note)
ades2 = noteFromSample S.ades2_0__Sample

ades2_0 :: Cycle (Maybe Note)
ades2_0 = noteFromSample S.ades2_0__Sample

ades2_1 :: Cycle (Maybe Note)
ades2_1 = noteFromSample S.ades2_1__Sample

ades2_2 :: Cycle (Maybe Note)
ades2_2 = noteFromSample S.ades2_2__Sample

ades2_3 :: Cycle (Maybe Note)
ades2_3 = noteFromSample S.ades2_3__Sample

ades2_4 :: Cycle (Maybe Note)
ades2_4 = noteFromSample S.ades2_4__Sample

ades2_5 :: Cycle (Maybe Note)
ades2_5 = noteFromSample S.ades2_5__Sample

ades2_6 :: Cycle (Maybe Note)
ades2_6 = noteFromSample S.ades2_6__Sample

ades2_7 :: Cycle (Maybe Note)
ades2_7 = noteFromSample S.ades2_7__Sample

ades2_8 :: Cycle (Maybe Note)
ades2_8 = noteFromSample S.ades2_8__Sample

space :: Cycle (Maybe Note)
space = noteFromSample S.space_0__Sample

space_0 :: Cycle (Maybe Note)
space_0 = noteFromSample S.space_0__Sample

space_1 :: Cycle (Maybe Note)
space_1 = noteFromSample S.space_1__Sample

space_2 :: Cycle (Maybe Note)
space_2 = noteFromSample S.space_2__Sample

space_3 :: Cycle (Maybe Note)
space_3 = noteFromSample S.space_3__Sample

space_4 :: Cycle (Maybe Note)
space_4 = noteFromSample S.space_4__Sample

space_5 :: Cycle (Maybe Note)
space_5 = noteFromSample S.space_5__Sample

space_6 :: Cycle (Maybe Note)
space_6 = noteFromSample S.space_6__Sample

space_7 :: Cycle (Maybe Note)
space_7 = noteFromSample S.space_7__Sample

space_8 :: Cycle (Maybe Note)
space_8 = noteFromSample S.space_8__Sample

space_9 :: Cycle (Maybe Note)
space_9 = noteFromSample S.space_9__Sample

space_10 :: Cycle (Maybe Note)
space_10 = noteFromSample S.space_10__Sample

space_11 :: Cycle (Maybe Note)
space_11 = noteFromSample S.space_11__Sample

space_12 :: Cycle (Maybe Note)
space_12 = noteFromSample S.space_12__Sample

space_13 :: Cycle (Maybe Note)
space_13 = noteFromSample S.space_13__Sample

space_14 :: Cycle (Maybe Note)
space_14 = noteFromSample S.space_14__Sample

space_15 :: Cycle (Maybe Note)
space_15 = noteFromSample S.space_15__Sample

space_16 :: Cycle (Maybe Note)
space_16 = noteFromSample S.space_16__Sample

space_17 :: Cycle (Maybe Note)
space_17 = noteFromSample S.space_17__Sample

battles :: Cycle (Maybe Note)
battles = noteFromSample S.battles_0__Sample

battles_0 :: Cycle (Maybe Note)
battles_0 = noteFromSample S.battles_0__Sample

battles_1 :: Cycle (Maybe Note)
battles_1 = noteFromSample S.battles_1__Sample

voodoo :: Cycle (Maybe Note)
voodoo = noteFromSample S.voodoo_0__Sample

voodoo_0 :: Cycle (Maybe Note)
voodoo_0 = noteFromSample S.voodoo_0__Sample

voodoo_1 :: Cycle (Maybe Note)
voodoo_1 = noteFromSample S.voodoo_1__Sample

voodoo_2 :: Cycle (Maybe Note)
voodoo_2 = noteFromSample S.voodoo_2__Sample

voodoo_3 :: Cycle (Maybe Note)
voodoo_3 = noteFromSample S.voodoo_3__Sample

voodoo_4 :: Cycle (Maybe Note)
voodoo_4 = noteFromSample S.voodoo_4__Sample

ravemono :: Cycle (Maybe Note)
ravemono = noteFromSample S.ravemono_0__Sample

ravemono_0 :: Cycle (Maybe Note)
ravemono_0 = noteFromSample S.ravemono_0__Sample

ravemono_1 :: Cycle (Maybe Note)
ravemono_1 = noteFromSample S.ravemono_1__Sample

psr :: Cycle (Maybe Note)
psr = noteFromSample S.psr_0__Sample

psr_0 :: Cycle (Maybe Note)
psr_0 = noteFromSample S.psr_0__Sample

psr_1 :: Cycle (Maybe Note)
psr_1 = noteFromSample S.psr_1__Sample

psr_2 :: Cycle (Maybe Note)
psr_2 = noteFromSample S.psr_2__Sample

psr_3 :: Cycle (Maybe Note)
psr_3 = noteFromSample S.psr_3__Sample

psr_4 :: Cycle (Maybe Note)
psr_4 = noteFromSample S.psr_4__Sample

psr_5 :: Cycle (Maybe Note)
psr_5 = noteFromSample S.psr_5__Sample

psr_6 :: Cycle (Maybe Note)
psr_6 = noteFromSample S.psr_6__Sample

psr_7 :: Cycle (Maybe Note)
psr_7 = noteFromSample S.psr_7__Sample

psr_8 :: Cycle (Maybe Note)
psr_8 = noteFromSample S.psr_8__Sample

psr_9 :: Cycle (Maybe Note)
psr_9 = noteFromSample S.psr_9__Sample

psr_10 :: Cycle (Maybe Note)
psr_10 = noteFromSample S.psr_10__Sample

psr_11 :: Cycle (Maybe Note)
psr_11 = noteFromSample S.psr_11__Sample

psr_12 :: Cycle (Maybe Note)
psr_12 = noteFromSample S.psr_12__Sample

psr_13 :: Cycle (Maybe Note)
psr_13 = noteFromSample S.psr_13__Sample

psr_14 :: Cycle (Maybe Note)
psr_14 = noteFromSample S.psr_14__Sample

psr_15 :: Cycle (Maybe Note)
psr_15 = noteFromSample S.psr_15__Sample

psr_16 :: Cycle (Maybe Note)
psr_16 = noteFromSample S.psr_16__Sample

psr_17 :: Cycle (Maybe Note)
psr_17 = noteFromSample S.psr_17__Sample

psr_18 :: Cycle (Maybe Note)
psr_18 = noteFromSample S.psr_18__Sample

psr_19 :: Cycle (Maybe Note)
psr_19 = noteFromSample S.psr_19__Sample

psr_20 :: Cycle (Maybe Note)
psr_20 = noteFromSample S.psr_20__Sample

psr_21 :: Cycle (Maybe Note)
psr_21 = noteFromSample S.psr_21__Sample

psr_22 :: Cycle (Maybe Note)
psr_22 = noteFromSample S.psr_22__Sample

psr_23 :: Cycle (Maybe Note)
psr_23 = noteFromSample S.psr_23__Sample

psr_24 :: Cycle (Maybe Note)
psr_24 = noteFromSample S.psr_24__Sample

psr_25 :: Cycle (Maybe Note)
psr_25 = noteFromSample S.psr_25__Sample

psr_26 :: Cycle (Maybe Note)
psr_26 = noteFromSample S.psr_26__Sample

psr_27 :: Cycle (Maybe Note)
psr_27 = noteFromSample S.psr_27__Sample

psr_28 :: Cycle (Maybe Note)
psr_28 = noteFromSample S.psr_28__Sample

psr_29 :: Cycle (Maybe Note)
psr_29 = noteFromSample S.psr_29__Sample

metal :: Cycle (Maybe Note)
metal = noteFromSample S.metal_0__Sample

metal_0 :: Cycle (Maybe Note)
metal_0 = noteFromSample S.metal_0__Sample

metal_1 :: Cycle (Maybe Note)
metal_1 = noteFromSample S.metal_1__Sample

metal_2 :: Cycle (Maybe Note)
metal_2 = noteFromSample S.metal_2__Sample

metal_3 :: Cycle (Maybe Note)
metal_3 = noteFromSample S.metal_3__Sample

metal_4 :: Cycle (Maybe Note)
metal_4 = noteFromSample S.metal_4__Sample

metal_5 :: Cycle (Maybe Note)
metal_5 = noteFromSample S.metal_5__Sample

metal_6 :: Cycle (Maybe Note)
metal_6 = noteFromSample S.metal_6__Sample

metal_7 :: Cycle (Maybe Note)
metal_7 = noteFromSample S.metal_7__Sample

metal_8 :: Cycle (Maybe Note)
metal_8 = noteFromSample S.metal_8__Sample

metal_9 :: Cycle (Maybe Note)
metal_9 = noteFromSample S.metal_9__Sample

hardcore :: Cycle (Maybe Note)
hardcore = noteFromSample S.hardcore_0__Sample

hardcore_0 :: Cycle (Maybe Note)
hardcore_0 = noteFromSample S.hardcore_0__Sample

hardcore_1 :: Cycle (Maybe Note)
hardcore_1 = noteFromSample S.hardcore_1__Sample

hardcore_2 :: Cycle (Maybe Note)
hardcore_2 = noteFromSample S.hardcore_2__Sample

hardcore_3 :: Cycle (Maybe Note)
hardcore_3 = noteFromSample S.hardcore_3__Sample

hardcore_4 :: Cycle (Maybe Note)
hardcore_4 = noteFromSample S.hardcore_4__Sample

hardcore_5 :: Cycle (Maybe Note)
hardcore_5 = noteFromSample S.hardcore_5__Sample

hardcore_6 :: Cycle (Maybe Note)
hardcore_6 = noteFromSample S.hardcore_6__Sample

hardcore_7 :: Cycle (Maybe Note)
hardcore_7 = noteFromSample S.hardcore_7__Sample

hardcore_8 :: Cycle (Maybe Note)
hardcore_8 = noteFromSample S.hardcore_8__Sample

hardcore_9 :: Cycle (Maybe Note)
hardcore_9 = noteFromSample S.hardcore_9__Sample

hardcore_10 :: Cycle (Maybe Note)
hardcore_10 = noteFromSample S.hardcore_10__Sample

hardcore_11 :: Cycle (Maybe Note)
hardcore_11 = noteFromSample S.hardcore_11__Sample

mouth :: Cycle (Maybe Note)
mouth = noteFromSample S.mouth_0__Sample

mouth_0 :: Cycle (Maybe Note)
mouth_0 = noteFromSample S.mouth_0__Sample

mouth_1 :: Cycle (Maybe Note)
mouth_1 = noteFromSample S.mouth_1__Sample

mouth_2 :: Cycle (Maybe Note)
mouth_2 = noteFromSample S.mouth_2__Sample

mouth_3 :: Cycle (Maybe Note)
mouth_3 = noteFromSample S.mouth_3__Sample

mouth_4 :: Cycle (Maybe Note)
mouth_4 = noteFromSample S.mouth_4__Sample

mouth_5 :: Cycle (Maybe Note)
mouth_5 = noteFromSample S.mouth_5__Sample

mouth_6 :: Cycle (Maybe Note)
mouth_6 = noteFromSample S.mouth_6__Sample

mouth_7 :: Cycle (Maybe Note)
mouth_7 = noteFromSample S.mouth_7__Sample

mouth_8 :: Cycle (Maybe Note)
mouth_8 = noteFromSample S.mouth_8__Sample

mouth_9 :: Cycle (Maybe Note)
mouth_9 = noteFromSample S.mouth_9__Sample

mouth_10 :: Cycle (Maybe Note)
mouth_10 = noteFromSample S.mouth_10__Sample

mouth_11 :: Cycle (Maybe Note)
mouth_11 = noteFromSample S.mouth_11__Sample

mouth_12 :: Cycle (Maybe Note)
mouth_12 = noteFromSample S.mouth_12__Sample

mouth_13 :: Cycle (Maybe Note)
mouth_13 = noteFromSample S.mouth_13__Sample

mouth_14 :: Cycle (Maybe Note)
mouth_14 = noteFromSample S.mouth_14__Sample

sugar :: Cycle (Maybe Note)
sugar = noteFromSample S.sugar_0__Sample

sugar_0 :: Cycle (Maybe Note)
sugar_0 = noteFromSample S.sugar_0__Sample

sugar_1 :: Cycle (Maybe Note)
sugar_1 = noteFromSample S.sugar_1__Sample

odx :: Cycle (Maybe Note)
odx = noteFromSample S.odx_0__Sample

odx_0 :: Cycle (Maybe Note)
odx_0 = noteFromSample S.odx_0__Sample

odx_1 :: Cycle (Maybe Note)
odx_1 = noteFromSample S.odx_1__Sample

odx_2 :: Cycle (Maybe Note)
odx_2 = noteFromSample S.odx_2__Sample

odx_3 :: Cycle (Maybe Note)
odx_3 = noteFromSample S.odx_3__Sample

odx_4 :: Cycle (Maybe Note)
odx_4 = noteFromSample S.odx_4__Sample

odx_5 :: Cycle (Maybe Note)
odx_5 = noteFromSample S.odx_5__Sample

odx_6 :: Cycle (Maybe Note)
odx_6 = noteFromSample S.odx_6__Sample

odx_7 :: Cycle (Maybe Note)
odx_7 = noteFromSample S.odx_7__Sample

odx_8 :: Cycle (Maybe Note)
odx_8 = noteFromSample S.odx_8__Sample

odx_9 :: Cycle (Maybe Note)
odx_9 = noteFromSample S.odx_9__Sample

odx_10 :: Cycle (Maybe Note)
odx_10 = noteFromSample S.odx_10__Sample

odx_11 :: Cycle (Maybe Note)
odx_11 = noteFromSample S.odx_11__Sample

odx_12 :: Cycle (Maybe Note)
odx_12 = noteFromSample S.odx_12__Sample

odx_13 :: Cycle (Maybe Note)
odx_13 = noteFromSample S.odx_13__Sample

odx_14 :: Cycle (Maybe Note)
odx_14 = noteFromSample S.odx_14__Sample

x_808lc :: Cycle (Maybe Note)
x_808lc = noteFromSample S.x_808lc_0__Sample

x_808lc_0 :: Cycle (Maybe Note)
x_808lc_0 = noteFromSample S.x_808lc_0__Sample

x_808lc_1 :: Cycle (Maybe Note)
x_808lc_1 = noteFromSample S.x_808lc_1__Sample

x_808lc_2 :: Cycle (Maybe Note)
x_808lc_2 = noteFromSample S.x_808lc_2__Sample

x_808lc_3 :: Cycle (Maybe Note)
x_808lc_3 = noteFromSample S.x_808lc_3__Sample

x_808lc_4 :: Cycle (Maybe Note)
x_808lc_4 = noteFromSample S.x_808lc_4__Sample

mt :: Cycle (Maybe Note)
mt = noteFromSample S.mt_0__Sample

mt_0 :: Cycle (Maybe Note)
mt_0 = noteFromSample S.mt_0__Sample

mt_1 :: Cycle (Maybe Note)
mt_1 = noteFromSample S.mt_1__Sample

mt_2 :: Cycle (Maybe Note)
mt_2 = noteFromSample S.mt_2__Sample

mt_3 :: Cycle (Maybe Note)
mt_3 = noteFromSample S.mt_3__Sample

mt_4 :: Cycle (Maybe Note)
mt_4 = noteFromSample S.mt_4__Sample

mt_5 :: Cycle (Maybe Note)
mt_5 = noteFromSample S.mt_5__Sample

mt_6 :: Cycle (Maybe Note)
mt_6 = noteFromSample S.mt_6__Sample

mt_7 :: Cycle (Maybe Note)
mt_7 = noteFromSample S.mt_7__Sample

mt_8 :: Cycle (Maybe Note)
mt_8 = noteFromSample S.mt_8__Sample

mt_9 :: Cycle (Maybe Note)
mt_9 = noteFromSample S.mt_9__Sample

mt_10 :: Cycle (Maybe Note)
mt_10 = noteFromSample S.mt_10__Sample

mt_11 :: Cycle (Maybe Note)
mt_11 = noteFromSample S.mt_11__Sample

mt_12 :: Cycle (Maybe Note)
mt_12 = noteFromSample S.mt_12__Sample

mt_13 :: Cycle (Maybe Note)
mt_13 = noteFromSample S.mt_13__Sample

mt_14 :: Cycle (Maybe Note)
mt_14 = noteFromSample S.mt_14__Sample

mt_15 :: Cycle (Maybe Note)
mt_15 = noteFromSample S.mt_15__Sample

drumtraks :: Cycle (Maybe Note)
drumtraks = noteFromSample S.drumtraks_0__Sample

drumtraks_0 :: Cycle (Maybe Note)
drumtraks_0 = noteFromSample S.drumtraks_0__Sample

drumtraks_1 :: Cycle (Maybe Note)
drumtraks_1 = noteFromSample S.drumtraks_1__Sample

drumtraks_2 :: Cycle (Maybe Note)
drumtraks_2 = noteFromSample S.drumtraks_2__Sample

drumtraks_3 :: Cycle (Maybe Note)
drumtraks_3 = noteFromSample S.drumtraks_3__Sample

drumtraks_4 :: Cycle (Maybe Note)
drumtraks_4 = noteFromSample S.drumtraks_4__Sample

drumtraks_5 :: Cycle (Maybe Note)
drumtraks_5 = noteFromSample S.drumtraks_5__Sample

drumtraks_6 :: Cycle (Maybe Note)
drumtraks_6 = noteFromSample S.drumtraks_6__Sample

drumtraks_7 :: Cycle (Maybe Note)
drumtraks_7 = noteFromSample S.drumtraks_7__Sample

drumtraks_8 :: Cycle (Maybe Note)
drumtraks_8 = noteFromSample S.drumtraks_8__Sample

drumtraks_9 :: Cycle (Maybe Note)
drumtraks_9 = noteFromSample S.drumtraks_9__Sample

drumtraks_10 :: Cycle (Maybe Note)
drumtraks_10 = noteFromSample S.drumtraks_10__Sample

drumtraks_11 :: Cycle (Maybe Note)
drumtraks_11 = noteFromSample S.drumtraks_11__Sample

drumtraks_12 :: Cycle (Maybe Note)
drumtraks_12 = noteFromSample S.drumtraks_12__Sample

print :: Cycle (Maybe Note)
print = noteFromSample S.print_0__Sample

print_0 :: Cycle (Maybe Note)
print_0 = noteFromSample S.print_0__Sample

print_1 :: Cycle (Maybe Note)
print_1 = noteFromSample S.print_1__Sample

print_2 :: Cycle (Maybe Note)
print_2 = noteFromSample S.print_2__Sample

print_3 :: Cycle (Maybe Note)
print_3 = noteFromSample S.print_3__Sample

print_4 :: Cycle (Maybe Note)
print_4 = noteFromSample S.print_4__Sample

print_5 :: Cycle (Maybe Note)
print_5 = noteFromSample S.print_5__Sample

print_6 :: Cycle (Maybe Note)
print_6 = noteFromSample S.print_6__Sample

print_7 :: Cycle (Maybe Note)
print_7 = noteFromSample S.print_7__Sample

print_8 :: Cycle (Maybe Note)
print_8 = noteFromSample S.print_8__Sample

print_9 :: Cycle (Maybe Note)
print_9 = noteFromSample S.print_9__Sample

print_10 :: Cycle (Maybe Note)
print_10 = noteFromSample S.print_10__Sample

blip :: Cycle (Maybe Note)
blip = noteFromSample S.blip_0__Sample

blip_0 :: Cycle (Maybe Note)
blip_0 = noteFromSample S.blip_0__Sample

blip_1 :: Cycle (Maybe Note)
blip_1 = noteFromSample S.blip_1__Sample

wobble :: Cycle (Maybe Note)
wobble = noteFromSample S.wobble_0__Sample

wobble_0 :: Cycle (Maybe Note)
wobble_0 = noteFromSample S.wobble_0__Sample

made :: Cycle (Maybe Note)
made = noteFromSample S.made_0__Sample

made_0 :: Cycle (Maybe Note)
made_0 = noteFromSample S.made_0__Sample

made_1 :: Cycle (Maybe Note)
made_1 = noteFromSample S.made_1__Sample

made_2 :: Cycle (Maybe Note)
made_2 = noteFromSample S.made_2__Sample

made_3 :: Cycle (Maybe Note)
made_3 = noteFromSample S.made_3__Sample

made_4 :: Cycle (Maybe Note)
made_4 = noteFromSample S.made_4__Sample

made_5 :: Cycle (Maybe Note)
made_5 = noteFromSample S.made_5__Sample

made_6 :: Cycle (Maybe Note)
made_6 = noteFromSample S.made_6__Sample

bass3 :: Cycle (Maybe Note)
bass3 = noteFromSample S.bass3_0__Sample

bass3_0 :: Cycle (Maybe Note)
bass3_0 = noteFromSample S.bass3_0__Sample

bass3_1 :: Cycle (Maybe Note)
bass3_1 = noteFromSample S.bass3_1__Sample

bass3_2 :: Cycle (Maybe Note)
bass3_2 = noteFromSample S.bass3_2__Sample

bass3_3 :: Cycle (Maybe Note)
bass3_3 = noteFromSample S.bass3_3__Sample

bass3_4 :: Cycle (Maybe Note)
bass3_4 = noteFromSample S.bass3_4__Sample

bass3_5 :: Cycle (Maybe Note)
bass3_5 = noteFromSample S.bass3_5__Sample

bass3_6 :: Cycle (Maybe Note)
bass3_6 = noteFromSample S.bass3_6__Sample

bass3_7 :: Cycle (Maybe Note)
bass3_7 = noteFromSample S.bass3_7__Sample

bass3_8 :: Cycle (Maybe Note)
bass3_8 = noteFromSample S.bass3_8__Sample

bass3_9 :: Cycle (Maybe Note)
bass3_9 = noteFromSample S.bass3_9__Sample

bass3_10 :: Cycle (Maybe Note)
bass3_10 = noteFromSample S.bass3_10__Sample

speechless :: Cycle (Maybe Note)
speechless = noteFromSample S.speechless_0__Sample

speechless_0 :: Cycle (Maybe Note)
speechless_0 = noteFromSample S.speechless_0__Sample

speechless_1 :: Cycle (Maybe Note)
speechless_1 = noteFromSample S.speechless_1__Sample

speechless_2 :: Cycle (Maybe Note)
speechless_2 = noteFromSample S.speechless_2__Sample

speechless_3 :: Cycle (Maybe Note)
speechless_3 = noteFromSample S.speechless_3__Sample

speechless_4 :: Cycle (Maybe Note)
speechless_4 = noteFromSample S.speechless_4__Sample

speechless_5 :: Cycle (Maybe Note)
speechless_5 = noteFromSample S.speechless_5__Sample

speechless_6 :: Cycle (Maybe Note)
speechless_6 = noteFromSample S.speechless_6__Sample

speechless_7 :: Cycle (Maybe Note)
speechless_7 = noteFromSample S.speechless_7__Sample

speechless_8 :: Cycle (Maybe Note)
speechless_8 = noteFromSample S.speechless_8__Sample

speechless_9 :: Cycle (Maybe Note)
speechless_9 = noteFromSample S.speechless_9__Sample

sine :: Cycle (Maybe Note)
sine = noteFromSample S.sine_0__Sample

sine_0 :: Cycle (Maybe Note)
sine_0 = noteFromSample S.sine_0__Sample

sine_1 :: Cycle (Maybe Note)
sine_1 = noteFromSample S.sine_1__Sample

sine_2 :: Cycle (Maybe Note)
sine_2 = noteFromSample S.sine_2__Sample

sine_3 :: Cycle (Maybe Note)
sine_3 = noteFromSample S.sine_3__Sample

sine_4 :: Cycle (Maybe Note)
sine_4 = noteFromSample S.sine_4__Sample

sine_5 :: Cycle (Maybe Note)
sine_5 = noteFromSample S.sine_5__Sample

noise :: Cycle (Maybe Note)
noise = noteFromSample S.noise_0__Sample

noise_0 :: Cycle (Maybe Note)
noise_0 = noteFromSample S.noise_0__Sample

x_808lt :: Cycle (Maybe Note)
x_808lt = noteFromSample S.x_808lt_0__Sample

x_808lt_0 :: Cycle (Maybe Note)
x_808lt_0 = noteFromSample S.x_808lt_0__Sample

x_808lt_1 :: Cycle (Maybe Note)
x_808lt_1 = noteFromSample S.x_808lt_1__Sample

x_808lt_2 :: Cycle (Maybe Note)
x_808lt_2 = noteFromSample S.x_808lt_2__Sample

x_808lt_3 :: Cycle (Maybe Note)
x_808lt_3 = noteFromSample S.x_808lt_3__Sample

x_808lt_4 :: Cycle (Maybe Note)
x_808lt_4 = noteFromSample S.x_808lt_4__Sample

sd :: Cycle (Maybe Note)
sd = noteFromSample S.sd_0__Sample

sd_0 :: Cycle (Maybe Note)
sd_0 = noteFromSample S.sd_0__Sample

sd_1 :: Cycle (Maybe Note)
sd_1 = noteFromSample S.sd_1__Sample

alphabet :: Cycle (Maybe Note)
alphabet = noteFromSample S.alphabet_0__Sample

alphabet_0 :: Cycle (Maybe Note)
alphabet_0 = noteFromSample S.alphabet_0__Sample

alphabet_1 :: Cycle (Maybe Note)
alphabet_1 = noteFromSample S.alphabet_1__Sample

alphabet_2 :: Cycle (Maybe Note)
alphabet_2 = noteFromSample S.alphabet_2__Sample

alphabet_3 :: Cycle (Maybe Note)
alphabet_3 = noteFromSample S.alphabet_3__Sample

alphabet_4 :: Cycle (Maybe Note)
alphabet_4 = noteFromSample S.alphabet_4__Sample

alphabet_5 :: Cycle (Maybe Note)
alphabet_5 = noteFromSample S.alphabet_5__Sample

alphabet_6 :: Cycle (Maybe Note)
alphabet_6 = noteFromSample S.alphabet_6__Sample

alphabet_7 :: Cycle (Maybe Note)
alphabet_7 = noteFromSample S.alphabet_7__Sample

alphabet_8 :: Cycle (Maybe Note)
alphabet_8 = noteFromSample S.alphabet_8__Sample

alphabet_9 :: Cycle (Maybe Note)
alphabet_9 = noteFromSample S.alphabet_9__Sample

alphabet_10 :: Cycle (Maybe Note)
alphabet_10 = noteFromSample S.alphabet_10__Sample

alphabet_11 :: Cycle (Maybe Note)
alphabet_11 = noteFromSample S.alphabet_11__Sample

alphabet_12 :: Cycle (Maybe Note)
alphabet_12 = noteFromSample S.alphabet_12__Sample

alphabet_13 :: Cycle (Maybe Note)
alphabet_13 = noteFromSample S.alphabet_13__Sample

alphabet_14 :: Cycle (Maybe Note)
alphabet_14 = noteFromSample S.alphabet_14__Sample

alphabet_15 :: Cycle (Maybe Note)
alphabet_15 = noteFromSample S.alphabet_15__Sample

alphabet_16 :: Cycle (Maybe Note)
alphabet_16 = noteFromSample S.alphabet_16__Sample

alphabet_17 :: Cycle (Maybe Note)
alphabet_17 = noteFromSample S.alphabet_17__Sample

alphabet_18 :: Cycle (Maybe Note)
alphabet_18 = noteFromSample S.alphabet_18__Sample

alphabet_19 :: Cycle (Maybe Note)
alphabet_19 = noteFromSample S.alphabet_19__Sample

alphabet_20 :: Cycle (Maybe Note)
alphabet_20 = noteFromSample S.alphabet_20__Sample

alphabet_21 :: Cycle (Maybe Note)
alphabet_21 = noteFromSample S.alphabet_21__Sample

alphabet_22 :: Cycle (Maybe Note)
alphabet_22 = noteFromSample S.alphabet_22__Sample

alphabet_23 :: Cycle (Maybe Note)
alphabet_23 = noteFromSample S.alphabet_23__Sample

alphabet_24 :: Cycle (Maybe Note)
alphabet_24 = noteFromSample S.alphabet_24__Sample

alphabet_25 :: Cycle (Maybe Note)
alphabet_25 = noteFromSample S.alphabet_25__Sample

baa2 :: Cycle (Maybe Note)
baa2 = noteFromSample S.baa2_0__Sample

baa2_0 :: Cycle (Maybe Note)
baa2_0 = noteFromSample S.baa2_0__Sample

baa2_1 :: Cycle (Maybe Note)
baa2_1 = noteFromSample S.baa2_1__Sample

baa2_2 :: Cycle (Maybe Note)
baa2_2 = noteFromSample S.baa2_2__Sample

baa2_3 :: Cycle (Maybe Note)
baa2_3 = noteFromSample S.baa2_3__Sample

baa2_4 :: Cycle (Maybe Note)
baa2_4 = noteFromSample S.baa2_4__Sample

baa2_5 :: Cycle (Maybe Note)
baa2_5 = noteFromSample S.baa2_5__Sample

baa2_6 :: Cycle (Maybe Note)
baa2_6 = noteFromSample S.baa2_6__Sample

tok :: Cycle (Maybe Note)
tok = noteFromSample S.tok_0__Sample

tok_0 :: Cycle (Maybe Note)
tok_0 = noteFromSample S.tok_0__Sample

tok_1 :: Cycle (Maybe Note)
tok_1 = noteFromSample S.tok_1__Sample

tok_2 :: Cycle (Maybe Note)
tok_2 = noteFromSample S.tok_2__Sample

tok_3 :: Cycle (Maybe Note)
tok_3 = noteFromSample S.tok_3__Sample

ades3 :: Cycle (Maybe Note)
ades3 = noteFromSample S.ades3_0__Sample

ades3_0 :: Cycle (Maybe Note)
ades3_0 = noteFromSample S.ades3_0__Sample

ades3_1 :: Cycle (Maybe Note)
ades3_1 = noteFromSample S.ades3_1__Sample

ades3_2 :: Cycle (Maybe Note)
ades3_2 = noteFromSample S.ades3_2__Sample

ades3_3 :: Cycle (Maybe Note)
ades3_3 = noteFromSample S.ades3_3__Sample

ades3_4 :: Cycle (Maybe Note)
ades3_4 = noteFromSample S.ades3_4__Sample

ades3_5 :: Cycle (Maybe Note)
ades3_5 = noteFromSample S.ades3_5__Sample

ades3_6 :: Cycle (Maybe Note)
ades3_6 = noteFromSample S.ades3_6__Sample

x_909 :: Cycle (Maybe Note)
x_909 = noteFromSample S.x_909_0__Sample

x_909_0 :: Cycle (Maybe Note)
x_909_0 = noteFromSample S.x_909_0__Sample

sid :: Cycle (Maybe Note)
sid = noteFromSample S.sid_0__Sample

sid_0 :: Cycle (Maybe Note)
sid_0 = noteFromSample S.sid_0__Sample

sid_1 :: Cycle (Maybe Note)
sid_1 = noteFromSample S.sid_1__Sample

sid_2 :: Cycle (Maybe Note)
sid_2 = noteFromSample S.sid_2__Sample

sid_3 :: Cycle (Maybe Note)
sid_3 = noteFromSample S.sid_3__Sample

sid_4 :: Cycle (Maybe Note)
sid_4 = noteFromSample S.sid_4__Sample

sid_5 :: Cycle (Maybe Note)
sid_5 = noteFromSample S.sid_5__Sample

sid_6 :: Cycle (Maybe Note)
sid_6 = noteFromSample S.sid_6__Sample

sid_7 :: Cycle (Maybe Note)
sid_7 = noteFromSample S.sid_7__Sample

sid_8 :: Cycle (Maybe Note)
sid_8 = noteFromSample S.sid_8__Sample

sid_9 :: Cycle (Maybe Note)
sid_9 = noteFromSample S.sid_9__Sample

sid_10 :: Cycle (Maybe Note)
sid_10 = noteFromSample S.sid_10__Sample

sid_11 :: Cycle (Maybe Note)
sid_11 = noteFromSample S.sid_11__Sample

jungbass :: Cycle (Maybe Note)
jungbass = noteFromSample S.jungbass_0__Sample

jungbass_0 :: Cycle (Maybe Note)
jungbass_0 = noteFromSample S.jungbass_0__Sample

jungbass_1 :: Cycle (Maybe Note)
jungbass_1 = noteFromSample S.jungbass_1__Sample

jungbass_2 :: Cycle (Maybe Note)
jungbass_2 = noteFromSample S.jungbass_2__Sample

jungbass_3 :: Cycle (Maybe Note)
jungbass_3 = noteFromSample S.jungbass_3__Sample

jungbass_4 :: Cycle (Maybe Note)
jungbass_4 = noteFromSample S.jungbass_4__Sample

jungbass_5 :: Cycle (Maybe Note)
jungbass_5 = noteFromSample S.jungbass_5__Sample

jungbass_6 :: Cycle (Maybe Note)
jungbass_6 = noteFromSample S.jungbass_6__Sample

jungbass_7 :: Cycle (Maybe Note)
jungbass_7 = noteFromSample S.jungbass_7__Sample

jungbass_8 :: Cycle (Maybe Note)
jungbass_8 = noteFromSample S.jungbass_8__Sample

jungbass_9 :: Cycle (Maybe Note)
jungbass_9 = noteFromSample S.jungbass_9__Sample

jungbass_10 :: Cycle (Maybe Note)
jungbass_10 = noteFromSample S.jungbass_10__Sample

jungbass_11 :: Cycle (Maybe Note)
jungbass_11 = noteFromSample S.jungbass_11__Sample

jungbass_12 :: Cycle (Maybe Note)
jungbass_12 = noteFromSample S.jungbass_12__Sample

jungbass_13 :: Cycle (Maybe Note)
jungbass_13 = noteFromSample S.jungbass_13__Sample

jungbass_14 :: Cycle (Maybe Note)
jungbass_14 = noteFromSample S.jungbass_14__Sample

jungbass_15 :: Cycle (Maybe Note)
jungbass_15 = noteFromSample S.jungbass_15__Sample

jungbass_16 :: Cycle (Maybe Note)
jungbass_16 = noteFromSample S.jungbass_16__Sample

jungbass_17 :: Cycle (Maybe Note)
jungbass_17 = noteFromSample S.jungbass_17__Sample

jungbass_18 :: Cycle (Maybe Note)
jungbass_18 = noteFromSample S.jungbass_18__Sample

jungbass_19 :: Cycle (Maybe Note)
jungbass_19 = noteFromSample S.jungbass_19__Sample

gabba :: Cycle (Maybe Note)
gabba = noteFromSample S.gabba_0__Sample

gabba_0 :: Cycle (Maybe Note)
gabba_0 = noteFromSample S.gabba_0__Sample

gabba_1 :: Cycle (Maybe Note)
gabba_1 = noteFromSample S.gabba_1__Sample

gabba_2 :: Cycle (Maybe Note)
gabba_2 = noteFromSample S.gabba_2__Sample

gabba_3 :: Cycle (Maybe Note)
gabba_3 = noteFromSample S.gabba_3__Sample

crow :: Cycle (Maybe Note)
crow = noteFromSample S.crow_0__Sample

crow_0 :: Cycle (Maybe Note)
crow_0 = noteFromSample S.crow_0__Sample

crow_1 :: Cycle (Maybe Note)
crow_1 = noteFromSample S.crow_1__Sample

crow_2 :: Cycle (Maybe Note)
crow_2 = noteFromSample S.crow_2__Sample

crow_3 :: Cycle (Maybe Note)
crow_3 = noteFromSample S.crow_3__Sample

birds3 :: Cycle (Maybe Note)
birds3 = noteFromSample S.birds3_0__Sample

birds3_0 :: Cycle (Maybe Note)
birds3_0 = noteFromSample S.birds3_0__Sample

birds3_1 :: Cycle (Maybe Note)
birds3_1 = noteFromSample S.birds3_1__Sample

birds3_2 :: Cycle (Maybe Note)
birds3_2 = noteFromSample S.birds3_2__Sample

birds3_3 :: Cycle (Maybe Note)
birds3_3 = noteFromSample S.birds3_3__Sample

birds3_4 :: Cycle (Maybe Note)
birds3_4 = noteFromSample S.birds3_4__Sample

birds3_5 :: Cycle (Maybe Note)
birds3_5 = noteFromSample S.birds3_5__Sample

birds3_6 :: Cycle (Maybe Note)
birds3_6 = noteFromSample S.birds3_6__Sample

birds3_7 :: Cycle (Maybe Note)
birds3_7 = noteFromSample S.birds3_7__Sample

birds3_8 :: Cycle (Maybe Note)
birds3_8 = noteFromSample S.birds3_8__Sample

birds3_9 :: Cycle (Maybe Note)
birds3_9 = noteFromSample S.birds3_9__Sample

birds3_10 :: Cycle (Maybe Note)
birds3_10 = noteFromSample S.birds3_10__Sample

birds3_11 :: Cycle (Maybe Note)
birds3_11 = noteFromSample S.birds3_11__Sample

birds3_12 :: Cycle (Maybe Note)
birds3_12 = noteFromSample S.birds3_12__Sample

birds3_13 :: Cycle (Maybe Note)
birds3_13 = noteFromSample S.birds3_13__Sample

birds3_14 :: Cycle (Maybe Note)
birds3_14 = noteFromSample S.birds3_14__Sample

birds3_15 :: Cycle (Maybe Note)
birds3_15 = noteFromSample S.birds3_15__Sample

birds3_16 :: Cycle (Maybe Note)
birds3_16 = noteFromSample S.birds3_16__Sample

birds3_17 :: Cycle (Maybe Note)
birds3_17 = noteFromSample S.birds3_17__Sample

birds3_18 :: Cycle (Maybe Note)
birds3_18 = noteFromSample S.birds3_18__Sample

auto :: Cycle (Maybe Note)
auto = noteFromSample S.auto_0__Sample

auto_0 :: Cycle (Maybe Note)
auto_0 = noteFromSample S.auto_0__Sample

auto_1 :: Cycle (Maybe Note)
auto_1 = noteFromSample S.auto_1__Sample

auto_2 :: Cycle (Maybe Note)
auto_2 = noteFromSample S.auto_2__Sample

auto_3 :: Cycle (Maybe Note)
auto_3 = noteFromSample S.auto_3__Sample

auto_4 :: Cycle (Maybe Note)
auto_4 = noteFromSample S.auto_4__Sample

auto_5 :: Cycle (Maybe Note)
auto_5 = noteFromSample S.auto_5__Sample

auto_6 :: Cycle (Maybe Note)
auto_6 = noteFromSample S.auto_6__Sample

auto_7 :: Cycle (Maybe Note)
auto_7 = noteFromSample S.auto_7__Sample

auto_8 :: Cycle (Maybe Note)
auto_8 = noteFromSample S.auto_8__Sample

auto_9 :: Cycle (Maybe Note)
auto_9 = noteFromSample S.auto_9__Sample

auto_10 :: Cycle (Maybe Note)
auto_10 = noteFromSample S.auto_10__Sample

mute :: Cycle (Maybe Note)
mute = noteFromSample S.mute_0__Sample

mute_0 :: Cycle (Maybe Note)
mute_0 = noteFromSample S.mute_0__Sample

mute_1 :: Cycle (Maybe Note)
mute_1 = noteFromSample S.mute_1__Sample

mute_2 :: Cycle (Maybe Note)
mute_2 = noteFromSample S.mute_2__Sample

mute_3 :: Cycle (Maybe Note)
mute_3 = noteFromSample S.mute_3__Sample

mute_4 :: Cycle (Maybe Note)
mute_4 = noteFromSample S.mute_4__Sample

mute_5 :: Cycle (Maybe Note)
mute_5 = noteFromSample S.mute_5__Sample

mute_6 :: Cycle (Maybe Note)
mute_6 = noteFromSample S.mute_6__Sample

mute_7 :: Cycle (Maybe Note)
mute_7 = noteFromSample S.mute_7__Sample

mute_8 :: Cycle (Maybe Note)
mute_8 = noteFromSample S.mute_8__Sample

mute_9 :: Cycle (Maybe Note)
mute_9 = noteFromSample S.mute_9__Sample

mute_10 :: Cycle (Maybe Note)
mute_10 = noteFromSample S.mute_10__Sample

mute_11 :: Cycle (Maybe Note)
mute_11 = noteFromSample S.mute_11__Sample

mute_12 :: Cycle (Maybe Note)
mute_12 = noteFromSample S.mute_12__Sample

mute_13 :: Cycle (Maybe Note)
mute_13 = noteFromSample S.mute_13__Sample

mute_14 :: Cycle (Maybe Note)
mute_14 = noteFromSample S.mute_14__Sample

mute_15 :: Cycle (Maybe Note)
mute_15 = noteFromSample S.mute_15__Sample

mute_16 :: Cycle (Maybe Note)
mute_16 = noteFromSample S.mute_16__Sample

mute_17 :: Cycle (Maybe Note)
mute_17 = noteFromSample S.mute_17__Sample

mute_18 :: Cycle (Maybe Note)
mute_18 = noteFromSample S.mute_18__Sample

mute_19 :: Cycle (Maybe Note)
mute_19 = noteFromSample S.mute_19__Sample

mute_20 :: Cycle (Maybe Note)
mute_20 = noteFromSample S.mute_20__Sample

mute_21 :: Cycle (Maybe Note)
mute_21 = noteFromSample S.mute_21__Sample

mute_22 :: Cycle (Maybe Note)
mute_22 = noteFromSample S.mute_22__Sample

mute_23 :: Cycle (Maybe Note)
mute_23 = noteFromSample S.mute_23__Sample

mute_24 :: Cycle (Maybe Note)
mute_24 = noteFromSample S.mute_24__Sample

mute_25 :: Cycle (Maybe Note)
mute_25 = noteFromSample S.mute_25__Sample

mute_26 :: Cycle (Maybe Note)
mute_26 = noteFromSample S.mute_26__Sample

mute_27 :: Cycle (Maybe Note)
mute_27 = noteFromSample S.mute_27__Sample

sheffield :: Cycle (Maybe Note)
sheffield = noteFromSample S.sheffield_0__Sample

sheffield_0 :: Cycle (Maybe Note)
sheffield_0 = noteFromSample S.sheffield_0__Sample

casio :: Cycle (Maybe Note)
casio = noteFromSample S.casio_0__Sample

casio_0 :: Cycle (Maybe Note)
casio_0 = noteFromSample S.casio_0__Sample

casio_1 :: Cycle (Maybe Note)
casio_1 = noteFromSample S.casio_1__Sample

casio_2 :: Cycle (Maybe Note)
casio_2 = noteFromSample S.casio_2__Sample

sax :: Cycle (Maybe Note)
sax = noteFromSample S.sax_0__Sample

sax_0 :: Cycle (Maybe Note)
sax_0 = noteFromSample S.sax_0__Sample

sax_1 :: Cycle (Maybe Note)
sax_1 = noteFromSample S.sax_1__Sample

sax_2 :: Cycle (Maybe Note)
sax_2 = noteFromSample S.sax_2__Sample

sax_3 :: Cycle (Maybe Note)
sax_3 = noteFromSample S.sax_3__Sample

sax_4 :: Cycle (Maybe Note)
sax_4 = noteFromSample S.sax_4__Sample

sax_5 :: Cycle (Maybe Note)
sax_5 = noteFromSample S.sax_5__Sample

sax_6 :: Cycle (Maybe Note)
sax_6 = noteFromSample S.sax_6__Sample

sax_7 :: Cycle (Maybe Note)
sax_7 = noteFromSample S.sax_7__Sample

sax_8 :: Cycle (Maybe Note)
sax_8 = noteFromSample S.sax_8__Sample

sax_9 :: Cycle (Maybe Note)
sax_9 = noteFromSample S.sax_9__Sample

sax_10 :: Cycle (Maybe Note)
sax_10 = noteFromSample S.sax_10__Sample

sax_11 :: Cycle (Maybe Note)
sax_11 = noteFromSample S.sax_11__Sample

sax_12 :: Cycle (Maybe Note)
sax_12 = noteFromSample S.sax_12__Sample

sax_13 :: Cycle (Maybe Note)
sax_13 = noteFromSample S.sax_13__Sample

sax_14 :: Cycle (Maybe Note)
sax_14 = noteFromSample S.sax_14__Sample

sax_15 :: Cycle (Maybe Note)
sax_15 = noteFromSample S.sax_15__Sample

sax_16 :: Cycle (Maybe Note)
sax_16 = noteFromSample S.sax_16__Sample

sax_17 :: Cycle (Maybe Note)
sax_17 = noteFromSample S.sax_17__Sample

sax_18 :: Cycle (Maybe Note)
sax_18 = noteFromSample S.sax_18__Sample

sax_19 :: Cycle (Maybe Note)
sax_19 = noteFromSample S.sax_19__Sample

sax_20 :: Cycle (Maybe Note)
sax_20 = noteFromSample S.sax_20__Sample

sax_21 :: Cycle (Maybe Note)
sax_21 = noteFromSample S.sax_21__Sample

circus :: Cycle (Maybe Note)
circus = noteFromSample S.circus_0__Sample

circus_0 :: Cycle (Maybe Note)
circus_0 = noteFromSample S.circus_0__Sample

circus_1 :: Cycle (Maybe Note)
circus_1 = noteFromSample S.circus_1__Sample

circus_2 :: Cycle (Maybe Note)
circus_2 = noteFromSample S.circus_2__Sample

yeah :: Cycle (Maybe Note)
yeah = noteFromSample S.yeah_0__Sample

yeah_0 :: Cycle (Maybe Note)
yeah_0 = noteFromSample S.yeah_0__Sample

yeah_1 :: Cycle (Maybe Note)
yeah_1 = noteFromSample S.yeah_1__Sample

yeah_2 :: Cycle (Maybe Note)
yeah_2 = noteFromSample S.yeah_2__Sample

yeah_3 :: Cycle (Maybe Note)
yeah_3 = noteFromSample S.yeah_3__Sample

yeah_4 :: Cycle (Maybe Note)
yeah_4 = noteFromSample S.yeah_4__Sample

yeah_5 :: Cycle (Maybe Note)
yeah_5 = noteFromSample S.yeah_5__Sample

yeah_6 :: Cycle (Maybe Note)
yeah_6 = noteFromSample S.yeah_6__Sample

yeah_7 :: Cycle (Maybe Note)
yeah_7 = noteFromSample S.yeah_7__Sample

yeah_8 :: Cycle (Maybe Note)
yeah_8 = noteFromSample S.yeah_8__Sample

yeah_9 :: Cycle (Maybe Note)
yeah_9 = noteFromSample S.yeah_9__Sample

yeah_10 :: Cycle (Maybe Note)
yeah_10 = noteFromSample S.yeah_10__Sample

yeah_11 :: Cycle (Maybe Note)
yeah_11 = noteFromSample S.yeah_11__Sample

yeah_12 :: Cycle (Maybe Note)
yeah_12 = noteFromSample S.yeah_12__Sample

yeah_13 :: Cycle (Maybe Note)
yeah_13 = noteFromSample S.yeah_13__Sample

yeah_14 :: Cycle (Maybe Note)
yeah_14 = noteFromSample S.yeah_14__Sample

yeah_15 :: Cycle (Maybe Note)
yeah_15 = noteFromSample S.yeah_15__Sample

yeah_16 :: Cycle (Maybe Note)
yeah_16 = noteFromSample S.yeah_16__Sample

yeah_17 :: Cycle (Maybe Note)
yeah_17 = noteFromSample S.yeah_17__Sample

yeah_18 :: Cycle (Maybe Note)
yeah_18 = noteFromSample S.yeah_18__Sample

yeah_19 :: Cycle (Maybe Note)
yeah_19 = noteFromSample S.yeah_19__Sample

yeah_20 :: Cycle (Maybe Note)
yeah_20 = noteFromSample S.yeah_20__Sample

yeah_21 :: Cycle (Maybe Note)
yeah_21 = noteFromSample S.yeah_21__Sample

yeah_22 :: Cycle (Maybe Note)
yeah_22 = noteFromSample S.yeah_22__Sample

yeah_23 :: Cycle (Maybe Note)
yeah_23 = noteFromSample S.yeah_23__Sample

yeah_24 :: Cycle (Maybe Note)
yeah_24 = noteFromSample S.yeah_24__Sample

yeah_25 :: Cycle (Maybe Note)
yeah_25 = noteFromSample S.yeah_25__Sample

yeah_26 :: Cycle (Maybe Note)
yeah_26 = noteFromSample S.yeah_26__Sample

yeah_27 :: Cycle (Maybe Note)
yeah_27 = noteFromSample S.yeah_27__Sample

yeah_28 :: Cycle (Maybe Note)
yeah_28 = noteFromSample S.yeah_28__Sample

yeah_29 :: Cycle (Maybe Note)
yeah_29 = noteFromSample S.yeah_29__Sample

yeah_30 :: Cycle (Maybe Note)
yeah_30 = noteFromSample S.yeah_30__Sample

oc :: Cycle (Maybe Note)
oc = noteFromSample S.oc_0__Sample

oc_0 :: Cycle (Maybe Note)
oc_0 = noteFromSample S.oc_0__Sample

oc_1 :: Cycle (Maybe Note)
oc_1 = noteFromSample S.oc_1__Sample

oc_2 :: Cycle (Maybe Note)
oc_2 = noteFromSample S.oc_2__Sample

oc_3 :: Cycle (Maybe Note)
oc_3 = noteFromSample S.oc_3__Sample

alex :: Cycle (Maybe Note)
alex = noteFromSample S.alex_0__Sample

alex_0 :: Cycle (Maybe Note)
alex_0 = noteFromSample S.alex_0__Sample

alex_1 :: Cycle (Maybe Note)
alex_1 = noteFromSample S.alex_1__Sample

can :: Cycle (Maybe Note)
can = noteFromSample S.can_0__Sample

can_0 :: Cycle (Maybe Note)
can_0 = noteFromSample S.can_0__Sample

can_1 :: Cycle (Maybe Note)
can_1 = noteFromSample S.can_1__Sample

can_2 :: Cycle (Maybe Note)
can_2 = noteFromSample S.can_2__Sample

can_3 :: Cycle (Maybe Note)
can_3 = noteFromSample S.can_3__Sample

can_4 :: Cycle (Maybe Note)
can_4 = noteFromSample S.can_4__Sample

can_5 :: Cycle (Maybe Note)
can_5 = noteFromSample S.can_5__Sample

can_6 :: Cycle (Maybe Note)
can_6 = noteFromSample S.can_6__Sample

can_7 :: Cycle (Maybe Note)
can_7 = noteFromSample S.can_7__Sample

can_8 :: Cycle (Maybe Note)
can_8 = noteFromSample S.can_8__Sample

can_9 :: Cycle (Maybe Note)
can_9 = noteFromSample S.can_9__Sample

can_10 :: Cycle (Maybe Note)
can_10 = noteFromSample S.can_10__Sample

can_11 :: Cycle (Maybe Note)
can_11 = noteFromSample S.can_11__Sample

can_12 :: Cycle (Maybe Note)
can_12 = noteFromSample S.can_12__Sample

can_13 :: Cycle (Maybe Note)
can_13 = noteFromSample S.can_13__Sample

jungle :: Cycle (Maybe Note)
jungle = noteFromSample S.jungle_0__Sample

jungle_0 :: Cycle (Maybe Note)
jungle_0 = noteFromSample S.jungle_0__Sample

jungle_1 :: Cycle (Maybe Note)
jungle_1 = noteFromSample S.jungle_1__Sample

jungle_2 :: Cycle (Maybe Note)
jungle_2 = noteFromSample S.jungle_2__Sample

jungle_3 :: Cycle (Maybe Note)
jungle_3 = noteFromSample S.jungle_3__Sample

jungle_4 :: Cycle (Maybe Note)
jungle_4 = noteFromSample S.jungle_4__Sample

jungle_5 :: Cycle (Maybe Note)
jungle_5 = noteFromSample S.jungle_5__Sample

jungle_6 :: Cycle (Maybe Note)
jungle_6 = noteFromSample S.jungle_6__Sample

jungle_7 :: Cycle (Maybe Note)
jungle_7 = noteFromSample S.jungle_7__Sample

jungle_8 :: Cycle (Maybe Note)
jungle_8 = noteFromSample S.jungle_8__Sample

jungle_9 :: Cycle (Maybe Note)
jungle_9 = noteFromSample S.jungle_9__Sample

jungle_10 :: Cycle (Maybe Note)
jungle_10 = noteFromSample S.jungle_10__Sample

jungle_11 :: Cycle (Maybe Note)
jungle_11 = noteFromSample S.jungle_11__Sample

jungle_12 :: Cycle (Maybe Note)
jungle_12 = noteFromSample S.jungle_12__Sample

moog :: Cycle (Maybe Note)
moog = noteFromSample S.moog_0__Sample

moog_0 :: Cycle (Maybe Note)
moog_0 = noteFromSample S.moog_0__Sample

moog_1 :: Cycle (Maybe Note)
moog_1 = noteFromSample S.moog_1__Sample

moog_2 :: Cycle (Maybe Note)
moog_2 = noteFromSample S.moog_2__Sample

moog_3 :: Cycle (Maybe Note)
moog_3 = noteFromSample S.moog_3__Sample

moog_4 :: Cycle (Maybe Note)
moog_4 = noteFromSample S.moog_4__Sample

moog_5 :: Cycle (Maybe Note)
moog_5 = noteFromSample S.moog_5__Sample

moog_6 :: Cycle (Maybe Note)
moog_6 = noteFromSample S.moog_6__Sample

h :: Cycle (Maybe Note)
h = noteFromSample S.h_0__Sample

h_0 :: Cycle (Maybe Note)
h_0 = noteFromSample S.h_0__Sample

h_1 :: Cycle (Maybe Note)
h_1 = noteFromSample S.h_1__Sample

h_2 :: Cycle (Maybe Note)
h_2 = noteFromSample S.h_2__Sample

h_3 :: Cycle (Maybe Note)
h_3 = noteFromSample S.h_3__Sample

h_4 :: Cycle (Maybe Note)
h_4 = noteFromSample S.h_4__Sample

h_5 :: Cycle (Maybe Note)
h_5 = noteFromSample S.h_5__Sample

h_6 :: Cycle (Maybe Note)
h_6 = noteFromSample S.h_6__Sample

wind :: Cycle (Maybe Note)
wind = noteFromSample S.wind_0__Sample

wind_0 :: Cycle (Maybe Note)
wind_0 = noteFromSample S.wind_0__Sample

wind_1 :: Cycle (Maybe Note)
wind_1 = noteFromSample S.wind_1__Sample

wind_2 :: Cycle (Maybe Note)
wind_2 = noteFromSample S.wind_2__Sample

wind_3 :: Cycle (Maybe Note)
wind_3 = noteFromSample S.wind_3__Sample

wind_4 :: Cycle (Maybe Note)
wind_4 = noteFromSample S.wind_4__Sample

wind_5 :: Cycle (Maybe Note)
wind_5 = noteFromSample S.wind_5__Sample

wind_6 :: Cycle (Maybe Note)
wind_6 = noteFromSample S.wind_6__Sample

wind_7 :: Cycle (Maybe Note)
wind_7 = noteFromSample S.wind_7__Sample

wind_8 :: Cycle (Maybe Note)
wind_8 = noteFromSample S.wind_8__Sample

wind_9 :: Cycle (Maybe Note)
wind_9 = noteFromSample S.wind_9__Sample

rs :: Cycle (Maybe Note)
rs = noteFromSample S.rs_0__Sample

rs_0 :: Cycle (Maybe Note)
rs_0 = noteFromSample S.rs_0__Sample

em2 :: Cycle (Maybe Note)
em2 = noteFromSample S.em2_0__Sample

em2_0 :: Cycle (Maybe Note)
em2_0 = noteFromSample S.em2_0__Sample

em2_1 :: Cycle (Maybe Note)
em2_1 = noteFromSample S.em2_1__Sample

em2_2 :: Cycle (Maybe Note)
em2_2 = noteFromSample S.em2_2__Sample

em2_3 :: Cycle (Maybe Note)
em2_3 = noteFromSample S.em2_3__Sample

em2_4 :: Cycle (Maybe Note)
em2_4 = noteFromSample S.em2_4__Sample

em2_5 :: Cycle (Maybe Note)
em2_5 = noteFromSample S.em2_5__Sample

noise2 :: Cycle (Maybe Note)
noise2 = noteFromSample S.noise2_0__Sample

noise2_0 :: Cycle (Maybe Note)
noise2_0 = noteFromSample S.noise2_0__Sample

noise2_1 :: Cycle (Maybe Note)
noise2_1 = noteFromSample S.noise2_1__Sample

noise2_2 :: Cycle (Maybe Note)
noise2_2 = noteFromSample S.noise2_2__Sample

noise2_3 :: Cycle (Maybe Note)
noise2_3 = noteFromSample S.noise2_3__Sample

noise2_4 :: Cycle (Maybe Note)
noise2_4 = noteFromSample S.noise2_4__Sample

noise2_5 :: Cycle (Maybe Note)
noise2_5 = noteFromSample S.noise2_5__Sample

noise2_6 :: Cycle (Maybe Note)
noise2_6 = noteFromSample S.noise2_6__Sample

noise2_7 :: Cycle (Maybe Note)
noise2_7 = noteFromSample S.noise2_7__Sample

foo :: Cycle (Maybe Note)
foo = noteFromSample S.foo_0__Sample

foo_0 :: Cycle (Maybe Note)
foo_0 = noteFromSample S.foo_0__Sample

foo_1 :: Cycle (Maybe Note)
foo_1 = noteFromSample S.foo_1__Sample

foo_2 :: Cycle (Maybe Note)
foo_2 = noteFromSample S.foo_2__Sample

foo_3 :: Cycle (Maybe Note)
foo_3 = noteFromSample S.foo_3__Sample

foo_4 :: Cycle (Maybe Note)
foo_4 = noteFromSample S.foo_4__Sample

foo_5 :: Cycle (Maybe Note)
foo_5 = noteFromSample S.foo_5__Sample

foo_6 :: Cycle (Maybe Note)
foo_6 = noteFromSample S.foo_6__Sample

foo_7 :: Cycle (Maybe Note)
foo_7 = noteFromSample S.foo_7__Sample

foo_8 :: Cycle (Maybe Note)
foo_8 = noteFromSample S.foo_8__Sample

foo_9 :: Cycle (Maybe Note)
foo_9 = noteFromSample S.foo_9__Sample

foo_10 :: Cycle (Maybe Note)
foo_10 = noteFromSample S.foo_10__Sample

foo_11 :: Cycle (Maybe Note)
foo_11 = noteFromSample S.foo_11__Sample

foo_12 :: Cycle (Maybe Note)
foo_12 = noteFromSample S.foo_12__Sample

foo_13 :: Cycle (Maybe Note)
foo_13 = noteFromSample S.foo_13__Sample

foo_14 :: Cycle (Maybe Note)
foo_14 = noteFromSample S.foo_14__Sample

foo_15 :: Cycle (Maybe Note)
foo_15 = noteFromSample S.foo_15__Sample

foo_16 :: Cycle (Maybe Note)
foo_16 = noteFromSample S.foo_16__Sample

foo_17 :: Cycle (Maybe Note)
foo_17 = noteFromSample S.foo_17__Sample

foo_18 :: Cycle (Maybe Note)
foo_18 = noteFromSample S.foo_18__Sample

foo_19 :: Cycle (Maybe Note)
foo_19 = noteFromSample S.foo_19__Sample

foo_20 :: Cycle (Maybe Note)
foo_20 = noteFromSample S.foo_20__Sample

foo_21 :: Cycle (Maybe Note)
foo_21 = noteFromSample S.foo_21__Sample

foo_22 :: Cycle (Maybe Note)
foo_22 = noteFromSample S.foo_22__Sample

foo_23 :: Cycle (Maybe Note)
foo_23 = noteFromSample S.foo_23__Sample

foo_24 :: Cycle (Maybe Note)
foo_24 = noteFromSample S.foo_24__Sample

foo_25 :: Cycle (Maybe Note)
foo_25 = noteFromSample S.foo_25__Sample

foo_26 :: Cycle (Maybe Note)
foo_26 = noteFromSample S.foo_26__Sample

armora :: Cycle (Maybe Note)
armora = noteFromSample S.armora_0__Sample

armora_0 :: Cycle (Maybe Note)
armora_0 = noteFromSample S.armora_0__Sample

armora_1 :: Cycle (Maybe Note)
armora_1 = noteFromSample S.armora_1__Sample

armora_2 :: Cycle (Maybe Note)
armora_2 = noteFromSample S.armora_2__Sample

armora_3 :: Cycle (Maybe Note)
armora_3 = noteFromSample S.armora_3__Sample

armora_4 :: Cycle (Maybe Note)
armora_4 = noteFromSample S.armora_4__Sample

armora_5 :: Cycle (Maybe Note)
armora_5 = noteFromSample S.armora_5__Sample

armora_6 :: Cycle (Maybe Note)
armora_6 = noteFromSample S.armora_6__Sample

bend :: Cycle (Maybe Note)
bend = noteFromSample S.bend_0__Sample

bend_0 :: Cycle (Maybe Note)
bend_0 = noteFromSample S.bend_0__Sample

bend_1 :: Cycle (Maybe Note)
bend_1 = noteFromSample S.bend_1__Sample

bend_2 :: Cycle (Maybe Note)
bend_2 = noteFromSample S.bend_2__Sample

bend_3 :: Cycle (Maybe Note)
bend_3 = noteFromSample S.bend_3__Sample

newnotes :: Cycle (Maybe Note)
newnotes = noteFromSample S.newnotes_0__Sample

newnotes_0 :: Cycle (Maybe Note)
newnotes_0 = noteFromSample S.newnotes_0__Sample

newnotes_1 :: Cycle (Maybe Note)
newnotes_1 = noteFromSample S.newnotes_1__Sample

newnotes_2 :: Cycle (Maybe Note)
newnotes_2 = noteFromSample S.newnotes_2__Sample

newnotes_3 :: Cycle (Maybe Note)
newnotes_3 = noteFromSample S.newnotes_3__Sample

newnotes_4 :: Cycle (Maybe Note)
newnotes_4 = noteFromSample S.newnotes_4__Sample

newnotes_5 :: Cycle (Maybe Note)
newnotes_5 = noteFromSample S.newnotes_5__Sample

newnotes_6 :: Cycle (Maybe Note)
newnotes_6 = noteFromSample S.newnotes_6__Sample

newnotes_7 :: Cycle (Maybe Note)
newnotes_7 = noteFromSample S.newnotes_7__Sample

newnotes_8 :: Cycle (Maybe Note)
newnotes_8 = noteFromSample S.newnotes_8__Sample

newnotes_9 :: Cycle (Maybe Note)
newnotes_9 = noteFromSample S.newnotes_9__Sample

newnotes_10 :: Cycle (Maybe Note)
newnotes_10 = noteFromSample S.newnotes_10__Sample

newnotes_11 :: Cycle (Maybe Note)
newnotes_11 = noteFromSample S.newnotes_11__Sample

newnotes_12 :: Cycle (Maybe Note)
newnotes_12 = noteFromSample S.newnotes_12__Sample

newnotes_13 :: Cycle (Maybe Note)
newnotes_13 = noteFromSample S.newnotes_13__Sample

newnotes_14 :: Cycle (Maybe Note)
newnotes_14 = noteFromSample S.newnotes_14__Sample

pebbles :: Cycle (Maybe Note)
pebbles = noteFromSample S.pebbles_0__Sample

pebbles_0 :: Cycle (Maybe Note)
pebbles_0 = noteFromSample S.pebbles_0__Sample

mash2 :: Cycle (Maybe Note)
mash2 = noteFromSample S.mash2_0__Sample

mash2_0 :: Cycle (Maybe Note)
mash2_0 = noteFromSample S.mash2_0__Sample

mash2_1 :: Cycle (Maybe Note)
mash2_1 = noteFromSample S.mash2_1__Sample

mash2_2 :: Cycle (Maybe Note)
mash2_2 = noteFromSample S.mash2_2__Sample

mash2_3 :: Cycle (Maybe Note)
mash2_3 = noteFromSample S.mash2_3__Sample

diphone2 :: Cycle (Maybe Note)
diphone2 = noteFromSample S.diphone2_0__Sample

diphone2_0 :: Cycle (Maybe Note)
diphone2_0 = noteFromSample S.diphone2_0__Sample

diphone2_1 :: Cycle (Maybe Note)
diphone2_1 = noteFromSample S.diphone2_1__Sample

diphone2_2 :: Cycle (Maybe Note)
diphone2_2 = noteFromSample S.diphone2_2__Sample

diphone2_3 :: Cycle (Maybe Note)
diphone2_3 = noteFromSample S.diphone2_3__Sample

diphone2_4 :: Cycle (Maybe Note)
diphone2_4 = noteFromSample S.diphone2_4__Sample

diphone2_5 :: Cycle (Maybe Note)
diphone2_5 = noteFromSample S.diphone2_5__Sample

diphone2_6 :: Cycle (Maybe Note)
diphone2_6 = noteFromSample S.diphone2_6__Sample

diphone2_7 :: Cycle (Maybe Note)
diphone2_7 = noteFromSample S.diphone2_7__Sample

diphone2_8 :: Cycle (Maybe Note)
diphone2_8 = noteFromSample S.diphone2_8__Sample

diphone2_9 :: Cycle (Maybe Note)
diphone2_9 = noteFromSample S.diphone2_9__Sample

diphone2_10 :: Cycle (Maybe Note)
diphone2_10 = noteFromSample S.diphone2_10__Sample

diphone2_11 :: Cycle (Maybe Note)
diphone2_11 = noteFromSample S.diphone2_11__Sample

e :: Cycle (Maybe Note)
e = noteFromSample S.e_0__Sample

e_0 :: Cycle (Maybe Note)
e_0 = noteFromSample S.e_0__Sample

e_1 :: Cycle (Maybe Note)
e_1 = noteFromSample S.e_1__Sample

e_2 :: Cycle (Maybe Note)
e_2 = noteFromSample S.e_2__Sample

e_3 :: Cycle (Maybe Note)
e_3 = noteFromSample S.e_3__Sample

e_4 :: Cycle (Maybe Note)
e_4 = noteFromSample S.e_4__Sample

e_5 :: Cycle (Maybe Note)
e_5 = noteFromSample S.e_5__Sample

e_6 :: Cycle (Maybe Note)
e_6 = noteFromSample S.e_6__Sample

e_7 :: Cycle (Maybe Note)
e_7 = noteFromSample S.e_7__Sample

bubble :: Cycle (Maybe Note)
bubble = noteFromSample S.bubble_0__Sample

bubble_0 :: Cycle (Maybe Note)
bubble_0 = noteFromSample S.bubble_0__Sample

bubble_1 :: Cycle (Maybe Note)
bubble_1 = noteFromSample S.bubble_1__Sample

bubble_2 :: Cycle (Maybe Note)
bubble_2 = noteFromSample S.bubble_2__Sample

bubble_3 :: Cycle (Maybe Note)
bubble_3 = noteFromSample S.bubble_3__Sample

bubble_4 :: Cycle (Maybe Note)
bubble_4 = noteFromSample S.bubble_4__Sample

bubble_5 :: Cycle (Maybe Note)
bubble_5 = noteFromSample S.bubble_5__Sample

bubble_6 :: Cycle (Maybe Note)
bubble_6 = noteFromSample S.bubble_6__Sample

bubble_7 :: Cycle (Maybe Note)
bubble_7 = noteFromSample S.bubble_7__Sample

insect :: Cycle (Maybe Note)
insect = noteFromSample S.insect_0__Sample

insect_0 :: Cycle (Maybe Note)
insect_0 = noteFromSample S.insect_0__Sample

insect_1 :: Cycle (Maybe Note)
insect_1 = noteFromSample S.insect_1__Sample

insect_2 :: Cycle (Maybe Note)
insect_2 = noteFromSample S.insect_2__Sample

ade :: Cycle (Maybe Note)
ade = noteFromSample S.ade_0__Sample

ade_0 :: Cycle (Maybe Note)
ade_0 = noteFromSample S.ade_0__Sample

ade_1 :: Cycle (Maybe Note)
ade_1 = noteFromSample S.ade_1__Sample

ade_2 :: Cycle (Maybe Note)
ade_2 = noteFromSample S.ade_2__Sample

ade_3 :: Cycle (Maybe Note)
ade_3 = noteFromSample S.ade_3__Sample

ade_4 :: Cycle (Maybe Note)
ade_4 = noteFromSample S.ade_4__Sample

ade_5 :: Cycle (Maybe Note)
ade_5 = noteFromSample S.ade_5__Sample

ade_6 :: Cycle (Maybe Note)
ade_6 = noteFromSample S.ade_6__Sample

ade_7 :: Cycle (Maybe Note)
ade_7 = noteFromSample S.ade_7__Sample

ade_8 :: Cycle (Maybe Note)
ade_8 = noteFromSample S.ade_8__Sample

ade_9 :: Cycle (Maybe Note)
ade_9 = noteFromSample S.ade_9__Sample

glitch :: Cycle (Maybe Note)
glitch = noteFromSample S.glitch_0__Sample

glitch_0 :: Cycle (Maybe Note)
glitch_0 = noteFromSample S.glitch_0__Sample

glitch_1 :: Cycle (Maybe Note)
glitch_1 = noteFromSample S.glitch_1__Sample

glitch_2 :: Cycle (Maybe Note)
glitch_2 = noteFromSample S.glitch_2__Sample

glitch_3 :: Cycle (Maybe Note)
glitch_3 = noteFromSample S.glitch_3__Sample

glitch_4 :: Cycle (Maybe Note)
glitch_4 = noteFromSample S.glitch_4__Sample

glitch_5 :: Cycle (Maybe Note)
glitch_5 = noteFromSample S.glitch_5__Sample

glitch_6 :: Cycle (Maybe Note)
glitch_6 = noteFromSample S.glitch_6__Sample

glitch_7 :: Cycle (Maybe Note)
glitch_7 = noteFromSample S.glitch_7__Sample

haw :: Cycle (Maybe Note)
haw = noteFromSample S.haw_0__Sample

haw_0 :: Cycle (Maybe Note)
haw_0 = noteFromSample S.haw_0__Sample

haw_1 :: Cycle (Maybe Note)
haw_1 = noteFromSample S.haw_1__Sample

haw_2 :: Cycle (Maybe Note)
haw_2 = noteFromSample S.haw_2__Sample

haw_3 :: Cycle (Maybe Note)
haw_3 = noteFromSample S.haw_3__Sample

haw_4 :: Cycle (Maybe Note)
haw_4 = noteFromSample S.haw_4__Sample

haw_5 :: Cycle (Maybe Note)
haw_5 = noteFromSample S.haw_5__Sample

popkick :: Cycle (Maybe Note)
popkick = noteFromSample S.popkick_0__Sample

popkick_0 :: Cycle (Maybe Note)
popkick_0 = noteFromSample S.popkick_0__Sample

popkick_1 :: Cycle (Maybe Note)
popkick_1 = noteFromSample S.popkick_1__Sample

popkick_2 :: Cycle (Maybe Note)
popkick_2 = noteFromSample S.popkick_2__Sample

popkick_3 :: Cycle (Maybe Note)
popkick_3 = noteFromSample S.popkick_3__Sample

popkick_4 :: Cycle (Maybe Note)
popkick_4 = noteFromSample S.popkick_4__Sample

popkick_5 :: Cycle (Maybe Note)
popkick_5 = noteFromSample S.popkick_5__Sample

popkick_6 :: Cycle (Maybe Note)
popkick_6 = noteFromSample S.popkick_6__Sample

popkick_7 :: Cycle (Maybe Note)
popkick_7 = noteFromSample S.popkick_7__Sample

popkick_8 :: Cycle (Maybe Note)
popkick_8 = noteFromSample S.popkick_8__Sample

popkick_9 :: Cycle (Maybe Note)
popkick_9 = noteFromSample S.popkick_9__Sample

breaks157 :: Cycle (Maybe Note)
breaks157 = noteFromSample S.breaks157_0__Sample

breaks157_0 :: Cycle (Maybe Note)
breaks157_0 = noteFromSample S.breaks157_0__Sample

gtr :: Cycle (Maybe Note)
gtr = noteFromSample S.gtr_0__Sample

gtr_0 :: Cycle (Maybe Note)
gtr_0 = noteFromSample S.gtr_0__Sample

gtr_1 :: Cycle (Maybe Note)
gtr_1 = noteFromSample S.gtr_1__Sample

gtr_2 :: Cycle (Maybe Note)
gtr_2 = noteFromSample S.gtr_2__Sample

clubkick :: Cycle (Maybe Note)
clubkick = noteFromSample S.clubkick_0__Sample

clubkick_0 :: Cycle (Maybe Note)
clubkick_0 = noteFromSample S.clubkick_0__Sample

clubkick_1 :: Cycle (Maybe Note)
clubkick_1 = noteFromSample S.clubkick_1__Sample

clubkick_2 :: Cycle (Maybe Note)
clubkick_2 = noteFromSample S.clubkick_2__Sample

clubkick_3 :: Cycle (Maybe Note)
clubkick_3 = noteFromSample S.clubkick_3__Sample

clubkick_4 :: Cycle (Maybe Note)
clubkick_4 = noteFromSample S.clubkick_4__Sample

breaks152 :: Cycle (Maybe Note)
breaks152 = noteFromSample S.breaks152_0__Sample

breaks152_0 :: Cycle (Maybe Note)
breaks152_0 = noteFromSample S.breaks152_0__Sample

x_808bd :: Cycle (Maybe Note)
x_808bd = noteFromSample S.x_808bd_0__Sample

x_808bd_0 :: Cycle (Maybe Note)
x_808bd_0 = noteFromSample S.x_808bd_0__Sample

x_808bd_1 :: Cycle (Maybe Note)
x_808bd_1 = noteFromSample S.x_808bd_1__Sample

x_808bd_2 :: Cycle (Maybe Note)
x_808bd_2 = noteFromSample S.x_808bd_2__Sample

x_808bd_3 :: Cycle (Maybe Note)
x_808bd_3 = noteFromSample S.x_808bd_3__Sample

x_808bd_4 :: Cycle (Maybe Note)
x_808bd_4 = noteFromSample S.x_808bd_4__Sample

x_808bd_5 :: Cycle (Maybe Note)
x_808bd_5 = noteFromSample S.x_808bd_5__Sample

x_808bd_6 :: Cycle (Maybe Note)
x_808bd_6 = noteFromSample S.x_808bd_6__Sample

x_808bd_7 :: Cycle (Maybe Note)
x_808bd_7 = noteFromSample S.x_808bd_7__Sample

x_808bd_8 :: Cycle (Maybe Note)
x_808bd_8 = noteFromSample S.x_808bd_8__Sample

x_808bd_9 :: Cycle (Maybe Note)
x_808bd_9 = noteFromSample S.x_808bd_9__Sample

x_808bd_10 :: Cycle (Maybe Note)
x_808bd_10 = noteFromSample S.x_808bd_10__Sample

x_808bd_11 :: Cycle (Maybe Note)
x_808bd_11 = noteFromSample S.x_808bd_11__Sample

x_808bd_12 :: Cycle (Maybe Note)
x_808bd_12 = noteFromSample S.x_808bd_12__Sample

x_808bd_13 :: Cycle (Maybe Note)
x_808bd_13 = noteFromSample S.x_808bd_13__Sample

x_808bd_14 :: Cycle (Maybe Note)
x_808bd_14 = noteFromSample S.x_808bd_14__Sample

x_808bd_15 :: Cycle (Maybe Note)
x_808bd_15 = noteFromSample S.x_808bd_15__Sample

x_808bd_16 :: Cycle (Maybe Note)
x_808bd_16 = noteFromSample S.x_808bd_16__Sample

x_808bd_17 :: Cycle (Maybe Note)
x_808bd_17 = noteFromSample S.x_808bd_17__Sample

x_808bd_18 :: Cycle (Maybe Note)
x_808bd_18 = noteFromSample S.x_808bd_18__Sample

x_808bd_19 :: Cycle (Maybe Note)
x_808bd_19 = noteFromSample S.x_808bd_19__Sample

x_808bd_20 :: Cycle (Maybe Note)
x_808bd_20 = noteFromSample S.x_808bd_20__Sample

x_808bd_21 :: Cycle (Maybe Note)
x_808bd_21 = noteFromSample S.x_808bd_21__Sample

x_808bd_22 :: Cycle (Maybe Note)
x_808bd_22 = noteFromSample S.x_808bd_22__Sample

x_808bd_23 :: Cycle (Maybe Note)
x_808bd_23 = noteFromSample S.x_808bd_23__Sample

x_808bd_24 :: Cycle (Maybe Note)
x_808bd_24 = noteFromSample S.x_808bd_24__Sample

miniyeah :: Cycle (Maybe Note)
miniyeah = noteFromSample S.miniyeah_0__Sample

miniyeah_0 :: Cycle (Maybe Note)
miniyeah_0 = noteFromSample S.miniyeah_0__Sample

miniyeah_1 :: Cycle (Maybe Note)
miniyeah_1 = noteFromSample S.miniyeah_1__Sample

miniyeah_2 :: Cycle (Maybe Note)
miniyeah_2 = noteFromSample S.miniyeah_2__Sample

miniyeah_3 :: Cycle (Maybe Note)
miniyeah_3 = noteFromSample S.miniyeah_3__Sample

iff :: Cycle (Maybe Note)
iff = noteFromSample S.if_0__Sample

if_0 :: Cycle (Maybe Note)
if_0 = noteFromSample S.if_0__Sample

if_1 :: Cycle (Maybe Note)
if_1 = noteFromSample S.if_1__Sample

if_2 :: Cycle (Maybe Note)
if_2 = noteFromSample S.if_2__Sample

if_3 :: Cycle (Maybe Note)
if_3 = noteFromSample S.if_3__Sample

if_4 :: Cycle (Maybe Note)
if_4 = noteFromSample S.if_4__Sample

x_808oh :: Cycle (Maybe Note)
x_808oh = noteFromSample S.x_808oh_0__Sample

x_808oh_0 :: Cycle (Maybe Note)
x_808oh_0 = noteFromSample S.x_808oh_0__Sample

x_808oh_1 :: Cycle (Maybe Note)
x_808oh_1 = noteFromSample S.x_808oh_1__Sample

x_808oh_2 :: Cycle (Maybe Note)
x_808oh_2 = noteFromSample S.x_808oh_2__Sample

x_808oh_3 :: Cycle (Maybe Note)
x_808oh_3 = noteFromSample S.x_808oh_3__Sample

x_808oh_4 :: Cycle (Maybe Note)
x_808oh_4 = noteFromSample S.x_808oh_4__Sample

house :: Cycle (Maybe Note)
house = noteFromSample S.house_0__Sample

house_0 :: Cycle (Maybe Note)
house_0 = noteFromSample S.house_0__Sample

house_1 :: Cycle (Maybe Note)
house_1 = noteFromSample S.house_1__Sample

house_2 :: Cycle (Maybe Note)
house_2 = noteFromSample S.house_2__Sample

house_3 :: Cycle (Maybe Note)
house_3 = noteFromSample S.house_3__Sample

house_4 :: Cycle (Maybe Note)
house_4 = noteFromSample S.house_4__Sample

house_5 :: Cycle (Maybe Note)
house_5 = noteFromSample S.house_5__Sample

house_6 :: Cycle (Maybe Note)
house_6 = noteFromSample S.house_6__Sample

house_7 :: Cycle (Maybe Note)
house_7 = noteFromSample S.house_7__Sample

dr :: Cycle (Maybe Note)
dr = noteFromSample S.dr_0__Sample

dr_0 :: Cycle (Maybe Note)
dr_0 = noteFromSample S.dr_0__Sample

dr_1 :: Cycle (Maybe Note)
dr_1 = noteFromSample S.dr_1__Sample

dr_2 :: Cycle (Maybe Note)
dr_2 = noteFromSample S.dr_2__Sample

dr_3 :: Cycle (Maybe Note)
dr_3 = noteFromSample S.dr_3__Sample

dr_4 :: Cycle (Maybe Note)
dr_4 = noteFromSample S.dr_4__Sample

dr_5 :: Cycle (Maybe Note)
dr_5 = noteFromSample S.dr_5__Sample

dr_6 :: Cycle (Maybe Note)
dr_6 = noteFromSample S.dr_6__Sample

dr_7 :: Cycle (Maybe Note)
dr_7 = noteFromSample S.dr_7__Sample

dr_8 :: Cycle (Maybe Note)
dr_8 = noteFromSample S.dr_8__Sample

dr_9 :: Cycle (Maybe Note)
dr_9 = noteFromSample S.dr_9__Sample

dr_10 :: Cycle (Maybe Note)
dr_10 = noteFromSample S.dr_10__Sample

dr_11 :: Cycle (Maybe Note)
dr_11 = noteFromSample S.dr_11__Sample

dr_12 :: Cycle (Maybe Note)
dr_12 = noteFromSample S.dr_12__Sample

dr_13 :: Cycle (Maybe Note)
dr_13 = noteFromSample S.dr_13__Sample

dr_14 :: Cycle (Maybe Note)
dr_14 = noteFromSample S.dr_14__Sample

dr_15 :: Cycle (Maybe Note)
dr_15 = noteFromSample S.dr_15__Sample

dr_16 :: Cycle (Maybe Note)
dr_16 = noteFromSample S.dr_16__Sample

dr_17 :: Cycle (Maybe Note)
dr_17 = noteFromSample S.dr_17__Sample

dr_18 :: Cycle (Maybe Note)
dr_18 = noteFromSample S.dr_18__Sample

dr_19 :: Cycle (Maybe Note)
dr_19 = noteFromSample S.dr_19__Sample

dr_20 :: Cycle (Maybe Note)
dr_20 = noteFromSample S.dr_20__Sample

dr_21 :: Cycle (Maybe Note)
dr_21 = noteFromSample S.dr_21__Sample

dr_22 :: Cycle (Maybe Note)
dr_22 = noteFromSample S.dr_22__Sample

dr_23 :: Cycle (Maybe Note)
dr_23 = noteFromSample S.dr_23__Sample

dr_24 :: Cycle (Maybe Note)
dr_24 = noteFromSample S.dr_24__Sample

dr_25 :: Cycle (Maybe Note)
dr_25 = noteFromSample S.dr_25__Sample

dr_26 :: Cycle (Maybe Note)
dr_26 = noteFromSample S.dr_26__Sample

dr_27 :: Cycle (Maybe Note)
dr_27 = noteFromSample S.dr_27__Sample

dr_28 :: Cycle (Maybe Note)
dr_28 = noteFromSample S.dr_28__Sample

dr_29 :: Cycle (Maybe Note)
dr_29 = noteFromSample S.dr_29__Sample

dr_30 :: Cycle (Maybe Note)
dr_30 = noteFromSample S.dr_30__Sample

dr_31 :: Cycle (Maybe Note)
dr_31 = noteFromSample S.dr_31__Sample

dr_32 :: Cycle (Maybe Note)
dr_32 = noteFromSample S.dr_32__Sample

dr_33 :: Cycle (Maybe Note)
dr_33 = noteFromSample S.dr_33__Sample

dr_34 :: Cycle (Maybe Note)
dr_34 = noteFromSample S.dr_34__Sample

dr_35 :: Cycle (Maybe Note)
dr_35 = noteFromSample S.dr_35__Sample

dr_36 :: Cycle (Maybe Note)
dr_36 = noteFromSample S.dr_36__Sample

dr_37 :: Cycle (Maybe Note)
dr_37 = noteFromSample S.dr_37__Sample

dr_38 :: Cycle (Maybe Note)
dr_38 = noteFromSample S.dr_38__Sample

dr_39 :: Cycle (Maybe Note)
dr_39 = noteFromSample S.dr_39__Sample

dr_40 :: Cycle (Maybe Note)
dr_40 = noteFromSample S.dr_40__Sample

dr_41 :: Cycle (Maybe Note)
dr_41 = noteFromSample S.dr_41__Sample

dr55 :: Cycle (Maybe Note)
dr55 = noteFromSample S.dr55_0__Sample

dr55_0 :: Cycle (Maybe Note)
dr55_0 = noteFromSample S.dr55_0__Sample

dr55_1 :: Cycle (Maybe Note)
dr55_1 = noteFromSample S.dr55_1__Sample

dr55_2 :: Cycle (Maybe Note)
dr55_2 = noteFromSample S.dr55_2__Sample

dr55_3 :: Cycle (Maybe Note)
dr55_3 = noteFromSample S.dr55_3__Sample

bass :: Cycle (Maybe Note)
bass = noteFromSample S.bass_0__Sample

bass_0 :: Cycle (Maybe Note)
bass_0 = noteFromSample S.bass_0__Sample

bass_1 :: Cycle (Maybe Note)
bass_1 = noteFromSample S.bass_1__Sample

bass_2 :: Cycle (Maybe Note)
bass_2 = noteFromSample S.bass_2__Sample

bass_3 :: Cycle (Maybe Note)
bass_3 = noteFromSample S.bass_3__Sample

ho :: Cycle (Maybe Note)
ho = noteFromSample S.ho_0__Sample

ho_0 :: Cycle (Maybe Note)
ho_0 = noteFromSample S.ho_0__Sample

ho_1 :: Cycle (Maybe Note)
ho_1 = noteFromSample S.ho_1__Sample

ho_2 :: Cycle (Maybe Note)
ho_2 = noteFromSample S.ho_2__Sample

ho_3 :: Cycle (Maybe Note)
ho_3 = noteFromSample S.ho_3__Sample

ho_4 :: Cycle (Maybe Note)
ho_4 = noteFromSample S.ho_4__Sample

ho_5 :: Cycle (Maybe Note)
ho_5 = noteFromSample S.ho_5__Sample

hardkick :: Cycle (Maybe Note)
hardkick = noteFromSample S.hardkick_0__Sample

hardkick_0 :: Cycle (Maybe Note)
hardkick_0 = noteFromSample S.hardkick_0__Sample

hardkick_1 :: Cycle (Maybe Note)
hardkick_1 = noteFromSample S.hardkick_1__Sample

hardkick_2 :: Cycle (Maybe Note)
hardkick_2 = noteFromSample S.hardkick_2__Sample

hardkick_3 :: Cycle (Maybe Note)
hardkick_3 = noteFromSample S.hardkick_3__Sample

hardkick_4 :: Cycle (Maybe Note)
hardkick_4 = noteFromSample S.hardkick_4__Sample

hardkick_5 :: Cycle (Maybe Note)
hardkick_5 = noteFromSample S.hardkick_5__Sample

x_808hc :: Cycle (Maybe Note)
x_808hc = noteFromSample S.x_808hc_0__Sample

x_808hc_0 :: Cycle (Maybe Note)
x_808hc_0 = noteFromSample S.x_808hc_0__Sample

x_808hc_1 :: Cycle (Maybe Note)
x_808hc_1 = noteFromSample S.x_808hc_1__Sample

x_808hc_2 :: Cycle (Maybe Note)
x_808hc_2 = noteFromSample S.x_808hc_2__Sample

x_808hc_3 :: Cycle (Maybe Note)
x_808hc_3 = noteFromSample S.x_808hc_3__Sample

x_808hc_4 :: Cycle (Maybe Note)
x_808hc_4 = noteFromSample S.x_808hc_4__Sample

hit :: Cycle (Maybe Note)
hit = noteFromSample S.hit_0__Sample

hit_0 :: Cycle (Maybe Note)
hit_0 = noteFromSample S.hit_0__Sample

hit_1 :: Cycle (Maybe Note)
hit_1 = noteFromSample S.hit_1__Sample

hit_2 :: Cycle (Maybe Note)
hit_2 = noteFromSample S.hit_2__Sample

hit_3 :: Cycle (Maybe Note)
hit_3 = noteFromSample S.hit_3__Sample

hit_4 :: Cycle (Maybe Note)
hit_4 = noteFromSample S.hit_4__Sample

hit_5 :: Cycle (Maybe Note)
hit_5 = noteFromSample S.hit_5__Sample

breaks165 :: Cycle (Maybe Note)
breaks165 = noteFromSample S.breaks165_0__Sample

breaks165_0 :: Cycle (Maybe Note)
breaks165_0 = noteFromSample S.breaks165_0__Sample

dr2 :: Cycle (Maybe Note)
dr2 = noteFromSample S.dr2_0__Sample

dr2_0 :: Cycle (Maybe Note)
dr2_0 = noteFromSample S.dr2_0__Sample

dr2_1 :: Cycle (Maybe Note)
dr2_1 = noteFromSample S.dr2_1__Sample

dr2_2 :: Cycle (Maybe Note)
dr2_2 = noteFromSample S.dr2_2__Sample

dr2_3 :: Cycle (Maybe Note)
dr2_3 = noteFromSample S.dr2_3__Sample

dr2_4 :: Cycle (Maybe Note)
dr2_4 = noteFromSample S.dr2_4__Sample

dr2_5 :: Cycle (Maybe Note)
dr2_5 = noteFromSample S.dr2_5__Sample

tabla :: Cycle (Maybe Note)
tabla = noteFromSample S.tabla_0__Sample

tabla_0 :: Cycle (Maybe Note)
tabla_0 = noteFromSample S.tabla_0__Sample

tabla_1 :: Cycle (Maybe Note)
tabla_1 = noteFromSample S.tabla_1__Sample

tabla_2 :: Cycle (Maybe Note)
tabla_2 = noteFromSample S.tabla_2__Sample

tabla_3 :: Cycle (Maybe Note)
tabla_3 = noteFromSample S.tabla_3__Sample

tabla_4 :: Cycle (Maybe Note)
tabla_4 = noteFromSample S.tabla_4__Sample

tabla_5 :: Cycle (Maybe Note)
tabla_5 = noteFromSample S.tabla_5__Sample

tabla_6 :: Cycle (Maybe Note)
tabla_6 = noteFromSample S.tabla_6__Sample

tabla_7 :: Cycle (Maybe Note)
tabla_7 = noteFromSample S.tabla_7__Sample

tabla_8 :: Cycle (Maybe Note)
tabla_8 = noteFromSample S.tabla_8__Sample

tabla_9 :: Cycle (Maybe Note)
tabla_9 = noteFromSample S.tabla_9__Sample

tabla_10 :: Cycle (Maybe Note)
tabla_10 = noteFromSample S.tabla_10__Sample

tabla_11 :: Cycle (Maybe Note)
tabla_11 = noteFromSample S.tabla_11__Sample

tabla_12 :: Cycle (Maybe Note)
tabla_12 = noteFromSample S.tabla_12__Sample

tabla_13 :: Cycle (Maybe Note)
tabla_13 = noteFromSample S.tabla_13__Sample

tabla_14 :: Cycle (Maybe Note)
tabla_14 = noteFromSample S.tabla_14__Sample

tabla_15 :: Cycle (Maybe Note)
tabla_15 = noteFromSample S.tabla_15__Sample

tabla_16 :: Cycle (Maybe Note)
tabla_16 = noteFromSample S.tabla_16__Sample

tabla_17 :: Cycle (Maybe Note)
tabla_17 = noteFromSample S.tabla_17__Sample

tabla_18 :: Cycle (Maybe Note)
tabla_18 = noteFromSample S.tabla_18__Sample

tabla_19 :: Cycle (Maybe Note)
tabla_19 = noteFromSample S.tabla_19__Sample

tabla_20 :: Cycle (Maybe Note)
tabla_20 = noteFromSample S.tabla_20__Sample

tabla_21 :: Cycle (Maybe Note)
tabla_21 = noteFromSample S.tabla_21__Sample

tabla_22 :: Cycle (Maybe Note)
tabla_22 = noteFromSample S.tabla_22__Sample

tabla_23 :: Cycle (Maybe Note)
tabla_23 = noteFromSample S.tabla_23__Sample

tabla_24 :: Cycle (Maybe Note)
tabla_24 = noteFromSample S.tabla_24__Sample

tabla_25 :: Cycle (Maybe Note)
tabla_25 = noteFromSample S.tabla_25__Sample

dork2 :: Cycle (Maybe Note)
dork2 = noteFromSample S.dork2_0__Sample

dork2_0 :: Cycle (Maybe Note)
dork2_0 = noteFromSample S.dork2_0__Sample

dork2_1 :: Cycle (Maybe Note)
dork2_1 = noteFromSample S.dork2_1__Sample

dork2_2 :: Cycle (Maybe Note)
dork2_2 = noteFromSample S.dork2_2__Sample

dork2_3 :: Cycle (Maybe Note)
dork2_3 = noteFromSample S.dork2_3__Sample

hc :: Cycle (Maybe Note)
hc = noteFromSample S.hc_0__Sample

hc_0 :: Cycle (Maybe Note)
hc_0 = noteFromSample S.hc_0__Sample

hc_1 :: Cycle (Maybe Note)
hc_1 = noteFromSample S.hc_1__Sample

hc_2 :: Cycle (Maybe Note)
hc_2 = noteFromSample S.hc_2__Sample

hc_3 :: Cycle (Maybe Note)
hc_3 = noteFromSample S.hc_3__Sample

hc_4 :: Cycle (Maybe Note)
hc_4 = noteFromSample S.hc_4__Sample

hc_5 :: Cycle (Maybe Note)
hc_5 = noteFromSample S.hc_5__Sample

bassfoo :: Cycle (Maybe Note)
bassfoo = noteFromSample S.bassfoo_0__Sample

bassfoo_0 :: Cycle (Maybe Note)
bassfoo_0 = noteFromSample S.bassfoo_0__Sample

bassfoo_1 :: Cycle (Maybe Note)
bassfoo_1 = noteFromSample S.bassfoo_1__Sample

bassfoo_2 :: Cycle (Maybe Note)
bassfoo_2 = noteFromSample S.bassfoo_2__Sample

seawolf :: Cycle (Maybe Note)
seawolf = noteFromSample S.seawolf_0__Sample

seawolf_0 :: Cycle (Maybe Note)
seawolf_0 = noteFromSample S.seawolf_0__Sample

seawolf_1 :: Cycle (Maybe Note)
seawolf_1 = noteFromSample S.seawolf_1__Sample

seawolf_2 :: Cycle (Maybe Note)
seawolf_2 = noteFromSample S.seawolf_2__Sample

cp :: Cycle (Maybe Note)
cp = noteFromSample S.cp_0__Sample

cp_0 :: Cycle (Maybe Note)
cp_0 = noteFromSample S.cp_0__Sample

cp_1 :: Cycle (Maybe Note)
cp_1 = noteFromSample S.cp_1__Sample

jazz :: Cycle (Maybe Note)
jazz = noteFromSample S.jazz_0__Sample

jazz_0 :: Cycle (Maybe Note)
jazz_0 = noteFromSample S.jazz_0__Sample

jazz_1 :: Cycle (Maybe Note)
jazz_1 = noteFromSample S.jazz_1__Sample

jazz_2 :: Cycle (Maybe Note)
jazz_2 = noteFromSample S.jazz_2__Sample

jazz_3 :: Cycle (Maybe Note)
jazz_3 = noteFromSample S.jazz_3__Sample

jazz_4 :: Cycle (Maybe Note)
jazz_4 = noteFromSample S.jazz_4__Sample

jazz_5 :: Cycle (Maybe Note)
jazz_5 = noteFromSample S.jazz_5__Sample

jazz_6 :: Cycle (Maybe Note)
jazz_6 = noteFromSample S.jazz_6__Sample

jazz_7 :: Cycle (Maybe Note)
jazz_7 = noteFromSample S.jazz_7__Sample

juno :: Cycle (Maybe Note)
juno = noteFromSample S.juno_0__Sample

juno_0 :: Cycle (Maybe Note)
juno_0 = noteFromSample S.juno_0__Sample

juno_1 :: Cycle (Maybe Note)
juno_1 = noteFromSample S.juno_1__Sample

juno_2 :: Cycle (Maybe Note)
juno_2 = noteFromSample S.juno_2__Sample

juno_3 :: Cycle (Maybe Note)
juno_3 = noteFromSample S.juno_3__Sample

juno_4 :: Cycle (Maybe Note)
juno_4 = noteFromSample S.juno_4__Sample

juno_5 :: Cycle (Maybe Note)
juno_5 = noteFromSample S.juno_5__Sample

juno_6 :: Cycle (Maybe Note)
juno_6 = noteFromSample S.juno_6__Sample

juno_7 :: Cycle (Maybe Note)
juno_7 = noteFromSample S.juno_7__Sample

juno_8 :: Cycle (Maybe Note)
juno_8 = noteFromSample S.juno_8__Sample

juno_9 :: Cycle (Maybe Note)
juno_9 = noteFromSample S.juno_9__Sample

juno_10 :: Cycle (Maybe Note)
juno_10 = noteFromSample S.juno_10__Sample

juno_11 :: Cycle (Maybe Note)
juno_11 = noteFromSample S.juno_11__Sample

birds :: Cycle (Maybe Note)
birds = noteFromSample S.birds_0__Sample

birds_0 :: Cycle (Maybe Note)
birds_0 = noteFromSample S.birds_0__Sample

birds_1 :: Cycle (Maybe Note)
birds_1 = noteFromSample S.birds_1__Sample

birds_2 :: Cycle (Maybe Note)
birds_2 = noteFromSample S.birds_2__Sample

birds_3 :: Cycle (Maybe Note)
birds_3 = noteFromSample S.birds_3__Sample

birds_4 :: Cycle (Maybe Note)
birds_4 = noteFromSample S.birds_4__Sample

birds_5 :: Cycle (Maybe Note)
birds_5 = noteFromSample S.birds_5__Sample

birds_6 :: Cycle (Maybe Note)
birds_6 = noteFromSample S.birds_6__Sample

birds_7 :: Cycle (Maybe Note)
birds_7 = noteFromSample S.birds_7__Sample

birds_8 :: Cycle (Maybe Note)
birds_8 = noteFromSample S.birds_8__Sample

birds_9 :: Cycle (Maybe Note)
birds_9 = noteFromSample S.birds_9__Sample

glasstap :: Cycle (Maybe Note)
glasstap = noteFromSample S.glasstap_0__Sample

glasstap_0 :: Cycle (Maybe Note)
glasstap_0 = noteFromSample S.glasstap_0__Sample

glasstap_1 :: Cycle (Maybe Note)
glasstap_1 = noteFromSample S.glasstap_1__Sample

glasstap_2 :: Cycle (Maybe Note)
glasstap_2 = noteFromSample S.glasstap_2__Sample

bass1 :: Cycle (Maybe Note)
bass1 = noteFromSample S.bass1_0__Sample

bass1_0 :: Cycle (Maybe Note)
bass1_0 = noteFromSample S.bass1_0__Sample

bass1_1 :: Cycle (Maybe Note)
bass1_1 = noteFromSample S.bass1_1__Sample

bass1_2 :: Cycle (Maybe Note)
bass1_2 = noteFromSample S.bass1_2__Sample

bass1_3 :: Cycle (Maybe Note)
bass1_3 = noteFromSample S.bass1_3__Sample

bass1_4 :: Cycle (Maybe Note)
bass1_4 = noteFromSample S.bass1_4__Sample

bass1_5 :: Cycle (Maybe Note)
bass1_5 = noteFromSample S.bass1_5__Sample

bass1_6 :: Cycle (Maybe Note)
bass1_6 = noteFromSample S.bass1_6__Sample

bass1_7 :: Cycle (Maybe Note)
bass1_7 = noteFromSample S.bass1_7__Sample

bass1_8 :: Cycle (Maybe Note)
bass1_8 = noteFromSample S.bass1_8__Sample

bass1_9 :: Cycle (Maybe Note)
bass1_9 = noteFromSample S.bass1_9__Sample

bass1_10 :: Cycle (Maybe Note)
bass1_10 = noteFromSample S.bass1_10__Sample

bass1_11 :: Cycle (Maybe Note)
bass1_11 = noteFromSample S.bass1_11__Sample

bass1_12 :: Cycle (Maybe Note)
bass1_12 = noteFromSample S.bass1_12__Sample

bass1_13 :: Cycle (Maybe Note)
bass1_13 = noteFromSample S.bass1_13__Sample

bass1_14 :: Cycle (Maybe Note)
bass1_14 = noteFromSample S.bass1_14__Sample

bass1_15 :: Cycle (Maybe Note)
bass1_15 = noteFromSample S.bass1_15__Sample

bass1_16 :: Cycle (Maybe Note)
bass1_16 = noteFromSample S.bass1_16__Sample

bass1_17 :: Cycle (Maybe Note)
bass1_17 = noteFromSample S.bass1_17__Sample

bass1_18 :: Cycle (Maybe Note)
bass1_18 = noteFromSample S.bass1_18__Sample

bass1_19 :: Cycle (Maybe Note)
bass1_19 = noteFromSample S.bass1_19__Sample

bass1_20 :: Cycle (Maybe Note)
bass1_20 = noteFromSample S.bass1_20__Sample

bass1_21 :: Cycle (Maybe Note)
bass1_21 = noteFromSample S.bass1_21__Sample

bass1_22 :: Cycle (Maybe Note)
bass1_22 = noteFromSample S.bass1_22__Sample

bass1_23 :: Cycle (Maybe Note)
bass1_23 = noteFromSample S.bass1_23__Sample

bass1_24 :: Cycle (Maybe Note)
bass1_24 = noteFromSample S.bass1_24__Sample

bass1_25 :: Cycle (Maybe Note)
bass1_25 = noteFromSample S.bass1_25__Sample

bass1_26 :: Cycle (Maybe Note)
bass1_26 = noteFromSample S.bass1_26__Sample

bass1_27 :: Cycle (Maybe Note)
bass1_27 = noteFromSample S.bass1_27__Sample

bass1_28 :: Cycle (Maybe Note)
bass1_28 = noteFromSample S.bass1_28__Sample

bass1_29 :: Cycle (Maybe Note)
bass1_29 = noteFromSample S.bass1_29__Sample

hh27 :: Cycle (Maybe Note)
hh27 = noteFromSample S.hh27_0__Sample

hh27_0 :: Cycle (Maybe Note)
hh27_0 = noteFromSample S.hh27_0__Sample

hh27_1 :: Cycle (Maybe Note)
hh27_1 = noteFromSample S.hh27_1__Sample

hh27_2 :: Cycle (Maybe Note)
hh27_2 = noteFromSample S.hh27_2__Sample

hh27_3 :: Cycle (Maybe Note)
hh27_3 = noteFromSample S.hh27_3__Sample

hh27_4 :: Cycle (Maybe Note)
hh27_4 = noteFromSample S.hh27_4__Sample

hh27_5 :: Cycle (Maybe Note)
hh27_5 = noteFromSample S.hh27_5__Sample

hh27_6 :: Cycle (Maybe Note)
hh27_6 = noteFromSample S.hh27_6__Sample

hh27_7 :: Cycle (Maybe Note)
hh27_7 = noteFromSample S.hh27_7__Sample

hh27_8 :: Cycle (Maybe Note)
hh27_8 = noteFromSample S.hh27_8__Sample

hh27_9 :: Cycle (Maybe Note)
hh27_9 = noteFromSample S.hh27_9__Sample

hh27_10 :: Cycle (Maybe Note)
hh27_10 = noteFromSample S.hh27_10__Sample

hh27_11 :: Cycle (Maybe Note)
hh27_11 = noteFromSample S.hh27_11__Sample

hh27_12 :: Cycle (Maybe Note)
hh27_12 = noteFromSample S.hh27_12__Sample

x_808 :: Cycle (Maybe Note)
x_808 = noteFromSample S.x_808_0__Sample

x_808_0 :: Cycle (Maybe Note)
x_808_0 = noteFromSample S.x_808_0__Sample

x_808_1 :: Cycle (Maybe Note)
x_808_1 = noteFromSample S.x_808_1__Sample

x_808_2 :: Cycle (Maybe Note)
x_808_2 = noteFromSample S.x_808_2__Sample

x_808_3 :: Cycle (Maybe Note)
x_808_3 = noteFromSample S.x_808_3__Sample

x_808_4 :: Cycle (Maybe Note)
x_808_4 = noteFromSample S.x_808_4__Sample

x_808_5 :: Cycle (Maybe Note)
x_808_5 = noteFromSample S.x_808_5__Sample

notes :: Cycle (Maybe Note)
notes = noteFromSample S.notes_0__Sample

notes_0 :: Cycle (Maybe Note)
notes_0 = noteFromSample S.notes_0__Sample

notes_1 :: Cycle (Maybe Note)
notes_1 = noteFromSample S.notes_1__Sample

notes_2 :: Cycle (Maybe Note)
notes_2 = noteFromSample S.notes_2__Sample

notes_3 :: Cycle (Maybe Note)
notes_3 = noteFromSample S.notes_3__Sample

notes_4 :: Cycle (Maybe Note)
notes_4 = noteFromSample S.notes_4__Sample

notes_5 :: Cycle (Maybe Note)
notes_5 = noteFromSample S.notes_5__Sample

notes_6 :: Cycle (Maybe Note)
notes_6 = noteFromSample S.notes_6__Sample

notes_7 :: Cycle (Maybe Note)
notes_7 = noteFromSample S.notes_7__Sample

notes_8 :: Cycle (Maybe Note)
notes_8 = noteFromSample S.notes_8__Sample

notes_9 :: Cycle (Maybe Note)
notes_9 = noteFromSample S.notes_9__Sample

notes_10 :: Cycle (Maybe Note)
notes_10 = noteFromSample S.notes_10__Sample

notes_11 :: Cycle (Maybe Note)
notes_11 = noteFromSample S.notes_11__Sample

notes_12 :: Cycle (Maybe Note)
notes_12 = noteFromSample S.notes_12__Sample

notes_13 :: Cycle (Maybe Note)
notes_13 = noteFromSample S.notes_13__Sample

notes_14 :: Cycle (Maybe Note)
notes_14 = noteFromSample S.notes_14__Sample

xmas :: Cycle (Maybe Note)
xmas = noteFromSample S.xmas_0__Sample

xmas_0 :: Cycle (Maybe Note)
xmas_0 = noteFromSample S.xmas_0__Sample

erk :: Cycle (Maybe Note)
erk = noteFromSample S.erk_0__Sample

erk_0 :: Cycle (Maybe Note)
erk_0 = noteFromSample S.erk_0__Sample

x_808mt :: Cycle (Maybe Note)
x_808mt = noteFromSample S.x_808mt_0__Sample

x_808mt_0 :: Cycle (Maybe Note)
x_808mt_0 = noteFromSample S.x_808mt_0__Sample

x_808mt_1 :: Cycle (Maybe Note)
x_808mt_1 = noteFromSample S.x_808mt_1__Sample

x_808mt_2 :: Cycle (Maybe Note)
x_808mt_2 = noteFromSample S.x_808mt_2__Sample

x_808mt_3 :: Cycle (Maybe Note)
x_808mt_3 = noteFromSample S.x_808mt_3__Sample

x_808mt_4 :: Cycle (Maybe Note)
x_808mt_4 = noteFromSample S.x_808mt_4__Sample

lighter :: Cycle (Maybe Note)
lighter = noteFromSample S.lighter_0__Sample

lighter_0 :: Cycle (Maybe Note)
lighter_0 = noteFromSample S.lighter_0__Sample

lighter_1 :: Cycle (Maybe Note)
lighter_1 = noteFromSample S.lighter_1__Sample

lighter_2 :: Cycle (Maybe Note)
lighter_2 = noteFromSample S.lighter_2__Sample

lighter_3 :: Cycle (Maybe Note)
lighter_3 = noteFromSample S.lighter_3__Sample

lighter_4 :: Cycle (Maybe Note)
lighter_4 = noteFromSample S.lighter_4__Sample

lighter_5 :: Cycle (Maybe Note)
lighter_5 = noteFromSample S.lighter_5__Sample

lighter_6 :: Cycle (Maybe Note)
lighter_6 = noteFromSample S.lighter_6__Sample

lighter_7 :: Cycle (Maybe Note)
lighter_7 = noteFromSample S.lighter_7__Sample

lighter_8 :: Cycle (Maybe Note)
lighter_8 = noteFromSample S.lighter_8__Sample

lighter_9 :: Cycle (Maybe Note)
lighter_9 = noteFromSample S.lighter_9__Sample

lighter_10 :: Cycle (Maybe Note)
lighter_10 = noteFromSample S.lighter_10__Sample

lighter_11 :: Cycle (Maybe Note)
lighter_11 = noteFromSample S.lighter_11__Sample

lighter_12 :: Cycle (Maybe Note)
lighter_12 = noteFromSample S.lighter_12__Sample

lighter_13 :: Cycle (Maybe Note)
lighter_13 = noteFromSample S.lighter_13__Sample

lighter_14 :: Cycle (Maybe Note)
lighter_14 = noteFromSample S.lighter_14__Sample

lighter_15 :: Cycle (Maybe Note)
lighter_15 = noteFromSample S.lighter_15__Sample

lighter_16 :: Cycle (Maybe Note)
lighter_16 = noteFromSample S.lighter_16__Sample

lighter_17 :: Cycle (Maybe Note)
lighter_17 = noteFromSample S.lighter_17__Sample

lighter_18 :: Cycle (Maybe Note)
lighter_18 = noteFromSample S.lighter_18__Sample

lighter_19 :: Cycle (Maybe Note)
lighter_19 = noteFromSample S.lighter_19__Sample

lighter_20 :: Cycle (Maybe Note)
lighter_20 = noteFromSample S.lighter_20__Sample

lighter_21 :: Cycle (Maybe Note)
lighter_21 = noteFromSample S.lighter_21__Sample

lighter_22 :: Cycle (Maybe Note)
lighter_22 = noteFromSample S.lighter_22__Sample

lighter_23 :: Cycle (Maybe Note)
lighter_23 = noteFromSample S.lighter_23__Sample

lighter_24 :: Cycle (Maybe Note)
lighter_24 = noteFromSample S.lighter_24__Sample

lighter_25 :: Cycle (Maybe Note)
lighter_25 = noteFromSample S.lighter_25__Sample

lighter_26 :: Cycle (Maybe Note)
lighter_26 = noteFromSample S.lighter_26__Sample

lighter_27 :: Cycle (Maybe Note)
lighter_27 = noteFromSample S.lighter_27__Sample

lighter_28 :: Cycle (Maybe Note)
lighter_28 = noteFromSample S.lighter_28__Sample

lighter_29 :: Cycle (Maybe Note)
lighter_29 = noteFromSample S.lighter_29__Sample

lighter_30 :: Cycle (Maybe Note)
lighter_30 = noteFromSample S.lighter_30__Sample

lighter_31 :: Cycle (Maybe Note)
lighter_31 = noteFromSample S.lighter_31__Sample

lighter_32 :: Cycle (Maybe Note)
lighter_32 = noteFromSample S.lighter_32__Sample

cb :: Cycle (Maybe Note)
cb = noteFromSample S.cb_0__Sample

cb_0 :: Cycle (Maybe Note)
cb_0 = noteFromSample S.cb_0__Sample

subroc3d :: Cycle (Maybe Note)
subroc3d = noteFromSample S.subroc3d_0__Sample

subroc3d_0 :: Cycle (Maybe Note)
subroc3d_0 = noteFromSample S.subroc3d_0__Sample

subroc3d_1 :: Cycle (Maybe Note)
subroc3d_1 = noteFromSample S.subroc3d_1__Sample

subroc3d_2 :: Cycle (Maybe Note)
subroc3d_2 = noteFromSample S.subroc3d_2__Sample

subroc3d_3 :: Cycle (Maybe Note)
subroc3d_3 = noteFromSample S.subroc3d_3__Sample

subroc3d_4 :: Cycle (Maybe Note)
subroc3d_4 = noteFromSample S.subroc3d_4__Sample

subroc3d_5 :: Cycle (Maybe Note)
subroc3d_5 = noteFromSample S.subroc3d_5__Sample

subroc3d_6 :: Cycle (Maybe Note)
subroc3d_6 = noteFromSample S.subroc3d_6__Sample

subroc3d_7 :: Cycle (Maybe Note)
subroc3d_7 = noteFromSample S.subroc3d_7__Sample

subroc3d_8 :: Cycle (Maybe Note)
subroc3d_8 = noteFromSample S.subroc3d_8__Sample

subroc3d_9 :: Cycle (Maybe Note)
subroc3d_9 = noteFromSample S.subroc3d_9__Sample

subroc3d_10 :: Cycle (Maybe Note)
subroc3d_10 = noteFromSample S.subroc3d_10__Sample

ul :: Cycle (Maybe Note)
ul = noteFromSample S.ul_0__Sample

ul_0 :: Cycle (Maybe Note)
ul_0 = noteFromSample S.ul_0__Sample

ul_1 :: Cycle (Maybe Note)
ul_1 = noteFromSample S.ul_1__Sample

ul_2 :: Cycle (Maybe Note)
ul_2 = noteFromSample S.ul_2__Sample

ul_3 :: Cycle (Maybe Note)
ul_3 = noteFromSample S.ul_3__Sample

ul_4 :: Cycle (Maybe Note)
ul_4 = noteFromSample S.ul_4__Sample

ul_5 :: Cycle (Maybe Note)
ul_5 = noteFromSample S.ul_5__Sample

ul_6 :: Cycle (Maybe Note)
ul_6 = noteFromSample S.ul_6__Sample

ul_7 :: Cycle (Maybe Note)
ul_7 = noteFromSample S.ul_7__Sample

ul_8 :: Cycle (Maybe Note)
ul_8 = noteFromSample S.ul_8__Sample

ul_9 :: Cycle (Maybe Note)
ul_9 = noteFromSample S.ul_9__Sample

gab :: Cycle (Maybe Note)
gab = noteFromSample S.gab_0__Sample

gab_0 :: Cycle (Maybe Note)
gab_0 = noteFromSample S.gab_0__Sample

gab_1 :: Cycle (Maybe Note)
gab_1 = noteFromSample S.gab_1__Sample

gab_2 :: Cycle (Maybe Note)
gab_2 = noteFromSample S.gab_2__Sample

gab_3 :: Cycle (Maybe Note)
gab_3 = noteFromSample S.gab_3__Sample

gab_4 :: Cycle (Maybe Note)
gab_4 = noteFromSample S.gab_4__Sample

gab_5 :: Cycle (Maybe Note)
gab_5 = noteFromSample S.gab_5__Sample

gab_6 :: Cycle (Maybe Note)
gab_6 = noteFromSample S.gab_6__Sample

gab_7 :: Cycle (Maybe Note)
gab_7 = noteFromSample S.gab_7__Sample

gab_8 :: Cycle (Maybe Note)
gab_8 = noteFromSample S.gab_8__Sample

gab_9 :: Cycle (Maybe Note)
gab_9 = noteFromSample S.gab_9__Sample

monsterb :: Cycle (Maybe Note)
monsterb = noteFromSample S.monsterb_0__Sample

monsterb_0 :: Cycle (Maybe Note)
monsterb_0 = noteFromSample S.monsterb_0__Sample

monsterb_1 :: Cycle (Maybe Note)
monsterb_1 = noteFromSample S.monsterb_1__Sample

monsterb_2 :: Cycle (Maybe Note)
monsterb_2 = noteFromSample S.monsterb_2__Sample

monsterb_3 :: Cycle (Maybe Note)
monsterb_3 = noteFromSample S.monsterb_3__Sample

monsterb_4 :: Cycle (Maybe Note)
monsterb_4 = noteFromSample S.monsterb_4__Sample

monsterb_5 :: Cycle (Maybe Note)
monsterb_5 = noteFromSample S.monsterb_5__Sample

diphone :: Cycle (Maybe Note)
diphone = noteFromSample S.diphone_0__Sample

diphone_0 :: Cycle (Maybe Note)
diphone_0 = noteFromSample S.diphone_0__Sample

diphone_1 :: Cycle (Maybe Note)
diphone_1 = noteFromSample S.diphone_1__Sample

diphone_2 :: Cycle (Maybe Note)
diphone_2 = noteFromSample S.diphone_2__Sample

diphone_3 :: Cycle (Maybe Note)
diphone_3 = noteFromSample S.diphone_3__Sample

diphone_4 :: Cycle (Maybe Note)
diphone_4 = noteFromSample S.diphone_4__Sample

diphone_5 :: Cycle (Maybe Note)
diphone_5 = noteFromSample S.diphone_5__Sample

diphone_6 :: Cycle (Maybe Note)
diphone_6 = noteFromSample S.diphone_6__Sample

diphone_7 :: Cycle (Maybe Note)
diphone_7 = noteFromSample S.diphone_7__Sample

diphone_8 :: Cycle (Maybe Note)
diphone_8 = noteFromSample S.diphone_8__Sample

diphone_9 :: Cycle (Maybe Note)
diphone_9 = noteFromSample S.diphone_9__Sample

diphone_10 :: Cycle (Maybe Note)
diphone_10 = noteFromSample S.diphone_10__Sample

diphone_11 :: Cycle (Maybe Note)
diphone_11 = noteFromSample S.diphone_11__Sample

diphone_12 :: Cycle (Maybe Note)
diphone_12 = noteFromSample S.diphone_12__Sample

diphone_13 :: Cycle (Maybe Note)
diphone_13 = noteFromSample S.diphone_13__Sample

diphone_14 :: Cycle (Maybe Note)
diphone_14 = noteFromSample S.diphone_14__Sample

diphone_15 :: Cycle (Maybe Note)
diphone_15 = noteFromSample S.diphone_15__Sample

diphone_16 :: Cycle (Maybe Note)
diphone_16 = noteFromSample S.diphone_16__Sample

diphone_17 :: Cycle (Maybe Note)
diphone_17 = noteFromSample S.diphone_17__Sample

diphone_18 :: Cycle (Maybe Note)
diphone_18 = noteFromSample S.diphone_18__Sample

diphone_19 :: Cycle (Maybe Note)
diphone_19 = noteFromSample S.diphone_19__Sample

diphone_20 :: Cycle (Maybe Note)
diphone_20 = noteFromSample S.diphone_20__Sample

diphone_21 :: Cycle (Maybe Note)
diphone_21 = noteFromSample S.diphone_21__Sample

diphone_22 :: Cycle (Maybe Note)
diphone_22 = noteFromSample S.diphone_22__Sample

diphone_23 :: Cycle (Maybe Note)
diphone_23 = noteFromSample S.diphone_23__Sample

diphone_24 :: Cycle (Maybe Note)
diphone_24 = noteFromSample S.diphone_24__Sample

diphone_25 :: Cycle (Maybe Note)
diphone_25 = noteFromSample S.diphone_25__Sample

diphone_26 :: Cycle (Maybe Note)
diphone_26 = noteFromSample S.diphone_26__Sample

diphone_27 :: Cycle (Maybe Note)
diphone_27 = noteFromSample S.diphone_27__Sample

diphone_28 :: Cycle (Maybe Note)
diphone_28 = noteFromSample S.diphone_28__Sample

diphone_29 :: Cycle (Maybe Note)
diphone_29 = noteFromSample S.diphone_29__Sample

diphone_30 :: Cycle (Maybe Note)
diphone_30 = noteFromSample S.diphone_30__Sample

diphone_31 :: Cycle (Maybe Note)
diphone_31 = noteFromSample S.diphone_31__Sample

diphone_32 :: Cycle (Maybe Note)
diphone_32 = noteFromSample S.diphone_32__Sample

diphone_33 :: Cycle (Maybe Note)
diphone_33 = noteFromSample S.diphone_33__Sample

diphone_34 :: Cycle (Maybe Note)
diphone_34 = noteFromSample S.diphone_34__Sample

diphone_35 :: Cycle (Maybe Note)
diphone_35 = noteFromSample S.diphone_35__Sample

diphone_36 :: Cycle (Maybe Note)
diphone_36 = noteFromSample S.diphone_36__Sample

diphone_37 :: Cycle (Maybe Note)
diphone_37 = noteFromSample S.diphone_37__Sample

clak :: Cycle (Maybe Note)
clak = noteFromSample S.clak_0__Sample

clak_0 :: Cycle (Maybe Note)
clak_0 = noteFromSample S.clak_0__Sample

clak_1 :: Cycle (Maybe Note)
clak_1 = noteFromSample S.clak_1__Sample

sitar :: Cycle (Maybe Note)
sitar = noteFromSample S.sitar_0__Sample

sitar_0 :: Cycle (Maybe Note)
sitar_0 = noteFromSample S.sitar_0__Sample

sitar_1 :: Cycle (Maybe Note)
sitar_1 = noteFromSample S.sitar_1__Sample

sitar_2 :: Cycle (Maybe Note)
sitar_2 = noteFromSample S.sitar_2__Sample

sitar_3 :: Cycle (Maybe Note)
sitar_3 = noteFromSample S.sitar_3__Sample

sitar_4 :: Cycle (Maybe Note)
sitar_4 = noteFromSample S.sitar_4__Sample

sitar_5 :: Cycle (Maybe Note)
sitar_5 = noteFromSample S.sitar_5__Sample

sitar_6 :: Cycle (Maybe Note)
sitar_6 = noteFromSample S.sitar_6__Sample

sitar_7 :: Cycle (Maybe Note)
sitar_7 = noteFromSample S.sitar_7__Sample

ab :: Cycle (Maybe Note)
ab = noteFromSample S.ab_0__Sample

ab_0 :: Cycle (Maybe Note)
ab_0 = noteFromSample S.ab_0__Sample

ab_1 :: Cycle (Maybe Note)
ab_1 = noteFromSample S.ab_1__Sample

ab_2 :: Cycle (Maybe Note)
ab_2 = noteFromSample S.ab_2__Sample

ab_3 :: Cycle (Maybe Note)
ab_3 = noteFromSample S.ab_3__Sample

ab_4 :: Cycle (Maybe Note)
ab_4 = noteFromSample S.ab_4__Sample

ab_5 :: Cycle (Maybe Note)
ab_5 = noteFromSample S.ab_5__Sample

ab_6 :: Cycle (Maybe Note)
ab_6 = noteFromSample S.ab_6__Sample

ab_7 :: Cycle (Maybe Note)
ab_7 = noteFromSample S.ab_7__Sample

ab_8 :: Cycle (Maybe Note)
ab_8 = noteFromSample S.ab_8__Sample

ab_9 :: Cycle (Maybe Note)
ab_9 = noteFromSample S.ab_9__Sample

ab_10 :: Cycle (Maybe Note)
ab_10 = noteFromSample S.ab_10__Sample

ab_11 :: Cycle (Maybe Note)
ab_11 = noteFromSample S.ab_11__Sample

cr :: Cycle (Maybe Note)
cr = noteFromSample S.cr_0__Sample

cr_0 :: Cycle (Maybe Note)
cr_0 = noteFromSample S.cr_0__Sample

cr_1 :: Cycle (Maybe Note)
cr_1 = noteFromSample S.cr_1__Sample

cr_2 :: Cycle (Maybe Note)
cr_2 = noteFromSample S.cr_2__Sample

cr_3 :: Cycle (Maybe Note)
cr_3 = noteFromSample S.cr_3__Sample

cr_4 :: Cycle (Maybe Note)
cr_4 = noteFromSample S.cr_4__Sample

cr_5 :: Cycle (Maybe Note)
cr_5 = noteFromSample S.cr_5__Sample

tacscan :: Cycle (Maybe Note)
tacscan = noteFromSample S.tacscan_0__Sample

tacscan_0 :: Cycle (Maybe Note)
tacscan_0 = noteFromSample S.tacscan_0__Sample

tacscan_1 :: Cycle (Maybe Note)
tacscan_1 = noteFromSample S.tacscan_1__Sample

tacscan_2 :: Cycle (Maybe Note)
tacscan_2 = noteFromSample S.tacscan_2__Sample

tacscan_3 :: Cycle (Maybe Note)
tacscan_3 = noteFromSample S.tacscan_3__Sample

tacscan_4 :: Cycle (Maybe Note)
tacscan_4 = noteFromSample S.tacscan_4__Sample

tacscan_5 :: Cycle (Maybe Note)
tacscan_5 = noteFromSample S.tacscan_5__Sample

tacscan_6 :: Cycle (Maybe Note)
tacscan_6 = noteFromSample S.tacscan_6__Sample

tacscan_7 :: Cycle (Maybe Note)
tacscan_7 = noteFromSample S.tacscan_7__Sample

tacscan_8 :: Cycle (Maybe Note)
tacscan_8 = noteFromSample S.tacscan_8__Sample

tacscan_9 :: Cycle (Maybe Note)
tacscan_9 = noteFromSample S.tacscan_9__Sample

tacscan_10 :: Cycle (Maybe Note)
tacscan_10 = noteFromSample S.tacscan_10__Sample

tacscan_11 :: Cycle (Maybe Note)
tacscan_11 = noteFromSample S.tacscan_11__Sample

tacscan_12 :: Cycle (Maybe Note)
tacscan_12 = noteFromSample S.tacscan_12__Sample

tacscan_13 :: Cycle (Maybe Note)
tacscan_13 = noteFromSample S.tacscan_13__Sample

tacscan_14 :: Cycle (Maybe Note)
tacscan_14 = noteFromSample S.tacscan_14__Sample

tacscan_15 :: Cycle (Maybe Note)
tacscan_15 = noteFromSample S.tacscan_15__Sample

tacscan_16 :: Cycle (Maybe Note)
tacscan_16 = noteFromSample S.tacscan_16__Sample

tacscan_17 :: Cycle (Maybe Note)
tacscan_17 = noteFromSample S.tacscan_17__Sample

tacscan_18 :: Cycle (Maybe Note)
tacscan_18 = noteFromSample S.tacscan_18__Sample

tacscan_19 :: Cycle (Maybe Note)
tacscan_19 = noteFromSample S.tacscan_19__Sample

tacscan_20 :: Cycle (Maybe Note)
tacscan_20 = noteFromSample S.tacscan_20__Sample

tacscan_21 :: Cycle (Maybe Note)
tacscan_21 = noteFromSample S.tacscan_21__Sample

v :: Cycle (Maybe Note)
v = noteFromSample S.v_0__Sample

v_0 :: Cycle (Maybe Note)
v_0 = noteFromSample S.v_0__Sample

v_1 :: Cycle (Maybe Note)
v_1 = noteFromSample S.v_1__Sample

v_2 :: Cycle (Maybe Note)
v_2 = noteFromSample S.v_2__Sample

v_3 :: Cycle (Maybe Note)
v_3 = noteFromSample S.v_3__Sample

v_4 :: Cycle (Maybe Note)
v_4 = noteFromSample S.v_4__Sample

v_5 :: Cycle (Maybe Note)
v_5 = noteFromSample S.v_5__Sample

bd :: Cycle (Maybe Note)
bd = noteFromSample S.bd_0__Sample

bd_0 :: Cycle (Maybe Note)
bd_0 = noteFromSample S.bd_0__Sample

bd_1 :: Cycle (Maybe Note)
bd_1 = noteFromSample S.bd_1__Sample

bd_2 :: Cycle (Maybe Note)
bd_2 = noteFromSample S.bd_2__Sample

bd_3 :: Cycle (Maybe Note)
bd_3 = noteFromSample S.bd_3__Sample

bd_4 :: Cycle (Maybe Note)
bd_4 = noteFromSample S.bd_4__Sample

bd_5 :: Cycle (Maybe Note)
bd_5 = noteFromSample S.bd_5__Sample

bd_6 :: Cycle (Maybe Note)
bd_6 = noteFromSample S.bd_6__Sample

bd_7 :: Cycle (Maybe Note)
bd_7 = noteFromSample S.bd_7__Sample

bd_8 :: Cycle (Maybe Note)
bd_8 = noteFromSample S.bd_8__Sample

bd_9 :: Cycle (Maybe Note)
bd_9 = noteFromSample S.bd_9__Sample

bd_10 :: Cycle (Maybe Note)
bd_10 = noteFromSample S.bd_10__Sample

bd_11 :: Cycle (Maybe Note)
bd_11 = noteFromSample S.bd_11__Sample

bd_12 :: Cycle (Maybe Note)
bd_12 = noteFromSample S.bd_12__Sample

bd_13 :: Cycle (Maybe Note)
bd_13 = noteFromSample S.bd_13__Sample

bd_14 :: Cycle (Maybe Note)
bd_14 = noteFromSample S.bd_14__Sample

bd_15 :: Cycle (Maybe Note)
bd_15 = noteFromSample S.bd_15__Sample

bd_16 :: Cycle (Maybe Note)
bd_16 = noteFromSample S.bd_16__Sample

bd_17 :: Cycle (Maybe Note)
bd_17 = noteFromSample S.bd_17__Sample

bd_18 :: Cycle (Maybe Note)
bd_18 = noteFromSample S.bd_18__Sample

bd_19 :: Cycle (Maybe Note)
bd_19 = noteFromSample S.bd_19__Sample

bd_20 :: Cycle (Maybe Note)
bd_20 = noteFromSample S.bd_20__Sample

bd_21 :: Cycle (Maybe Note)
bd_21 = noteFromSample S.bd_21__Sample

bd_22 :: Cycle (Maybe Note)
bd_22 = noteFromSample S.bd_22__Sample

bd_23 :: Cycle (Maybe Note)
bd_23 = noteFromSample S.bd_23__Sample

rm :: Cycle (Maybe Note)
rm = noteFromSample S.rm_0__Sample

rm_0 :: Cycle (Maybe Note)
rm_0 = noteFromSample S.rm_0__Sample

rm_1 :: Cycle (Maybe Note)
rm_1 = noteFromSample S.rm_1__Sample

blue :: Cycle (Maybe Note)
blue = noteFromSample S.blue_0__Sample

blue_0 :: Cycle (Maybe Note)
blue_0 = noteFromSample S.blue_0__Sample

blue_1 :: Cycle (Maybe Note)
blue_1 = noteFromSample S.blue_1__Sample

latibro :: Cycle (Maybe Note)
latibro = noteFromSample S.latibro_0__Sample

latibro_0 :: Cycle (Maybe Note)
latibro_0 = noteFromSample S.latibro_0__Sample

latibro_1 :: Cycle (Maybe Note)
latibro_1 = noteFromSample S.latibro_1__Sample

latibro_2 :: Cycle (Maybe Note)
latibro_2 = noteFromSample S.latibro_2__Sample

latibro_3 :: Cycle (Maybe Note)
latibro_3 = noteFromSample S.latibro_3__Sample

latibro_4 :: Cycle (Maybe Note)
latibro_4 = noteFromSample S.latibro_4__Sample

latibro_5 :: Cycle (Maybe Note)
latibro_5 = noteFromSample S.latibro_5__Sample

latibro_6 :: Cycle (Maybe Note)
latibro_6 = noteFromSample S.latibro_6__Sample

latibro_7 :: Cycle (Maybe Note)
latibro_7 = noteFromSample S.latibro_7__Sample

dr_few :: Cycle (Maybe Note)
dr_few = noteFromSample S.dr_few_0__Sample

dr_few_0 :: Cycle (Maybe Note)
dr_few_0 = noteFromSample S.dr_few_0__Sample

dr_few_1 :: Cycle (Maybe Note)
dr_few_1 = noteFromSample S.dr_few_1__Sample

dr_few_2 :: Cycle (Maybe Note)
dr_few_2 = noteFromSample S.dr_few_2__Sample

dr_few_3 :: Cycle (Maybe Note)
dr_few_3 = noteFromSample S.dr_few_3__Sample

dr_few_4 :: Cycle (Maybe Note)
dr_few_4 = noteFromSample S.dr_few_4__Sample

dr_few_5 :: Cycle (Maybe Note)
dr_few_5 = noteFromSample S.dr_few_5__Sample

dr_few_6 :: Cycle (Maybe Note)
dr_few_6 = noteFromSample S.dr_few_6__Sample

dr_few_7 :: Cycle (Maybe Note)
dr_few_7 = noteFromSample S.dr_few_7__Sample

rave2 :: Cycle (Maybe Note)
rave2 = noteFromSample S.rave2_0__Sample

rave2_0 :: Cycle (Maybe Note)
rave2_0 = noteFromSample S.rave2_0__Sample

rave2_1 :: Cycle (Maybe Note)
rave2_1 = noteFromSample S.rave2_1__Sample

rave2_2 :: Cycle (Maybe Note)
rave2_2 = noteFromSample S.rave2_2__Sample

rave2_3 :: Cycle (Maybe Note)
rave2_3 = noteFromSample S.rave2_3__Sample

rave2_4 :: Cycle (Maybe Note)
rave2_4 = noteFromSample S.rave2_4__Sample

rave2_5 :: Cycle (Maybe Note)
rave2_5 = noteFromSample S.rave2_5__Sample

koy :: Cycle (Maybe Note)
koy = noteFromSample S.koy_0__Sample

koy_0 :: Cycle (Maybe Note)
koy_0 = noteFromSample S.koy_0__Sample

koy_1 :: Cycle (Maybe Note)
koy_1 = noteFromSample S.koy_1__Sample

glitch2 :: Cycle (Maybe Note)
glitch2 = noteFromSample S.glitch2_0__Sample

glitch2_0 :: Cycle (Maybe Note)
glitch2_0 = noteFromSample S.glitch2_0__Sample

glitch2_1 :: Cycle (Maybe Note)
glitch2_1 = noteFromSample S.glitch2_1__Sample

glitch2_2 :: Cycle (Maybe Note)
glitch2_2 = noteFromSample S.glitch2_2__Sample

glitch2_3 :: Cycle (Maybe Note)
glitch2_3 = noteFromSample S.glitch2_3__Sample

glitch2_4 :: Cycle (Maybe Note)
glitch2_4 = noteFromSample S.glitch2_4__Sample

glitch2_5 :: Cycle (Maybe Note)
glitch2_5 = noteFromSample S.glitch2_5__Sample

glitch2_6 :: Cycle (Maybe Note)
glitch2_6 = noteFromSample S.glitch2_6__Sample

glitch2_7 :: Cycle (Maybe Note)
glitch2_7 = noteFromSample S.glitch2_7__Sample

hmm :: Cycle (Maybe Note)
hmm = noteFromSample S.hmm_0__Sample

hmm_0 :: Cycle (Maybe Note)
hmm_0 = noteFromSample S.hmm_0__Sample

arp :: Cycle (Maybe Note)
arp = noteFromSample S.arp_0__Sample

arp_0 :: Cycle (Maybe Note)
arp_0 = noteFromSample S.arp_0__Sample

arp_1 :: Cycle (Maybe Note)
arp_1 = noteFromSample S.arp_1__Sample

made2 :: Cycle (Maybe Note)
made2 = noteFromSample S.made2_0__Sample

made2_0 :: Cycle (Maybe Note)
made2_0 = noteFromSample S.made2_0__Sample

uxay :: Cycle (Maybe Note)
uxay = noteFromSample S.uxay_0__Sample

uxay_0 :: Cycle (Maybe Note)
uxay_0 = noteFromSample S.uxay_0__Sample

uxay_1 :: Cycle (Maybe Note)
uxay_1 = noteFromSample S.uxay_1__Sample

uxay_2 :: Cycle (Maybe Note)
uxay_2 = noteFromSample S.uxay_2__Sample

stomp :: Cycle (Maybe Note)
stomp = noteFromSample S.stomp_0__Sample

stomp_0 :: Cycle (Maybe Note)
stomp_0 = noteFromSample S.stomp_0__Sample

stomp_1 :: Cycle (Maybe Note)
stomp_1 = noteFromSample S.stomp_1__Sample

stomp_2 :: Cycle (Maybe Note)
stomp_2 = noteFromSample S.stomp_2__Sample

stomp_3 :: Cycle (Maybe Note)
stomp_3 = noteFromSample S.stomp_3__Sample

stomp_4 :: Cycle (Maybe Note)
stomp_4 = noteFromSample S.stomp_4__Sample

stomp_5 :: Cycle (Maybe Note)
stomp_5 = noteFromSample S.stomp_5__Sample

stomp_6 :: Cycle (Maybe Note)
stomp_6 = noteFromSample S.stomp_6__Sample

stomp_7 :: Cycle (Maybe Note)
stomp_7 = noteFromSample S.stomp_7__Sample

stomp_8 :: Cycle (Maybe Note)
stomp_8 = noteFromSample S.stomp_8__Sample

stomp_9 :: Cycle (Maybe Note)
stomp_9 = noteFromSample S.stomp_9__Sample

tech :: Cycle (Maybe Note)
tech = noteFromSample S.tech_0__Sample

tech_0 :: Cycle (Maybe Note)
tech_0 = noteFromSample S.tech_0__Sample

tech_1 :: Cycle (Maybe Note)
tech_1 = noteFromSample S.tech_1__Sample

tech_2 :: Cycle (Maybe Note)
tech_2 = noteFromSample S.tech_2__Sample

tech_3 :: Cycle (Maybe Note)
tech_3 = noteFromSample S.tech_3__Sample

tech_4 :: Cycle (Maybe Note)
tech_4 = noteFromSample S.tech_4__Sample

tech_5 :: Cycle (Maybe Note)
tech_5 = noteFromSample S.tech_5__Sample

tech_6 :: Cycle (Maybe Note)
tech_6 = noteFromSample S.tech_6__Sample

tech_7 :: Cycle (Maybe Note)
tech_7 = noteFromSample S.tech_7__Sample

tech_8 :: Cycle (Maybe Note)
tech_8 = noteFromSample S.tech_8__Sample

tech_9 :: Cycle (Maybe Note)
tech_9 = noteFromSample S.tech_9__Sample

tech_10 :: Cycle (Maybe Note)
tech_10 = noteFromSample S.tech_10__Sample

tech_11 :: Cycle (Maybe Note)
tech_11 = noteFromSample S.tech_11__Sample

tech_12 :: Cycle (Maybe Note)
tech_12 = noteFromSample S.tech_12__Sample

sn :: Cycle (Maybe Note)
sn = noteFromSample S.sn_0__Sample

sn_0 :: Cycle (Maybe Note)
sn_0 = noteFromSample S.sn_0__Sample

sn_1 :: Cycle (Maybe Note)
sn_1 = noteFromSample S.sn_1__Sample

sn_2 :: Cycle (Maybe Note)
sn_2 = noteFromSample S.sn_2__Sample

sn_3 :: Cycle (Maybe Note)
sn_3 = noteFromSample S.sn_3__Sample

sn_4 :: Cycle (Maybe Note)
sn_4 = noteFromSample S.sn_4__Sample

sn_5 :: Cycle (Maybe Note)
sn_5 = noteFromSample S.sn_5__Sample

sn_6 :: Cycle (Maybe Note)
sn_6 = noteFromSample S.sn_6__Sample

sn_7 :: Cycle (Maybe Note)
sn_7 = noteFromSample S.sn_7__Sample

sn_8 :: Cycle (Maybe Note)
sn_8 = noteFromSample S.sn_8__Sample

sn_9 :: Cycle (Maybe Note)
sn_9 = noteFromSample S.sn_9__Sample

sn_10 :: Cycle (Maybe Note)
sn_10 = noteFromSample S.sn_10__Sample

sn_11 :: Cycle (Maybe Note)
sn_11 = noteFromSample S.sn_11__Sample

sn_12 :: Cycle (Maybe Note)
sn_12 = noteFromSample S.sn_12__Sample

sn_13 :: Cycle (Maybe Note)
sn_13 = noteFromSample S.sn_13__Sample

sn_14 :: Cycle (Maybe Note)
sn_14 = noteFromSample S.sn_14__Sample

sn_15 :: Cycle (Maybe Note)
sn_15 = noteFromSample S.sn_15__Sample

sn_16 :: Cycle (Maybe Note)
sn_16 = noteFromSample S.sn_16__Sample

sn_17 :: Cycle (Maybe Note)
sn_17 = noteFromSample S.sn_17__Sample

sn_18 :: Cycle (Maybe Note)
sn_18 = noteFromSample S.sn_18__Sample

sn_19 :: Cycle (Maybe Note)
sn_19 = noteFromSample S.sn_19__Sample

sn_20 :: Cycle (Maybe Note)
sn_20 = noteFromSample S.sn_20__Sample

sn_21 :: Cycle (Maybe Note)
sn_21 = noteFromSample S.sn_21__Sample

sn_22 :: Cycle (Maybe Note)
sn_22 = noteFromSample S.sn_22__Sample

sn_23 :: Cycle (Maybe Note)
sn_23 = noteFromSample S.sn_23__Sample

sn_24 :: Cycle (Maybe Note)
sn_24 = noteFromSample S.sn_24__Sample

sn_25 :: Cycle (Maybe Note)
sn_25 = noteFromSample S.sn_25__Sample

sn_26 :: Cycle (Maybe Note)
sn_26 = noteFromSample S.sn_26__Sample

sn_27 :: Cycle (Maybe Note)
sn_27 = noteFromSample S.sn_27__Sample

sn_28 :: Cycle (Maybe Note)
sn_28 = noteFromSample S.sn_28__Sample

sn_29 :: Cycle (Maybe Note)
sn_29 = noteFromSample S.sn_29__Sample

sn_30 :: Cycle (Maybe Note)
sn_30 = noteFromSample S.sn_30__Sample

sn_31 :: Cycle (Maybe Note)
sn_31 = noteFromSample S.sn_31__Sample

sn_32 :: Cycle (Maybe Note)
sn_32 = noteFromSample S.sn_32__Sample

sn_33 :: Cycle (Maybe Note)
sn_33 = noteFromSample S.sn_33__Sample

sn_34 :: Cycle (Maybe Note)
sn_34 = noteFromSample S.sn_34__Sample

sn_35 :: Cycle (Maybe Note)
sn_35 = noteFromSample S.sn_35__Sample

sn_36 :: Cycle (Maybe Note)
sn_36 = noteFromSample S.sn_36__Sample

sn_37 :: Cycle (Maybe Note)
sn_37 = noteFromSample S.sn_37__Sample

sn_38 :: Cycle (Maybe Note)
sn_38 = noteFromSample S.sn_38__Sample

sn_39 :: Cycle (Maybe Note)
sn_39 = noteFromSample S.sn_39__Sample

sn_40 :: Cycle (Maybe Note)
sn_40 = noteFromSample S.sn_40__Sample

sn_41 :: Cycle (Maybe Note)
sn_41 = noteFromSample S.sn_41__Sample

sn_42 :: Cycle (Maybe Note)
sn_42 = noteFromSample S.sn_42__Sample

sn_43 :: Cycle (Maybe Note)
sn_43 = noteFromSample S.sn_43__Sample

sn_44 :: Cycle (Maybe Note)
sn_44 = noteFromSample S.sn_44__Sample

sn_45 :: Cycle (Maybe Note)
sn_45 = noteFromSample S.sn_45__Sample

sn_46 :: Cycle (Maybe Note)
sn_46 = noteFromSample S.sn_46__Sample

sn_47 :: Cycle (Maybe Note)
sn_47 = noteFromSample S.sn_47__Sample

sn_48 :: Cycle (Maybe Note)
sn_48 = noteFromSample S.sn_48__Sample

sn_49 :: Cycle (Maybe Note)
sn_49 = noteFromSample S.sn_49__Sample

sn_50 :: Cycle (Maybe Note)
sn_50 = noteFromSample S.sn_50__Sample

sn_51 :: Cycle (Maybe Note)
sn_51 = noteFromSample S.sn_51__Sample

less :: Cycle (Maybe Note)
less = noteFromSample S.less_0__Sample

less_0 :: Cycle (Maybe Note)
less_0 = noteFromSample S.less_0__Sample

less_1 :: Cycle (Maybe Note)
less_1 = noteFromSample S.less_1__Sample

less_2 :: Cycle (Maybe Note)
less_2 = noteFromSample S.less_2__Sample

less_3 :: Cycle (Maybe Note)
less_3 = noteFromSample S.less_3__Sample

off :: Cycle (Maybe Note)
off = noteFromSample S.off_0__Sample

off_0 :: Cycle (Maybe Note)
off_0 = noteFromSample S.off_0__Sample

x_808sd :: Cycle (Maybe Note)
x_808sd = noteFromSample S.x_808sd_0__Sample

x_808sd_0 :: Cycle (Maybe Note)
x_808sd_0 = noteFromSample S.x_808sd_0__Sample

x_808sd_1 :: Cycle (Maybe Note)
x_808sd_1 = noteFromSample S.x_808sd_1__Sample

x_808sd_2 :: Cycle (Maybe Note)
x_808sd_2 = noteFromSample S.x_808sd_2__Sample

x_808sd_3 :: Cycle (Maybe Note)
x_808sd_3 = noteFromSample S.x_808sd_3__Sample

x_808sd_4 :: Cycle (Maybe Note)
x_808sd_4 = noteFromSample S.x_808sd_4__Sample

x_808sd_5 :: Cycle (Maybe Note)
x_808sd_5 = noteFromSample S.x_808sd_5__Sample

x_808sd_6 :: Cycle (Maybe Note)
x_808sd_6 = noteFromSample S.x_808sd_6__Sample

x_808sd_7 :: Cycle (Maybe Note)
x_808sd_7 = noteFromSample S.x_808sd_7__Sample

x_808sd_8 :: Cycle (Maybe Note)
x_808sd_8 = noteFromSample S.x_808sd_8__Sample

x_808sd_9 :: Cycle (Maybe Note)
x_808sd_9 = noteFromSample S.x_808sd_9__Sample

x_808sd_10 :: Cycle (Maybe Note)
x_808sd_10 = noteFromSample S.x_808sd_10__Sample

x_808sd_11 :: Cycle (Maybe Note)
x_808sd_11 = noteFromSample S.x_808sd_11__Sample

x_808sd_12 :: Cycle (Maybe Note)
x_808sd_12 = noteFromSample S.x_808sd_12__Sample

x_808sd_13 :: Cycle (Maybe Note)
x_808sd_13 = noteFromSample S.x_808sd_13__Sample

x_808sd_14 :: Cycle (Maybe Note)
x_808sd_14 = noteFromSample S.x_808sd_14__Sample

x_808sd_15 :: Cycle (Maybe Note)
x_808sd_15 = noteFromSample S.x_808sd_15__Sample

x_808sd_16 :: Cycle (Maybe Note)
x_808sd_16 = noteFromSample S.x_808sd_16__Sample

x_808sd_17 :: Cycle (Maybe Note)
x_808sd_17 = noteFromSample S.x_808sd_17__Sample

x_808sd_18 :: Cycle (Maybe Note)
x_808sd_18 = noteFromSample S.x_808sd_18__Sample

x_808sd_19 :: Cycle (Maybe Note)
x_808sd_19 = noteFromSample S.x_808sd_19__Sample

x_808sd_20 :: Cycle (Maybe Note)
x_808sd_20 = noteFromSample S.x_808sd_20__Sample

x_808sd_21 :: Cycle (Maybe Note)
x_808sd_21 = noteFromSample S.x_808sd_21__Sample

x_808sd_22 :: Cycle (Maybe Note)
x_808sd_22 = noteFromSample S.x_808sd_22__Sample

x_808sd_23 :: Cycle (Maybe Note)
x_808sd_23 = noteFromSample S.x_808sd_23__Sample

x_808sd_24 :: Cycle (Maybe Note)
x_808sd_24 = noteFromSample S.x_808sd_24__Sample

trump :: Cycle (Maybe Note)
trump = noteFromSample S.trump_0__Sample

trump_0 :: Cycle (Maybe Note)
trump_0 = noteFromSample S.trump_0__Sample

trump_1 :: Cycle (Maybe Note)
trump_1 = noteFromSample S.trump_1__Sample

trump_2 :: Cycle (Maybe Note)
trump_2 = noteFromSample S.trump_2__Sample

trump_3 :: Cycle (Maybe Note)
trump_3 = noteFromSample S.trump_3__Sample

trump_4 :: Cycle (Maybe Note)
trump_4 = noteFromSample S.trump_4__Sample

trump_5 :: Cycle (Maybe Note)
trump_5 = noteFromSample S.trump_5__Sample

trump_6 :: Cycle (Maybe Note)
trump_6 = noteFromSample S.trump_6__Sample

trump_7 :: Cycle (Maybe Note)
trump_7 = noteFromSample S.trump_7__Sample

trump_8 :: Cycle (Maybe Note)
trump_8 = noteFromSample S.trump_8__Sample

trump_9 :: Cycle (Maybe Note)
trump_9 = noteFromSample S.trump_9__Sample

trump_10 :: Cycle (Maybe Note)
trump_10 = noteFromSample S.trump_10__Sample

bev :: Cycle (Maybe Note)
bev = noteFromSample S.bev_0__Sample

bev_0 :: Cycle (Maybe Note)
bev_0 = noteFromSample S.bev_0__Sample

bev_1 :: Cycle (Maybe Note)
bev_1 = noteFromSample S.bev_1__Sample

pad :: Cycle (Maybe Note)
pad = noteFromSample S.pad_0__Sample

pad_0 :: Cycle (Maybe Note)
pad_0 = noteFromSample S.pad_0__Sample

pad_1 :: Cycle (Maybe Note)
pad_1 = noteFromSample S.pad_1__Sample

pad_2 :: Cycle (Maybe Note)
pad_2 = noteFromSample S.pad_2__Sample

led :: Cycle (Maybe Note)
led = noteFromSample S.led_0__Sample

led_0 :: Cycle (Maybe Note)
led_0 = noteFromSample S.led_0__Sample

perc :: Cycle (Maybe Note)
perc = noteFromSample S.perc_0__Sample

perc_0 :: Cycle (Maybe Note)
perc_0 = noteFromSample S.perc_0__Sample

perc_1 :: Cycle (Maybe Note)
perc_1 = noteFromSample S.perc_1__Sample

perc_2 :: Cycle (Maybe Note)
perc_2 = noteFromSample S.perc_2__Sample

perc_3 :: Cycle (Maybe Note)
perc_3 = noteFromSample S.perc_3__Sample

perc_4 :: Cycle (Maybe Note)
perc_4 = noteFromSample S.perc_4__Sample

perc_5 :: Cycle (Maybe Note)
perc_5 = noteFromSample S.perc_5__Sample

pluck :: Cycle (Maybe Note)
pluck = noteFromSample S.pluck_0__Sample

pluck_0 :: Cycle (Maybe Note)
pluck_0 = noteFromSample S.pluck_0__Sample

pluck_1 :: Cycle (Maybe Note)
pluck_1 = noteFromSample S.pluck_1__Sample

pluck_2 :: Cycle (Maybe Note)
pluck_2 = noteFromSample S.pluck_2__Sample

pluck_3 :: Cycle (Maybe Note)
pluck_3 = noteFromSample S.pluck_3__Sample

pluck_4 :: Cycle (Maybe Note)
pluck_4 = noteFromSample S.pluck_4__Sample

pluck_5 :: Cycle (Maybe Note)
pluck_5 = noteFromSample S.pluck_5__Sample

pluck_6 :: Cycle (Maybe Note)
pluck_6 = noteFromSample S.pluck_6__Sample

pluck_7 :: Cycle (Maybe Note)
pluck_7 = noteFromSample S.pluck_7__Sample

pluck_8 :: Cycle (Maybe Note)
pluck_8 = noteFromSample S.pluck_8__Sample

pluck_9 :: Cycle (Maybe Note)
pluck_9 = noteFromSample S.pluck_9__Sample

pluck_10 :: Cycle (Maybe Note)
pluck_10 = noteFromSample S.pluck_10__Sample

pluck_11 :: Cycle (Maybe Note)
pluck_11 = noteFromSample S.pluck_11__Sample

pluck_12 :: Cycle (Maybe Note)
pluck_12 = noteFromSample S.pluck_12__Sample

pluck_13 :: Cycle (Maybe Note)
pluck_13 = noteFromSample S.pluck_13__Sample

pluck_14 :: Cycle (Maybe Note)
pluck_14 = noteFromSample S.pluck_14__Sample

pluck_15 :: Cycle (Maybe Note)
pluck_15 = noteFromSample S.pluck_15__Sample

pluck_16 :: Cycle (Maybe Note)
pluck_16 = noteFromSample S.pluck_16__Sample

bleep :: Cycle (Maybe Note)
bleep = noteFromSample S.bleep_0__Sample

bleep_0 :: Cycle (Maybe Note)
bleep_0 = noteFromSample S.bleep_0__Sample

bleep_1 :: Cycle (Maybe Note)
bleep_1 = noteFromSample S.bleep_1__Sample

bleep_2 :: Cycle (Maybe Note)
bleep_2 = noteFromSample S.bleep_2__Sample

bleep_3 :: Cycle (Maybe Note)
bleep_3 = noteFromSample S.bleep_3__Sample

bleep_4 :: Cycle (Maybe Note)
bleep_4 = noteFromSample S.bleep_4__Sample

bleep_5 :: Cycle (Maybe Note)
bleep_5 = noteFromSample S.bleep_5__Sample

bleep_6 :: Cycle (Maybe Note)
bleep_6 = noteFromSample S.bleep_6__Sample

bleep_7 :: Cycle (Maybe Note)
bleep_7 = noteFromSample S.bleep_7__Sample

bleep_8 :: Cycle (Maybe Note)
bleep_8 = noteFromSample S.bleep_8__Sample

bleep_9 :: Cycle (Maybe Note)
bleep_9 = noteFromSample S.bleep_9__Sample

bleep_10 :: Cycle (Maybe Note)
bleep_10 = noteFromSample S.bleep_10__Sample

bleep_11 :: Cycle (Maybe Note)
bleep_11 = noteFromSample S.bleep_11__Sample

bleep_12 :: Cycle (Maybe Note)
bleep_12 = noteFromSample S.bleep_12__Sample

ht :: Cycle (Maybe Note)
ht = noteFromSample S.ht_0__Sample

ht_0 :: Cycle (Maybe Note)
ht_0 = noteFromSample S.ht_0__Sample

ht_1 :: Cycle (Maybe Note)
ht_1 = noteFromSample S.ht_1__Sample

ht_2 :: Cycle (Maybe Note)
ht_2 = noteFromSample S.ht_2__Sample

ht_3 :: Cycle (Maybe Note)
ht_3 = noteFromSample S.ht_3__Sample

ht_4 :: Cycle (Maybe Note)
ht_4 = noteFromSample S.ht_4__Sample

ht_5 :: Cycle (Maybe Note)
ht_5 = noteFromSample S.ht_5__Sample

ht_6 :: Cycle (Maybe Note)
ht_6 = noteFromSample S.ht_6__Sample

ht_7 :: Cycle (Maybe Note)
ht_7 = noteFromSample S.ht_7__Sample

ht_8 :: Cycle (Maybe Note)
ht_8 = noteFromSample S.ht_8__Sample

ht_9 :: Cycle (Maybe Note)
ht_9 = noteFromSample S.ht_9__Sample

ht_10 :: Cycle (Maybe Note)
ht_10 = noteFromSample S.ht_10__Sample

ht_11 :: Cycle (Maybe Note)
ht_11 = noteFromSample S.ht_11__Sample

ht_12 :: Cycle (Maybe Note)
ht_12 = noteFromSample S.ht_12__Sample

ht_13 :: Cycle (Maybe Note)
ht_13 = noteFromSample S.ht_13__Sample

ht_14 :: Cycle (Maybe Note)
ht_14 = noteFromSample S.ht_14__Sample

ht_15 :: Cycle (Maybe Note)
ht_15 = noteFromSample S.ht_15__Sample

ades4 :: Cycle (Maybe Note)
ades4 = noteFromSample S.ades4_0__Sample

ades4_0 :: Cycle (Maybe Note)
ades4_0 = noteFromSample S.ades4_0__Sample

ades4_1 :: Cycle (Maybe Note)
ades4_1 = noteFromSample S.ades4_1__Sample

ades4_2 :: Cycle (Maybe Note)
ades4_2 = noteFromSample S.ades4_2__Sample

ades4_3 :: Cycle (Maybe Note)
ades4_3 = noteFromSample S.ades4_3__Sample

ades4_4 :: Cycle (Maybe Note)
ades4_4 = noteFromSample S.ades4_4__Sample

ades4_5 :: Cycle (Maybe Note)
ades4_5 = noteFromSample S.ades4_5__Sample

proc :: Cycle (Maybe Note)
proc = noteFromSample S.proc_0__Sample

proc_0 :: Cycle (Maybe Note)
proc_0 = noteFromSample S.proc_0__Sample

proc_1 :: Cycle (Maybe Note)
proc_1 = noteFromSample S.proc_1__Sample

gretsch :: Cycle (Maybe Note)
gretsch = noteFromSample S.gretsch_0__Sample

gretsch_0 :: Cycle (Maybe Note)
gretsch_0 = noteFromSample S.gretsch_0__Sample

gretsch_1 :: Cycle (Maybe Note)
gretsch_1 = noteFromSample S.gretsch_1__Sample

gretsch_2 :: Cycle (Maybe Note)
gretsch_2 = noteFromSample S.gretsch_2__Sample

gretsch_3 :: Cycle (Maybe Note)
gretsch_3 = noteFromSample S.gretsch_3__Sample

gretsch_4 :: Cycle (Maybe Note)
gretsch_4 = noteFromSample S.gretsch_4__Sample

gretsch_5 :: Cycle (Maybe Note)
gretsch_5 = noteFromSample S.gretsch_5__Sample

gretsch_6 :: Cycle (Maybe Note)
gretsch_6 = noteFromSample S.gretsch_6__Sample

gretsch_7 :: Cycle (Maybe Note)
gretsch_7 = noteFromSample S.gretsch_7__Sample

gretsch_8 :: Cycle (Maybe Note)
gretsch_8 = noteFromSample S.gretsch_8__Sample

gretsch_9 :: Cycle (Maybe Note)
gretsch_9 = noteFromSample S.gretsch_9__Sample

gretsch_10 :: Cycle (Maybe Note)
gretsch_10 = noteFromSample S.gretsch_10__Sample

gretsch_11 :: Cycle (Maybe Note)
gretsch_11 = noteFromSample S.gretsch_11__Sample

gretsch_12 :: Cycle (Maybe Note)
gretsch_12 = noteFromSample S.gretsch_12__Sample

gretsch_13 :: Cycle (Maybe Note)
gretsch_13 = noteFromSample S.gretsch_13__Sample

gretsch_14 :: Cycle (Maybe Note)
gretsch_14 = noteFromSample S.gretsch_14__Sample

gretsch_15 :: Cycle (Maybe Note)
gretsch_15 = noteFromSample S.gretsch_15__Sample

gretsch_16 :: Cycle (Maybe Note)
gretsch_16 = noteFromSample S.gretsch_16__Sample

gretsch_17 :: Cycle (Maybe Note)
gretsch_17 = noteFromSample S.gretsch_17__Sample

gretsch_18 :: Cycle (Maybe Note)
gretsch_18 = noteFromSample S.gretsch_18__Sample

gretsch_19 :: Cycle (Maybe Note)
gretsch_19 = noteFromSample S.gretsch_19__Sample

gretsch_20 :: Cycle (Maybe Note)
gretsch_20 = noteFromSample S.gretsch_20__Sample

gretsch_21 :: Cycle (Maybe Note)
gretsch_21 = noteFromSample S.gretsch_21__Sample

gretsch_22 :: Cycle (Maybe Note)
gretsch_22 = noteFromSample S.gretsch_22__Sample

gretsch_23 :: Cycle (Maybe Note)
gretsch_23 = noteFromSample S.gretsch_23__Sample

outdoor :: Cycle (Maybe Note)
outdoor = noteFromSample S.outdoor_0__Sample

outdoor_0 :: Cycle (Maybe Note)
outdoor_0 = noteFromSample S.outdoor_0__Sample

outdoor_1 :: Cycle (Maybe Note)
outdoor_1 = noteFromSample S.outdoor_1__Sample

outdoor_2 :: Cycle (Maybe Note)
outdoor_2 = noteFromSample S.outdoor_2__Sample

outdoor_3 :: Cycle (Maybe Note)
outdoor_3 = noteFromSample S.outdoor_3__Sample

outdoor_4 :: Cycle (Maybe Note)
outdoor_4 = noteFromSample S.outdoor_4__Sample

outdoor_5 :: Cycle (Maybe Note)
outdoor_5 = noteFromSample S.outdoor_5__Sample

techno :: Cycle (Maybe Note)
techno = noteFromSample S.techno_0__Sample

techno_0 :: Cycle (Maybe Note)
techno_0 = noteFromSample S.techno_0__Sample

techno_1 :: Cycle (Maybe Note)
techno_1 = noteFromSample S.techno_1__Sample

techno_2 :: Cycle (Maybe Note)
techno_2 = noteFromSample S.techno_2__Sample

techno_3 :: Cycle (Maybe Note)
techno_3 = noteFromSample S.techno_3__Sample

techno_4 :: Cycle (Maybe Note)
techno_4 = noteFromSample S.techno_4__Sample

techno_5 :: Cycle (Maybe Note)
techno_5 = noteFromSample S.techno_5__Sample

techno_6 :: Cycle (Maybe Note)
techno_6 = noteFromSample S.techno_6__Sample

ulgab :: Cycle (Maybe Note)
ulgab = noteFromSample S.ulgab_0__Sample

ulgab_0 :: Cycle (Maybe Note)
ulgab_0 = noteFromSample S.ulgab_0__Sample

ulgab_1 :: Cycle (Maybe Note)
ulgab_1 = noteFromSample S.ulgab_1__Sample

ulgab_2 :: Cycle (Maybe Note)
ulgab_2 = noteFromSample S.ulgab_2__Sample

ulgab_3 :: Cycle (Maybe Note)
ulgab_3 = noteFromSample S.ulgab_3__Sample

ulgab_4 :: Cycle (Maybe Note)
ulgab_4 = noteFromSample S.ulgab_4__Sample

breaks125 :: Cycle (Maybe Note)
breaks125 = noteFromSample S.breaks125_0__Sample

breaks125_0 :: Cycle (Maybe Note)
breaks125_0 = noteFromSample S.breaks125_0__Sample

breaks125_1 :: Cycle (Maybe Note)
breaks125_1 = noteFromSample S.breaks125_1__Sample

bin :: Cycle (Maybe Note)
bin = noteFromSample S.bin_0__Sample

bin_0 :: Cycle (Maybe Note)
bin_0 = noteFromSample S.bin_0__Sample

bin_1 :: Cycle (Maybe Note)
bin_1 = noteFromSample S.bin_1__Sample

x_808mc :: Cycle (Maybe Note)
x_808mc = noteFromSample S.x_808mc_0__Sample

x_808mc_0 :: Cycle (Maybe Note)
x_808mc_0 = noteFromSample S.x_808mc_0__Sample

x_808mc_1 :: Cycle (Maybe Note)
x_808mc_1 = noteFromSample S.x_808mc_1__Sample

x_808mc_2 :: Cycle (Maybe Note)
x_808mc_2 = noteFromSample S.x_808mc_2__Sample

x_808mc_3 :: Cycle (Maybe Note)
x_808mc_3 = noteFromSample S.x_808mc_3__Sample

x_808mc_4 :: Cycle (Maybe Note)
x_808mc_4 = noteFromSample S.x_808mc_4__Sample

lt :: Cycle (Maybe Note)
lt = noteFromSample S.lt_0__Sample

lt_0 :: Cycle (Maybe Note)
lt_0 = noteFromSample S.lt_0__Sample

lt_1 :: Cycle (Maybe Note)
lt_1 = noteFromSample S.lt_1__Sample

lt_2 :: Cycle (Maybe Note)
lt_2 = noteFromSample S.lt_2__Sample

lt_3 :: Cycle (Maybe Note)
lt_3 = noteFromSample S.lt_3__Sample

lt_4 :: Cycle (Maybe Note)
lt_4 = noteFromSample S.lt_4__Sample

lt_5 :: Cycle (Maybe Note)
lt_5 = noteFromSample S.lt_5__Sample

lt_6 :: Cycle (Maybe Note)
lt_6 = noteFromSample S.lt_6__Sample

lt_7 :: Cycle (Maybe Note)
lt_7 = noteFromSample S.lt_7__Sample

lt_8 :: Cycle (Maybe Note)
lt_8 = noteFromSample S.lt_8__Sample

lt_9 :: Cycle (Maybe Note)
lt_9 = noteFromSample S.lt_9__Sample

lt_10 :: Cycle (Maybe Note)
lt_10 = noteFromSample S.lt_10__Sample

lt_11 :: Cycle (Maybe Note)
lt_11 = noteFromSample S.lt_11__Sample

lt_12 :: Cycle (Maybe Note)
lt_12 = noteFromSample S.lt_12__Sample

lt_13 :: Cycle (Maybe Note)
lt_13 = noteFromSample S.lt_13__Sample

lt_14 :: Cycle (Maybe Note)
lt_14 = noteFromSample S.lt_14__Sample

lt_15 :: Cycle (Maybe Note)
lt_15 = noteFromSample S.lt_15__Sample

amencutup :: Cycle (Maybe Note)
amencutup = noteFromSample S.amencutup_0__Sample

amencutup_0 :: Cycle (Maybe Note)
amencutup_0 = noteFromSample S.amencutup_0__Sample

amencutup_1 :: Cycle (Maybe Note)
amencutup_1 = noteFromSample S.amencutup_1__Sample

amencutup_2 :: Cycle (Maybe Note)
amencutup_2 = noteFromSample S.amencutup_2__Sample

amencutup_3 :: Cycle (Maybe Note)
amencutup_3 = noteFromSample S.amencutup_3__Sample

amencutup_4 :: Cycle (Maybe Note)
amencutup_4 = noteFromSample S.amencutup_4__Sample

amencutup_5 :: Cycle (Maybe Note)
amencutup_5 = noteFromSample S.amencutup_5__Sample

amencutup_6 :: Cycle (Maybe Note)
amencutup_6 = noteFromSample S.amencutup_6__Sample

amencutup_7 :: Cycle (Maybe Note)
amencutup_7 = noteFromSample S.amencutup_7__Sample

amencutup_8 :: Cycle (Maybe Note)
amencutup_8 = noteFromSample S.amencutup_8__Sample

amencutup_9 :: Cycle (Maybe Note)
amencutup_9 = noteFromSample S.amencutup_9__Sample

amencutup_10 :: Cycle (Maybe Note)
amencutup_10 = noteFromSample S.amencutup_10__Sample

amencutup_11 :: Cycle (Maybe Note)
amencutup_11 = noteFromSample S.amencutup_11__Sample

amencutup_12 :: Cycle (Maybe Note)
amencutup_12 = noteFromSample S.amencutup_12__Sample

amencutup_13 :: Cycle (Maybe Note)
amencutup_13 = noteFromSample S.amencutup_13__Sample

amencutup_14 :: Cycle (Maybe Note)
amencutup_14 = noteFromSample S.amencutup_14__Sample

amencutup_15 :: Cycle (Maybe Note)
amencutup_15 = noteFromSample S.amencutup_15__Sample

amencutup_16 :: Cycle (Maybe Note)
amencutup_16 = noteFromSample S.amencutup_16__Sample

amencutup_17 :: Cycle (Maybe Note)
amencutup_17 = noteFromSample S.amencutup_17__Sample

amencutup_18 :: Cycle (Maybe Note)
amencutup_18 = noteFromSample S.amencutup_18__Sample

amencutup_19 :: Cycle (Maybe Note)
amencutup_19 = noteFromSample S.amencutup_19__Sample

amencutup_20 :: Cycle (Maybe Note)
amencutup_20 = noteFromSample S.amencutup_20__Sample

amencutup_21 :: Cycle (Maybe Note)
amencutup_21 = noteFromSample S.amencutup_21__Sample

amencutup_22 :: Cycle (Maybe Note)
amencutup_22 = noteFromSample S.amencutup_22__Sample

amencutup_23 :: Cycle (Maybe Note)
amencutup_23 = noteFromSample S.amencutup_23__Sample

amencutup_24 :: Cycle (Maybe Note)
amencutup_24 = noteFromSample S.amencutup_24__Sample

amencutup_25 :: Cycle (Maybe Note)
amencutup_25 = noteFromSample S.amencutup_25__Sample

amencutup_26 :: Cycle (Maybe Note)
amencutup_26 = noteFromSample S.amencutup_26__Sample

amencutup_27 :: Cycle (Maybe Note)
amencutup_27 = noteFromSample S.amencutup_27__Sample

amencutup_28 :: Cycle (Maybe Note)
amencutup_28 = noteFromSample S.amencutup_28__Sample

amencutup_29 :: Cycle (Maybe Note)
amencutup_29 = noteFromSample S.amencutup_29__Sample

amencutup_30 :: Cycle (Maybe Note)
amencutup_30 = noteFromSample S.amencutup_30__Sample

amencutup_31 :: Cycle (Maybe Note)
amencutup_31 = noteFromSample S.amencutup_31__Sample

drum :: Cycle (Maybe Note)
drum = noteFromSample S.drum_0__Sample

drum_0 :: Cycle (Maybe Note)
drum_0 = noteFromSample S.drum_0__Sample

drum_1 :: Cycle (Maybe Note)
drum_1 = noteFromSample S.drum_1__Sample

drum_2 :: Cycle (Maybe Note)
drum_2 = noteFromSample S.drum_2__Sample

drum_3 :: Cycle (Maybe Note)
drum_3 = noteFromSample S.drum_3__Sample

drum_4 :: Cycle (Maybe Note)
drum_4 = noteFromSample S.drum_4__Sample

drum_5 :: Cycle (Maybe Note)
drum_5 = noteFromSample S.drum_5__Sample

coins :: Cycle (Maybe Note)
coins = noteFromSample S.coins_0__Sample

coins_0 :: Cycle (Maybe Note)
coins_0 = noteFromSample S.coins_0__Sample

industrial :: Cycle (Maybe Note)
industrial = noteFromSample S.industrial_0__Sample

industrial_0 :: Cycle (Maybe Note)
industrial_0 = noteFromSample S.industrial_0__Sample

industrial_1 :: Cycle (Maybe Note)
industrial_1 = noteFromSample S.industrial_1__Sample

industrial_2 :: Cycle (Maybe Note)
industrial_2 = noteFromSample S.industrial_2__Sample

industrial_3 :: Cycle (Maybe Note)
industrial_3 = noteFromSample S.industrial_3__Sample

industrial_4 :: Cycle (Maybe Note)
industrial_4 = noteFromSample S.industrial_4__Sample

industrial_5 :: Cycle (Maybe Note)
industrial_5 = noteFromSample S.industrial_5__Sample

industrial_6 :: Cycle (Maybe Note)
industrial_6 = noteFromSample S.industrial_6__Sample

industrial_7 :: Cycle (Maybe Note)
industrial_7 = noteFromSample S.industrial_7__Sample

industrial_8 :: Cycle (Maybe Note)
industrial_8 = noteFromSample S.industrial_8__Sample

industrial_9 :: Cycle (Maybe Note)
industrial_9 = noteFromSample S.industrial_9__Sample

industrial_10 :: Cycle (Maybe Note)
industrial_10 = noteFromSample S.industrial_10__Sample

industrial_11 :: Cycle (Maybe Note)
industrial_11 = noteFromSample S.industrial_11__Sample

industrial_12 :: Cycle (Maybe Note)
industrial_12 = noteFromSample S.industrial_12__Sample

industrial_13 :: Cycle (Maybe Note)
industrial_13 = noteFromSample S.industrial_13__Sample

industrial_14 :: Cycle (Maybe Note)
industrial_14 = noteFromSample S.industrial_14__Sample

industrial_15 :: Cycle (Maybe Note)
industrial_15 = noteFromSample S.industrial_15__Sample

industrial_16 :: Cycle (Maybe Note)
industrial_16 = noteFromSample S.industrial_16__Sample

industrial_17 :: Cycle (Maybe Note)
industrial_17 = noteFromSample S.industrial_17__Sample

industrial_18 :: Cycle (Maybe Note)
industrial_18 = noteFromSample S.industrial_18__Sample

industrial_19 :: Cycle (Maybe Note)
industrial_19 = noteFromSample S.industrial_19__Sample

industrial_20 :: Cycle (Maybe Note)
industrial_20 = noteFromSample S.industrial_20__Sample

industrial_21 :: Cycle (Maybe Note)
industrial_21 = noteFromSample S.industrial_21__Sample

industrial_22 :: Cycle (Maybe Note)
industrial_22 = noteFromSample S.industrial_22__Sample

industrial_23 :: Cycle (Maybe Note)
industrial_23 = noteFromSample S.industrial_23__Sample

industrial_24 :: Cycle (Maybe Note)
industrial_24 = noteFromSample S.industrial_24__Sample

industrial_25 :: Cycle (Maybe Note)
industrial_25 = noteFromSample S.industrial_25__Sample

industrial_26 :: Cycle (Maybe Note)
industrial_26 = noteFromSample S.industrial_26__Sample

industrial_27 :: Cycle (Maybe Note)
industrial_27 = noteFromSample S.industrial_27__Sample

industrial_28 :: Cycle (Maybe Note)
industrial_28 = noteFromSample S.industrial_28__Sample

industrial_29 :: Cycle (Maybe Note)
industrial_29 = noteFromSample S.industrial_29__Sample

industrial_30 :: Cycle (Maybe Note)
industrial_30 = noteFromSample S.industrial_30__Sample

industrial_31 :: Cycle (Maybe Note)
industrial_31 = noteFromSample S.industrial_31__Sample

tink :: Cycle (Maybe Note)
tink = noteFromSample S.tink_0__Sample

tink_0 :: Cycle (Maybe Note)
tink_0 = noteFromSample S.tink_0__Sample

tink_1 :: Cycle (Maybe Note)
tink_1 = noteFromSample S.tink_1__Sample

tink_2 :: Cycle (Maybe Note)
tink_2 = noteFromSample S.tink_2__Sample

tink_3 :: Cycle (Maybe Note)
tink_3 = noteFromSample S.tink_3__Sample

tink_4 :: Cycle (Maybe Note)
tink_4 = noteFromSample S.tink_4__Sample

co :: Cycle (Maybe Note)
co = noteFromSample S.co_0__Sample

co_0 :: Cycle (Maybe Note)
co_0 = noteFromSample S.co_0__Sample

co_1 :: Cycle (Maybe Note)
co_1 = noteFromSample S.co_1__Sample

co_2 :: Cycle (Maybe Note)
co_2 = noteFromSample S.co_2__Sample

co_3 :: Cycle (Maybe Note)
co_3 = noteFromSample S.co_3__Sample

fest :: Cycle (Maybe Note)
fest = noteFromSample S.fest_0__Sample

fest_0 :: Cycle (Maybe Note)
fest_0 = noteFromSample S.fest_0__Sample

feelfx :: Cycle (Maybe Note)
feelfx = noteFromSample S.feelfx_0__Sample

feelfx_0 :: Cycle (Maybe Note)
feelfx_0 = noteFromSample S.feelfx_0__Sample

feelfx_1 :: Cycle (Maybe Note)
feelfx_1 = noteFromSample S.feelfx_1__Sample

feelfx_2 :: Cycle (Maybe Note)
feelfx_2 = noteFromSample S.feelfx_2__Sample

feelfx_3 :: Cycle (Maybe Note)
feelfx_3 = noteFromSample S.feelfx_3__Sample

feelfx_4 :: Cycle (Maybe Note)
feelfx_4 = noteFromSample S.feelfx_4__Sample

feelfx_5 :: Cycle (Maybe Note)
feelfx_5 = noteFromSample S.feelfx_5__Sample

feelfx_6 :: Cycle (Maybe Note)
feelfx_6 = noteFromSample S.feelfx_6__Sample

feelfx_7 :: Cycle (Maybe Note)
feelfx_7 = noteFromSample S.feelfx_7__Sample

x_808cy :: Cycle (Maybe Note)
x_808cy = noteFromSample S.x_808cy_0__Sample

x_808cy_0 :: Cycle (Maybe Note)
x_808cy_0 = noteFromSample S.x_808cy_0__Sample

x_808cy_1 :: Cycle (Maybe Note)
x_808cy_1 = noteFromSample S.x_808cy_1__Sample

x_808cy_2 :: Cycle (Maybe Note)
x_808cy_2 = noteFromSample S.x_808cy_2__Sample

x_808cy_3 :: Cycle (Maybe Note)
x_808cy_3 = noteFromSample S.x_808cy_3__Sample

x_808cy_4 :: Cycle (Maybe Note)
x_808cy_4 = noteFromSample S.x_808cy_4__Sample

x_808cy_5 :: Cycle (Maybe Note)
x_808cy_5 = noteFromSample S.x_808cy_5__Sample

x_808cy_6 :: Cycle (Maybe Note)
x_808cy_6 = noteFromSample S.x_808cy_6__Sample

x_808cy_7 :: Cycle (Maybe Note)
x_808cy_7 = noteFromSample S.x_808cy_7__Sample

x_808cy_8 :: Cycle (Maybe Note)
x_808cy_8 = noteFromSample S.x_808cy_8__Sample

x_808cy_9 :: Cycle (Maybe Note)
x_808cy_9 = noteFromSample S.x_808cy_9__Sample

x_808cy_10 :: Cycle (Maybe Note)
x_808cy_10 = noteFromSample S.x_808cy_10__Sample

x_808cy_11 :: Cycle (Maybe Note)
x_808cy_11 = noteFromSample S.x_808cy_11__Sample

x_808cy_12 :: Cycle (Maybe Note)
x_808cy_12 = noteFromSample S.x_808cy_12__Sample

x_808cy_13 :: Cycle (Maybe Note)
x_808cy_13 = noteFromSample S.x_808cy_13__Sample

x_808cy_14 :: Cycle (Maybe Note)
x_808cy_14 = noteFromSample S.x_808cy_14__Sample

x_808cy_15 :: Cycle (Maybe Note)
x_808cy_15 = noteFromSample S.x_808cy_15__Sample

x_808cy_16 :: Cycle (Maybe Note)
x_808cy_16 = noteFromSample S.x_808cy_16__Sample

x_808cy_17 :: Cycle (Maybe Note)
x_808cy_17 = noteFromSample S.x_808cy_17__Sample

x_808cy_18 :: Cycle (Maybe Note)
x_808cy_18 = noteFromSample S.x_808cy_18__Sample

x_808cy_19 :: Cycle (Maybe Note)
x_808cy_19 = noteFromSample S.x_808cy_19__Sample

x_808cy_20 :: Cycle (Maybe Note)
x_808cy_20 = noteFromSample S.x_808cy_20__Sample

x_808cy_21 :: Cycle (Maybe Note)
x_808cy_21 = noteFromSample S.x_808cy_21__Sample

x_808cy_22 :: Cycle (Maybe Note)
x_808cy_22 = noteFromSample S.x_808cy_22__Sample

x_808cy_23 :: Cycle (Maybe Note)
x_808cy_23 = noteFromSample S.x_808cy_23__Sample

x_808cy_24 :: Cycle (Maybe Note)
x_808cy_24 = noteFromSample S.x_808cy_24__Sample

world :: Cycle (Maybe Note)
world = noteFromSample S.world_0__Sample

world_0 :: Cycle (Maybe Note)
world_0 = noteFromSample S.world_0__Sample

world_1 :: Cycle (Maybe Note)
world_1 = noteFromSample S.world_1__Sample

world_2 :: Cycle (Maybe Note)
world_2 = noteFromSample S.world_2__Sample

f :: Cycle (Maybe Note)
f = noteFromSample S.f_0__Sample

f_0 :: Cycle (Maybe Note)
f_0 = noteFromSample S.f_0__Sample

numbers :: Cycle (Maybe Note)
numbers = noteFromSample S.numbers_0__Sample

numbers_0 :: Cycle (Maybe Note)
numbers_0 = noteFromSample S.numbers_0__Sample

numbers_1 :: Cycle (Maybe Note)
numbers_1 = noteFromSample S.numbers_1__Sample

numbers_2 :: Cycle (Maybe Note)
numbers_2 = noteFromSample S.numbers_2__Sample

numbers_3 :: Cycle (Maybe Note)
numbers_3 = noteFromSample S.numbers_3__Sample

numbers_4 :: Cycle (Maybe Note)
numbers_4 = noteFromSample S.numbers_4__Sample

numbers_5 :: Cycle (Maybe Note)
numbers_5 = noteFromSample S.numbers_5__Sample

numbers_6 :: Cycle (Maybe Note)
numbers_6 = noteFromSample S.numbers_6__Sample

numbers_7 :: Cycle (Maybe Note)
numbers_7 = noteFromSample S.numbers_7__Sample

numbers_8 :: Cycle (Maybe Note)
numbers_8 = noteFromSample S.numbers_8__Sample

d :: Cycle (Maybe Note)
d = noteFromSample S.d_0__Sample

d_0 :: Cycle (Maybe Note)
d_0 = noteFromSample S.d_0__Sample

d_1 :: Cycle (Maybe Note)
d_1 = noteFromSample S.d_1__Sample

d_2 :: Cycle (Maybe Note)
d_2 = noteFromSample S.d_2__Sample

d_3 :: Cycle (Maybe Note)
d_3 = noteFromSample S.d_3__Sample

padlong :: Cycle (Maybe Note)
padlong = noteFromSample S.padlong_0__Sample

padlong_0 :: Cycle (Maybe Note)
padlong_0 = noteFromSample S.padlong_0__Sample

sequential :: Cycle (Maybe Note)
sequential = noteFromSample S.sequential_0__Sample

sequential_0 :: Cycle (Maybe Note)
sequential_0 = noteFromSample S.sequential_0__Sample

sequential_1 :: Cycle (Maybe Note)
sequential_1 = noteFromSample S.sequential_1__Sample

sequential_2 :: Cycle (Maybe Note)
sequential_2 = noteFromSample S.sequential_2__Sample

sequential_3 :: Cycle (Maybe Note)
sequential_3 = noteFromSample S.sequential_3__Sample

sequential_4 :: Cycle (Maybe Note)
sequential_4 = noteFromSample S.sequential_4__Sample

sequential_5 :: Cycle (Maybe Note)
sequential_5 = noteFromSample S.sequential_5__Sample

sequential_6 :: Cycle (Maybe Note)
sequential_6 = noteFromSample S.sequential_6__Sample

sequential_7 :: Cycle (Maybe Note)
sequential_7 = noteFromSample S.sequential_7__Sample

stab :: Cycle (Maybe Note)
stab = noteFromSample S.stab_0__Sample

stab_0 :: Cycle (Maybe Note)
stab_0 = noteFromSample S.stab_0__Sample

stab_1 :: Cycle (Maybe Note)
stab_1 = noteFromSample S.stab_1__Sample

stab_2 :: Cycle (Maybe Note)
stab_2 = noteFromSample S.stab_2__Sample

stab_3 :: Cycle (Maybe Note)
stab_3 = noteFromSample S.stab_3__Sample

stab_4 :: Cycle (Maybe Note)
stab_4 = noteFromSample S.stab_4__Sample

stab_5 :: Cycle (Maybe Note)
stab_5 = noteFromSample S.stab_5__Sample

stab_6 :: Cycle (Maybe Note)
stab_6 = noteFromSample S.stab_6__Sample

stab_7 :: Cycle (Maybe Note)
stab_7 = noteFromSample S.stab_7__Sample

stab_8 :: Cycle (Maybe Note)
stab_8 = noteFromSample S.stab_8__Sample

stab_9 :: Cycle (Maybe Note)
stab_9 = noteFromSample S.stab_9__Sample

stab_10 :: Cycle (Maybe Note)
stab_10 = noteFromSample S.stab_10__Sample

stab_11 :: Cycle (Maybe Note)
stab_11 = noteFromSample S.stab_11__Sample

stab_12 :: Cycle (Maybe Note)
stab_12 = noteFromSample S.stab_12__Sample

stab_13 :: Cycle (Maybe Note)
stab_13 = noteFromSample S.stab_13__Sample

stab_14 :: Cycle (Maybe Note)
stab_14 = noteFromSample S.stab_14__Sample

stab_15 :: Cycle (Maybe Note)
stab_15 = noteFromSample S.stab_15__Sample

stab_16 :: Cycle (Maybe Note)
stab_16 = noteFromSample S.stab_16__Sample

stab_17 :: Cycle (Maybe Note)
stab_17 = noteFromSample S.stab_17__Sample

stab_18 :: Cycle (Maybe Note)
stab_18 = noteFromSample S.stab_18__Sample

stab_19 :: Cycle (Maybe Note)
stab_19 = noteFromSample S.stab_19__Sample

stab_20 :: Cycle (Maybe Note)
stab_20 = noteFromSample S.stab_20__Sample

stab_21 :: Cycle (Maybe Note)
stab_21 = noteFromSample S.stab_21__Sample

stab_22 :: Cycle (Maybe Note)
stab_22 = noteFromSample S.stab_22__Sample

electro1 :: Cycle (Maybe Note)
electro1 = noteFromSample S.electro1_0__Sample

electro1_0 :: Cycle (Maybe Note)
electro1_0 = noteFromSample S.electro1_0__Sample

electro1_1 :: Cycle (Maybe Note)
electro1_1 = noteFromSample S.electro1_1__Sample

electro1_2 :: Cycle (Maybe Note)
electro1_2 = noteFromSample S.electro1_2__Sample

electro1_3 :: Cycle (Maybe Note)
electro1_3 = noteFromSample S.electro1_3__Sample

electro1_4 :: Cycle (Maybe Note)
electro1_4 = noteFromSample S.electro1_4__Sample

electro1_5 :: Cycle (Maybe Note)
electro1_5 = noteFromSample S.electro1_5__Sample

electro1_6 :: Cycle (Maybe Note)
electro1_6 = noteFromSample S.electro1_6__Sample

electro1_7 :: Cycle (Maybe Note)
electro1_7 = noteFromSample S.electro1_7__Sample

electro1_8 :: Cycle (Maybe Note)
electro1_8 = noteFromSample S.electro1_8__Sample

electro1_9 :: Cycle (Maybe Note)
electro1_9 = noteFromSample S.electro1_9__Sample

electro1_10 :: Cycle (Maybe Note)
electro1_10 = noteFromSample S.electro1_10__Sample

electro1_11 :: Cycle (Maybe Note)
electro1_11 = noteFromSample S.electro1_11__Sample

electro1_12 :: Cycle (Maybe Note)
electro1_12 = noteFromSample S.electro1_12__Sample

ifdrums :: Cycle (Maybe Note)
ifdrums = noteFromSample S.ifdrums_0__Sample

ifdrums_0 :: Cycle (Maybe Note)
ifdrums_0 = noteFromSample S.ifdrums_0__Sample

ifdrums_1 :: Cycle (Maybe Note)
ifdrums_1 = noteFromSample S.ifdrums_1__Sample

ifdrums_2 :: Cycle (Maybe Note)
ifdrums_2 = noteFromSample S.ifdrums_2__Sample

invaders :: Cycle (Maybe Note)
invaders = noteFromSample S.invaders_0__Sample

invaders_0 :: Cycle (Maybe Note)
invaders_0 = noteFromSample S.invaders_0__Sample

invaders_1 :: Cycle (Maybe Note)
invaders_1 = noteFromSample S.invaders_1__Sample

invaders_2 :: Cycle (Maybe Note)
invaders_2 = noteFromSample S.invaders_2__Sample

invaders_3 :: Cycle (Maybe Note)
invaders_3 = noteFromSample S.invaders_3__Sample

invaders_4 :: Cycle (Maybe Note)
invaders_4 = noteFromSample S.invaders_4__Sample

invaders_5 :: Cycle (Maybe Note)
invaders_5 = noteFromSample S.invaders_5__Sample

invaders_6 :: Cycle (Maybe Note)
invaders_6 = noteFromSample S.invaders_6__Sample

invaders_7 :: Cycle (Maybe Note)
invaders_7 = noteFromSample S.invaders_7__Sample

invaders_8 :: Cycle (Maybe Note)
invaders_8 = noteFromSample S.invaders_8__Sample

invaders_9 :: Cycle (Maybe Note)
invaders_9 = noteFromSample S.invaders_9__Sample

invaders_10 :: Cycle (Maybe Note)
invaders_10 = noteFromSample S.invaders_10__Sample

invaders_11 :: Cycle (Maybe Note)
invaders_11 = noteFromSample S.invaders_11__Sample

invaders_12 :: Cycle (Maybe Note)
invaders_12 = noteFromSample S.invaders_12__Sample

invaders_13 :: Cycle (Maybe Note)
invaders_13 = noteFromSample S.invaders_13__Sample

invaders_14 :: Cycle (Maybe Note)
invaders_14 = noteFromSample S.invaders_14__Sample

invaders_15 :: Cycle (Maybe Note)
invaders_15 = noteFromSample S.invaders_15__Sample

invaders_16 :: Cycle (Maybe Note)
invaders_16 = noteFromSample S.invaders_16__Sample

invaders_17 :: Cycle (Maybe Note)
invaders_17 = noteFromSample S.invaders_17__Sample

dist :: Cycle (Maybe Note)
dist = noteFromSample S.dist_0__Sample

dist_0 :: Cycle (Maybe Note)
dist_0 = noteFromSample S.dist_0__Sample

dist_1 :: Cycle (Maybe Note)
dist_1 = noteFromSample S.dist_1__Sample

dist_2 :: Cycle (Maybe Note)
dist_2 = noteFromSample S.dist_2__Sample

dist_3 :: Cycle (Maybe Note)
dist_3 = noteFromSample S.dist_3__Sample

dist_4 :: Cycle (Maybe Note)
dist_4 = noteFromSample S.dist_4__Sample

dist_5 :: Cycle (Maybe Note)
dist_5 = noteFromSample S.dist_5__Sample

dist_6 :: Cycle (Maybe Note)
dist_6 = noteFromSample S.dist_6__Sample

dist_7 :: Cycle (Maybe Note)
dist_7 = noteFromSample S.dist_7__Sample

dist_8 :: Cycle (Maybe Note)
dist_8 = noteFromSample S.dist_8__Sample

dist_9 :: Cycle (Maybe Note)
dist_9 = noteFromSample S.dist_9__Sample

dist_10 :: Cycle (Maybe Note)
dist_10 = noteFromSample S.dist_10__Sample

dist_11 :: Cycle (Maybe Note)
dist_11 = noteFromSample S.dist_11__Sample

dist_12 :: Cycle (Maybe Note)
dist_12 = noteFromSample S.dist_12__Sample

dist_13 :: Cycle (Maybe Note)
dist_13 = noteFromSample S.dist_13__Sample

dist_14 :: Cycle (Maybe Note)
dist_14 = noteFromSample S.dist_14__Sample

dist_15 :: Cycle (Maybe Note)
dist_15 = noteFromSample S.dist_15__Sample

sundance :: Cycle (Maybe Note)
sundance = noteFromSample S.sundance_0__Sample

sundance_0 :: Cycle (Maybe Note)
sundance_0 = noteFromSample S.sundance_0__Sample

sundance_1 :: Cycle (Maybe Note)
sundance_1 = noteFromSample S.sundance_1__Sample

sundance_2 :: Cycle (Maybe Note)
sundance_2 = noteFromSample S.sundance_2__Sample

sundance_3 :: Cycle (Maybe Note)
sundance_3 = noteFromSample S.sundance_3__Sample

sundance_4 :: Cycle (Maybe Note)
sundance_4 = noteFromSample S.sundance_4__Sample

sundance_5 :: Cycle (Maybe Note)
sundance_5 = noteFromSample S.sundance_5__Sample

speech :: Cycle (Maybe Note)
speech = noteFromSample S.speech_0__Sample

speech_0 :: Cycle (Maybe Note)
speech_0 = noteFromSample S.speech_0__Sample

speech_1 :: Cycle (Maybe Note)
speech_1 = noteFromSample S.speech_1__Sample

speech_2 :: Cycle (Maybe Note)
speech_2 = noteFromSample S.speech_2__Sample

speech_3 :: Cycle (Maybe Note)
speech_3 = noteFromSample S.speech_3__Sample

speech_4 :: Cycle (Maybe Note)
speech_4 = noteFromSample S.speech_4__Sample

speech_5 :: Cycle (Maybe Note)
speech_5 = noteFromSample S.speech_5__Sample

speech_6 :: Cycle (Maybe Note)
speech_6 = noteFromSample S.speech_6__Sample

toys :: Cycle (Maybe Note)
toys = noteFromSample S.toys_0__Sample

toys_0 :: Cycle (Maybe Note)
toys_0 = noteFromSample S.toys_0__Sample

toys_1 :: Cycle (Maybe Note)
toys_1 = noteFromSample S.toys_1__Sample

toys_2 :: Cycle (Maybe Note)
toys_2 = noteFromSample S.toys_2__Sample

toys_3 :: Cycle (Maybe Note)
toys_3 = noteFromSample S.toys_3__Sample

toys_4 :: Cycle (Maybe Note)
toys_4 = noteFromSample S.toys_4__Sample

toys_5 :: Cycle (Maybe Note)
toys_5 = noteFromSample S.toys_5__Sample

toys_6 :: Cycle (Maybe Note)
toys_6 = noteFromSample S.toys_6__Sample

toys_7 :: Cycle (Maybe Note)
toys_7 = noteFromSample S.toys_7__Sample

toys_8 :: Cycle (Maybe Note)
toys_8 = noteFromSample S.toys_8__Sample

toys_9 :: Cycle (Maybe Note)
toys_9 = noteFromSample S.toys_9__Sample

toys_10 :: Cycle (Maybe Note)
toys_10 = noteFromSample S.toys_10__Sample

toys_11 :: Cycle (Maybe Note)
toys_11 = noteFromSample S.toys_11__Sample

toys_12 :: Cycle (Maybe Note)
toys_12 = noteFromSample S.toys_12__Sample

bass0 :: Cycle (Maybe Note)
bass0 = noteFromSample S.bass0_0__Sample

bass0_0 :: Cycle (Maybe Note)
bass0_0 = noteFromSample S.bass0_0__Sample

bass0_1 :: Cycle (Maybe Note)
bass0_1 = noteFromSample S.bass0_1__Sample

bass0_2 :: Cycle (Maybe Note)
bass0_2 = noteFromSample S.bass0_2__Sample

realclaps :: Cycle (Maybe Note)
realclaps = noteFromSample S.realclaps_0__Sample

realclaps_0 :: Cycle (Maybe Note)
realclaps_0 = noteFromSample S.realclaps_0__Sample

realclaps_1 :: Cycle (Maybe Note)
realclaps_1 = noteFromSample S.realclaps_1__Sample

realclaps_2 :: Cycle (Maybe Note)
realclaps_2 = noteFromSample S.realclaps_2__Sample

realclaps_3 :: Cycle (Maybe Note)
realclaps_3 = noteFromSample S.realclaps_3__Sample

dorkbot :: Cycle (Maybe Note)
dorkbot = noteFromSample S.dorkbot_0__Sample

dorkbot_0 :: Cycle (Maybe Note)
dorkbot_0 = noteFromSample S.dorkbot_0__Sample

dorkbot_1 :: Cycle (Maybe Note)
dorkbot_1 = noteFromSample S.dorkbot_1__Sample

arpy :: Cycle (Maybe Note)
arpy = noteFromSample S.arpy_0__Sample

arpy_0 :: Cycle (Maybe Note)
arpy_0 = noteFromSample S.arpy_0__Sample

arpy_1 :: Cycle (Maybe Note)
arpy_1 = noteFromSample S.arpy_1__Sample

arpy_2 :: Cycle (Maybe Note)
arpy_2 = noteFromSample S.arpy_2__Sample

arpy_3 :: Cycle (Maybe Note)
arpy_3 = noteFromSample S.arpy_3__Sample

arpy_4 :: Cycle (Maybe Note)
arpy_4 = noteFromSample S.arpy_4__Sample

arpy_5 :: Cycle (Maybe Note)
arpy_5 = noteFromSample S.arpy_5__Sample

arpy_6 :: Cycle (Maybe Note)
arpy_6 = noteFromSample S.arpy_6__Sample

arpy_7 :: Cycle (Maybe Note)
arpy_7 = noteFromSample S.arpy_7__Sample

arpy_8 :: Cycle (Maybe Note)
arpy_8 = noteFromSample S.arpy_8__Sample

arpy_9 :: Cycle (Maybe Note)
arpy_9 = noteFromSample S.arpy_9__Sample

arpy_10 :: Cycle (Maybe Note)
arpy_10 = noteFromSample S.arpy_10__Sample

fire :: Cycle (Maybe Note)
fire = noteFromSample S.fire_0__Sample

fire_0 :: Cycle (Maybe Note)
fire_0 = noteFromSample S.fire_0__Sample

hoover :: Cycle (Maybe Note)
hoover = noteFromSample S.hoover_0__Sample

hoover_0 :: Cycle (Maybe Note)
hoover_0 = noteFromSample S.hoover_0__Sample

hoover_1 :: Cycle (Maybe Note)
hoover_1 = noteFromSample S.hoover_1__Sample

hoover_2 :: Cycle (Maybe Note)
hoover_2 = noteFromSample S.hoover_2__Sample

hoover_3 :: Cycle (Maybe Note)
hoover_3 = noteFromSample S.hoover_3__Sample

hoover_4 :: Cycle (Maybe Note)
hoover_4 = noteFromSample S.hoover_4__Sample

hoover_5 :: Cycle (Maybe Note)
hoover_5 = noteFromSample S.hoover_5__Sample

breath :: Cycle (Maybe Note)
breath = noteFromSample S.breath_0__Sample

breath_0 :: Cycle (Maybe Note)
breath_0 = noteFromSample S.breath_0__Sample

rave :: Cycle (Maybe Note)
rave = noteFromSample S.rave_0__Sample

rave_0 :: Cycle (Maybe Note)
rave_0 = noteFromSample S.rave_0__Sample

rave_1 :: Cycle (Maybe Note)
rave_1 = noteFromSample S.rave_1__Sample

rave_2 :: Cycle (Maybe Note)
rave_2 = noteFromSample S.rave_2__Sample

rave_3 :: Cycle (Maybe Note)
rave_3 = noteFromSample S.rave_3__Sample

rave_4 :: Cycle (Maybe Note)
rave_4 = noteFromSample S.rave_4__Sample

rave_5 :: Cycle (Maybe Note)
rave_5 = noteFromSample S.rave_5__Sample

rave_6 :: Cycle (Maybe Note)
rave_6 = noteFromSample S.rave_6__Sample

rave_7 :: Cycle (Maybe Note)
rave_7 = noteFromSample S.rave_7__Sample

bottle :: Cycle (Maybe Note)
bottle = noteFromSample S.bottle_0__Sample

bottle_0 :: Cycle (Maybe Note)
bottle_0 = noteFromSample S.bottle_0__Sample

bottle_1 :: Cycle (Maybe Note)
bottle_1 = noteFromSample S.bottle_1__Sample

bottle_2 :: Cycle (Maybe Note)
bottle_2 = noteFromSample S.bottle_2__Sample

bottle_3 :: Cycle (Maybe Note)
bottle_3 = noteFromSample S.bottle_3__Sample

bottle_4 :: Cycle (Maybe Note)
bottle_4 = noteFromSample S.bottle_4__Sample

bottle_5 :: Cycle (Maybe Note)
bottle_5 = noteFromSample S.bottle_5__Sample

bottle_6 :: Cycle (Maybe Note)
bottle_6 = noteFromSample S.bottle_6__Sample

bottle_7 :: Cycle (Maybe Note)
bottle_7 = noteFromSample S.bottle_7__Sample

bottle_8 :: Cycle (Maybe Note)
bottle_8 = noteFromSample S.bottle_8__Sample

bottle_9 :: Cycle (Maybe Note)
bottle_9 = noteFromSample S.bottle_9__Sample

bottle_10 :: Cycle (Maybe Note)
bottle_10 = noteFromSample S.bottle_10__Sample

bottle_11 :: Cycle (Maybe Note)
bottle_11 = noteFromSample S.bottle_11__Sample

bottle_12 :: Cycle (Maybe Note)
bottle_12 = noteFromSample S.bottle_12__Sample

east :: Cycle (Maybe Note)
east = noteFromSample S.east_0__Sample

east_0 :: Cycle (Maybe Note)
east_0 = noteFromSample S.east_0__Sample

east_1 :: Cycle (Maybe Note)
east_1 = noteFromSample S.east_1__Sample

east_2 :: Cycle (Maybe Note)
east_2 = noteFromSample S.east_2__Sample

east_3 :: Cycle (Maybe Note)
east_3 = noteFromSample S.east_3__Sample

east_4 :: Cycle (Maybe Note)
east_4 = noteFromSample S.east_4__Sample

east_5 :: Cycle (Maybe Note)
east_5 = noteFromSample S.east_5__Sample

east_6 :: Cycle (Maybe Note)
east_6 = noteFromSample S.east_6__Sample

east_7 :: Cycle (Maybe Note)
east_7 = noteFromSample S.east_7__Sample

east_8 :: Cycle (Maybe Note)
east_8 = noteFromSample S.east_8__Sample

linnhats :: Cycle (Maybe Note)
linnhats = noteFromSample S.linnhats_0__Sample

linnhats_0 :: Cycle (Maybe Note)
linnhats_0 = noteFromSample S.linnhats_0__Sample

linnhats_1 :: Cycle (Maybe Note)
linnhats_1 = noteFromSample S.linnhats_1__Sample

linnhats_2 :: Cycle (Maybe Note)
linnhats_2 = noteFromSample S.linnhats_2__Sample

linnhats_3 :: Cycle (Maybe Note)
linnhats_3 = noteFromSample S.linnhats_3__Sample

linnhats_4 :: Cycle (Maybe Note)
linnhats_4 = noteFromSample S.linnhats_4__Sample

linnhats_5 :: Cycle (Maybe Note)
linnhats_5 = noteFromSample S.linnhats_5__Sample

speedupdown :: Cycle (Maybe Note)
speedupdown = noteFromSample S.speedupdown_0__Sample

speedupdown_0 :: Cycle (Maybe Note)
speedupdown_0 = noteFromSample S.speedupdown_0__Sample

speedupdown_1 :: Cycle (Maybe Note)
speedupdown_1 = noteFromSample S.speedupdown_1__Sample

speedupdown_2 :: Cycle (Maybe Note)
speedupdown_2 = noteFromSample S.speedupdown_2__Sample

speedupdown_3 :: Cycle (Maybe Note)
speedupdown_3 = noteFromSample S.speedupdown_3__Sample

speedupdown_4 :: Cycle (Maybe Note)
speedupdown_4 = noteFromSample S.speedupdown_4__Sample

speedupdown_5 :: Cycle (Maybe Note)
speedupdown_5 = noteFromSample S.speedupdown_5__Sample

speedupdown_6 :: Cycle (Maybe Note)
speedupdown_6 = noteFromSample S.speedupdown_6__Sample

speedupdown_7 :: Cycle (Maybe Note)
speedupdown_7 = noteFromSample S.speedupdown_7__Sample

speedupdown_8 :: Cycle (Maybe Note)
speedupdown_8 = noteFromSample S.speedupdown_8__Sample

cosmicg :: Cycle (Maybe Note)
cosmicg = noteFromSample S.cosmicg_0__Sample

cosmicg_0 :: Cycle (Maybe Note)
cosmicg_0 = noteFromSample S.cosmicg_0__Sample

cosmicg_1 :: Cycle (Maybe Note)
cosmicg_1 = noteFromSample S.cosmicg_1__Sample

cosmicg_2 :: Cycle (Maybe Note)
cosmicg_2 = noteFromSample S.cosmicg_2__Sample

cosmicg_3 :: Cycle (Maybe Note)
cosmicg_3 = noteFromSample S.cosmicg_3__Sample

cosmicg_4 :: Cycle (Maybe Note)
cosmicg_4 = noteFromSample S.cosmicg_4__Sample

cosmicg_5 :: Cycle (Maybe Note)
cosmicg_5 = noteFromSample S.cosmicg_5__Sample

cosmicg_6 :: Cycle (Maybe Note)
cosmicg_6 = noteFromSample S.cosmicg_6__Sample

cosmicg_7 :: Cycle (Maybe Note)
cosmicg_7 = noteFromSample S.cosmicg_7__Sample

cosmicg_8 :: Cycle (Maybe Note)
cosmicg_8 = noteFromSample S.cosmicg_8__Sample

cosmicg_9 :: Cycle (Maybe Note)
cosmicg_9 = noteFromSample S.cosmicg_9__Sample

cosmicg_10 :: Cycle (Maybe Note)
cosmicg_10 = noteFromSample S.cosmicg_10__Sample

cosmicg_11 :: Cycle (Maybe Note)
cosmicg_11 = noteFromSample S.cosmicg_11__Sample

cosmicg_12 :: Cycle (Maybe Note)
cosmicg_12 = noteFromSample S.cosmicg_12__Sample

cosmicg_13 :: Cycle (Maybe Note)
cosmicg_13 = noteFromSample S.cosmicg_13__Sample

cosmicg_14 :: Cycle (Maybe Note)
cosmicg_14 = noteFromSample S.cosmicg_14__Sample

jvbass :: Cycle (Maybe Note)
jvbass = noteFromSample S.jvbass_0__Sample

jvbass_0 :: Cycle (Maybe Note)
jvbass_0 = noteFromSample S.jvbass_0__Sample

jvbass_1 :: Cycle (Maybe Note)
jvbass_1 = noteFromSample S.jvbass_1__Sample

jvbass_2 :: Cycle (Maybe Note)
jvbass_2 = noteFromSample S.jvbass_2__Sample

jvbass_3 :: Cycle (Maybe Note)
jvbass_3 = noteFromSample S.jvbass_3__Sample

jvbass_4 :: Cycle (Maybe Note)
jvbass_4 = noteFromSample S.jvbass_4__Sample

jvbass_5 :: Cycle (Maybe Note)
jvbass_5 = noteFromSample S.jvbass_5__Sample

jvbass_6 :: Cycle (Maybe Note)
jvbass_6 = noteFromSample S.jvbass_6__Sample

jvbass_7 :: Cycle (Maybe Note)
jvbass_7 = noteFromSample S.jvbass_7__Sample

jvbass_8 :: Cycle (Maybe Note)
jvbass_8 = noteFromSample S.jvbass_8__Sample

jvbass_9 :: Cycle (Maybe Note)
jvbass_9 = noteFromSample S.jvbass_9__Sample

jvbass_10 :: Cycle (Maybe Note)
jvbass_10 = noteFromSample S.jvbass_10__Sample

jvbass_11 :: Cycle (Maybe Note)
jvbass_11 = noteFromSample S.jvbass_11__Sample

jvbass_12 :: Cycle (Maybe Note)
jvbass_12 = noteFromSample S.jvbass_12__Sample

mash :: Cycle (Maybe Note)
mash = noteFromSample S.mash_0__Sample

mash_0 :: Cycle (Maybe Note)
mash_0 = noteFromSample S.mash_0__Sample

mash_1 :: Cycle (Maybe Note)
mash_1 = noteFromSample S.mash_1__Sample

feel :: Cycle (Maybe Note)
feel = noteFromSample S.feel_0__Sample

feel_0 :: Cycle (Maybe Note)
feel_0 = noteFromSample S.feel_0__Sample

feel_1 :: Cycle (Maybe Note)
feel_1 = noteFromSample S.feel_1__Sample

feel_2 :: Cycle (Maybe Note)
feel_2 = noteFromSample S.feel_2__Sample

feel_3 :: Cycle (Maybe Note)
feel_3 = noteFromSample S.feel_3__Sample

feel_4 :: Cycle (Maybe Note)
feel_4 = noteFromSample S.feel_4__Sample

feel_5 :: Cycle (Maybe Note)
feel_5 = noteFromSample S.feel_5__Sample

feel_6 :: Cycle (Maybe Note)
feel_6 = noteFromSample S.feel_6__Sample

short :: Cycle (Maybe Note)
short = noteFromSample S.short_0__Sample

short_0 :: Cycle (Maybe Note)
short_0 = noteFromSample S.short_0__Sample

short_1 :: Cycle (Maybe Note)
short_1 = noteFromSample S.short_1__Sample

short_2 :: Cycle (Maybe Note)
short_2 = noteFromSample S.short_2__Sample

short_3 :: Cycle (Maybe Note)
short_3 = noteFromSample S.short_3__Sample

short_4 :: Cycle (Maybe Note)
short_4 = noteFromSample S.short_4__Sample

incoming :: Cycle (Maybe Note)
incoming = noteFromSample S.incoming_0__Sample

incoming_0 :: Cycle (Maybe Note)
incoming_0 = noteFromSample S.incoming_0__Sample

incoming_1 :: Cycle (Maybe Note)
incoming_1 = noteFromSample S.incoming_1__Sample

incoming_2 :: Cycle (Maybe Note)
incoming_2 = noteFromSample S.incoming_2__Sample

incoming_3 :: Cycle (Maybe Note)
incoming_3 = noteFromSample S.incoming_3__Sample

incoming_4 :: Cycle (Maybe Note)
incoming_4 = noteFromSample S.incoming_4__Sample

incoming_5 :: Cycle (Maybe Note)
incoming_5 = noteFromSample S.incoming_5__Sample

incoming_6 :: Cycle (Maybe Note)
incoming_6 = noteFromSample S.incoming_6__Sample

incoming_7 :: Cycle (Maybe Note)
incoming_7 = noteFromSample S.incoming_7__Sample

flick :: Cycle (Maybe Note)
flick = noteFromSample S.flick_0__Sample

flick_0 :: Cycle (Maybe Note)
flick_0 = noteFromSample S.flick_0__Sample

flick_1 :: Cycle (Maybe Note)
flick_1 = noteFromSample S.flick_1__Sample

flick_2 :: Cycle (Maybe Note)
flick_2 = noteFromSample S.flick_2__Sample

flick_3 :: Cycle (Maybe Note)
flick_3 = noteFromSample S.flick_3__Sample

flick_4 :: Cycle (Maybe Note)
flick_4 = noteFromSample S.flick_4__Sample

flick_5 :: Cycle (Maybe Note)
flick_5 = noteFromSample S.flick_5__Sample

flick_6 :: Cycle (Maybe Note)
flick_6 = noteFromSample S.flick_6__Sample

flick_7 :: Cycle (Maybe Note)
flick_7 = noteFromSample S.flick_7__Sample

flick_8 :: Cycle (Maybe Note)
flick_8 = noteFromSample S.flick_8__Sample

flick_9 :: Cycle (Maybe Note)
flick_9 = noteFromSample S.flick_9__Sample

flick_10 :: Cycle (Maybe Note)
flick_10 = noteFromSample S.flick_10__Sample

flick_11 :: Cycle (Maybe Note)
flick_11 = noteFromSample S.flick_11__Sample

flick_12 :: Cycle (Maybe Note)
flick_12 = noteFromSample S.flick_12__Sample

flick_13 :: Cycle (Maybe Note)
flick_13 = noteFromSample S.flick_13__Sample

flick_14 :: Cycle (Maybe Note)
flick_14 = noteFromSample S.flick_14__Sample

flick_15 :: Cycle (Maybe Note)
flick_15 = noteFromSample S.flick_15__Sample

flick_16 :: Cycle (Maybe Note)
flick_16 = noteFromSample S.flick_16__Sample

reverbkick :: Cycle (Maybe Note)
reverbkick = noteFromSample S.reverbkick_0__Sample

reverbkick_0 :: Cycle (Maybe Note)
reverbkick_0 = noteFromSample S.reverbkick_0__Sample

bass2 :: Cycle (Maybe Note)
bass2 = noteFromSample S.bass2_0__Sample

bass2_0 :: Cycle (Maybe Note)
bass2_0 = noteFromSample S.bass2_0__Sample

bass2_1 :: Cycle (Maybe Note)
bass2_1 = noteFromSample S.bass2_1__Sample

bass2_2 :: Cycle (Maybe Note)
bass2_2 = noteFromSample S.bass2_2__Sample

bass2_3 :: Cycle (Maybe Note)
bass2_3 = noteFromSample S.bass2_3__Sample

bass2_4 :: Cycle (Maybe Note)
bass2_4 = noteFromSample S.bass2_4__Sample

baa :: Cycle (Maybe Note)
baa = noteFromSample S.baa_0__Sample

baa_0 :: Cycle (Maybe Note)
baa_0 = noteFromSample S.baa_0__Sample

baa_1 :: Cycle (Maybe Note)
baa_1 = noteFromSample S.baa_1__Sample

baa_2 :: Cycle (Maybe Note)
baa_2 = noteFromSample S.baa_2__Sample

baa_3 :: Cycle (Maybe Note)
baa_3 = noteFromSample S.baa_3__Sample

baa_4 :: Cycle (Maybe Note)
baa_4 = noteFromSample S.baa_4__Sample

baa_5 :: Cycle (Maybe Note)
baa_5 = noteFromSample S.baa_5__Sample

baa_6 :: Cycle (Maybe Note)
baa_6 = noteFromSample S.baa_6__Sample

fm :: Cycle (Maybe Note)
fm = noteFromSample S.fm_0__Sample

fm_0 :: Cycle (Maybe Note)
fm_0 = noteFromSample S.fm_0__Sample

fm_1 :: Cycle (Maybe Note)
fm_1 = noteFromSample S.fm_1__Sample

fm_2 :: Cycle (Maybe Note)
fm_2 = noteFromSample S.fm_2__Sample

fm_3 :: Cycle (Maybe Note)
fm_3 = noteFromSample S.fm_3__Sample

fm_4 :: Cycle (Maybe Note)
fm_4 = noteFromSample S.fm_4__Sample

fm_5 :: Cycle (Maybe Note)
fm_5 = noteFromSample S.fm_5__Sample

fm_6 :: Cycle (Maybe Note)
fm_6 = noteFromSample S.fm_6__Sample

fm_7 :: Cycle (Maybe Note)
fm_7 = noteFromSample S.fm_7__Sample

fm_8 :: Cycle (Maybe Note)
fm_8 = noteFromSample S.fm_8__Sample

fm_9 :: Cycle (Maybe Note)
fm_9 = noteFromSample S.fm_9__Sample

fm_10 :: Cycle (Maybe Note)
fm_10 = noteFromSample S.fm_10__Sample

fm_11 :: Cycle (Maybe Note)
fm_11 = noteFromSample S.fm_11__Sample

fm_12 :: Cycle (Maybe Note)
fm_12 = noteFromSample S.fm_12__Sample

fm_13 :: Cycle (Maybe Note)
fm_13 = noteFromSample S.fm_13__Sample

fm_14 :: Cycle (Maybe Note)
fm_14 = noteFromSample S.fm_14__Sample

fm_15 :: Cycle (Maybe Note)
fm_15 = noteFromSample S.fm_15__Sample

fm_16 :: Cycle (Maybe Note)
fm_16 = noteFromSample S.fm_16__Sample

click :: Cycle (Maybe Note)
click = noteFromSample S.click_0__Sample

click_0 :: Cycle (Maybe Note)
click_0 = noteFromSample S.click_0__Sample

click_1 :: Cycle (Maybe Note)
click_1 = noteFromSample S.click_1__Sample

click_2 :: Cycle (Maybe Note)
click_2 = noteFromSample S.click_2__Sample

click_3 :: Cycle (Maybe Note)
click_3 = noteFromSample S.click_3__Sample

control :: Cycle (Maybe Note)
control = noteFromSample S.control_0__Sample

control_0 :: Cycle (Maybe Note)
control_0 = noteFromSample S.control_0__Sample

control_1 :: Cycle (Maybe Note)
control_1 = noteFromSample S.control_1__Sample

peri :: Cycle (Maybe Note)
peri = noteFromSample S.peri_0__Sample

peri_0 :: Cycle (Maybe Note)
peri_0 = noteFromSample S.peri_0__Sample

peri_1 :: Cycle (Maybe Note)
peri_1 = noteFromSample S.peri_1__Sample

peri_2 :: Cycle (Maybe Note)
peri_2 = noteFromSample S.peri_2__Sample

peri_3 :: Cycle (Maybe Note)
peri_3 = noteFromSample S.peri_3__Sample

peri_4 :: Cycle (Maybe Note)
peri_4 = noteFromSample S.peri_4__Sample

peri_5 :: Cycle (Maybe Note)
peri_5 = noteFromSample S.peri_5__Sample

peri_6 :: Cycle (Maybe Note)
peri_6 = noteFromSample S.peri_6__Sample

peri_7 :: Cycle (Maybe Note)
peri_7 = noteFromSample S.peri_7__Sample

peri_8 :: Cycle (Maybe Note)
peri_8 = noteFromSample S.peri_8__Sample

peri_9 :: Cycle (Maybe Note)
peri_9 = noteFromSample S.peri_9__Sample

peri_10 :: Cycle (Maybe Note)
peri_10 = noteFromSample S.peri_10__Sample

peri_11 :: Cycle (Maybe Note)
peri_11 = noteFromSample S.peri_11__Sample

peri_12 :: Cycle (Maybe Note)
peri_12 = noteFromSample S.peri_12__Sample

peri_13 :: Cycle (Maybe Note)
peri_13 = noteFromSample S.peri_13__Sample

peri_14 :: Cycle (Maybe Note)
peri_14 = noteFromSample S.peri_14__Sample

procshort :: Cycle (Maybe Note)
procshort = noteFromSample S.procshort_0__Sample

procshort_0 :: Cycle (Maybe Note)
procshort_0 = noteFromSample S.procshort_0__Sample

procshort_1 :: Cycle (Maybe Note)
procshort_1 = noteFromSample S.procshort_1__Sample

procshort_2 :: Cycle (Maybe Note)
procshort_2 = noteFromSample S.procshort_2__Sample

procshort_3 :: Cycle (Maybe Note)
procshort_3 = noteFromSample S.procshort_3__Sample

procshort_4 :: Cycle (Maybe Note)
procshort_4 = noteFromSample S.procshort_4__Sample

procshort_5 :: Cycle (Maybe Note)
procshort_5 = noteFromSample S.procshort_5__Sample

procshort_6 :: Cycle (Maybe Note)
procshort_6 = noteFromSample S.procshort_6__Sample

procshort_7 :: Cycle (Maybe Note)
procshort_7 = noteFromSample S.procshort_7__Sample

hand :: Cycle (Maybe Note)
hand = noteFromSample S.hand_0__Sample

hand_0 :: Cycle (Maybe Note)
hand_0 = noteFromSample S.hand_0__Sample

hand_1 :: Cycle (Maybe Note)
hand_1 = noteFromSample S.hand_1__Sample

hand_2 :: Cycle (Maybe Note)
hand_2 = noteFromSample S.hand_2__Sample

hand_3 :: Cycle (Maybe Note)
hand_3 = noteFromSample S.hand_3__Sample

hand_4 :: Cycle (Maybe Note)
hand_4 = noteFromSample S.hand_4__Sample

hand_5 :: Cycle (Maybe Note)
hand_5 = noteFromSample S.hand_5__Sample

hand_6 :: Cycle (Maybe Note)
hand_6 = noteFromSample S.hand_6__Sample

hand_7 :: Cycle (Maybe Note)
hand_7 = noteFromSample S.hand_7__Sample

hand_8 :: Cycle (Maybe Note)
hand_8 = noteFromSample S.hand_8__Sample

hand_9 :: Cycle (Maybe Note)
hand_9 = noteFromSample S.hand_9__Sample

hand_10 :: Cycle (Maybe Note)
hand_10 = noteFromSample S.hand_10__Sample

hand_11 :: Cycle (Maybe Note)
hand_11 = noteFromSample S.hand_11__Sample

hand_12 :: Cycle (Maybe Note)
hand_12 = noteFromSample S.hand_12__Sample

hand_13 :: Cycle (Maybe Note)
hand_13 = noteFromSample S.hand_13__Sample

hand_14 :: Cycle (Maybe Note)
hand_14 = noteFromSample S.hand_14__Sample

hand_15 :: Cycle (Maybe Note)
hand_15 = noteFromSample S.hand_15__Sample

hand_16 :: Cycle (Maybe Note)
hand_16 = noteFromSample S.hand_16__Sample

future :: Cycle (Maybe Note)
future = noteFromSample S.future_0__Sample

future_0 :: Cycle (Maybe Note)
future_0 = noteFromSample S.future_0__Sample

future_1 :: Cycle (Maybe Note)
future_1 = noteFromSample S.future_1__Sample

future_2 :: Cycle (Maybe Note)
future_2 = noteFromSample S.future_2__Sample

future_3 :: Cycle (Maybe Note)
future_3 = noteFromSample S.future_3__Sample

future_4 :: Cycle (Maybe Note)
future_4 = noteFromSample S.future_4__Sample

future_5 :: Cycle (Maybe Note)
future_5 = noteFromSample S.future_5__Sample

future_6 :: Cycle (Maybe Note)
future_6 = noteFromSample S.future_6__Sample

future_7 :: Cycle (Maybe Note)
future_7 = noteFromSample S.future_7__Sample

future_8 :: Cycle (Maybe Note)
future_8 = noteFromSample S.future_8__Sample

future_9 :: Cycle (Maybe Note)
future_9 = noteFromSample S.future_9__Sample

future_10 :: Cycle (Maybe Note)
future_10 = noteFromSample S.future_10__Sample

future_11 :: Cycle (Maybe Note)
future_11 = noteFromSample S.future_11__Sample

future_12 :: Cycle (Maybe Note)
future_12 = noteFromSample S.future_12__Sample

future_13 :: Cycle (Maybe Note)
future_13 = noteFromSample S.future_13__Sample

future_14 :: Cycle (Maybe Note)
future_14 = noteFromSample S.future_14__Sample

future_15 :: Cycle (Maybe Note)
future_15 = noteFromSample S.future_15__Sample

future_16 :: Cycle (Maybe Note)
future_16 = noteFromSample S.future_16__Sample

hh :: Cycle (Maybe Note)
hh = noteFromSample S.hh_0__Sample

hh_0 :: Cycle (Maybe Note)
hh_0 = noteFromSample S.hh_0__Sample

hh_1 :: Cycle (Maybe Note)
hh_1 = noteFromSample S.hh_1__Sample

hh_2 :: Cycle (Maybe Note)
hh_2 = noteFromSample S.hh_2__Sample

hh_3 :: Cycle (Maybe Note)
hh_3 = noteFromSample S.hh_3__Sample

hh_4 :: Cycle (Maybe Note)
hh_4 = noteFromSample S.hh_4__Sample

hh_5 :: Cycle (Maybe Note)
hh_5 = noteFromSample S.hh_5__Sample

hh_6 :: Cycle (Maybe Note)
hh_6 = noteFromSample S.hh_6__Sample

hh_7 :: Cycle (Maybe Note)
hh_7 = noteFromSample S.hh_7__Sample

hh_8 :: Cycle (Maybe Note)
hh_8 = noteFromSample S.hh_8__Sample

hh_9 :: Cycle (Maybe Note)
hh_9 = noteFromSample S.hh_9__Sample

hh_10 :: Cycle (Maybe Note)
hh_10 = noteFromSample S.hh_10__Sample

hh_11 :: Cycle (Maybe Note)
hh_11 = noteFromSample S.hh_11__Sample

hh_12 :: Cycle (Maybe Note)
hh_12 = noteFromSample S.hh_12__Sample

x_808ht :: Cycle (Maybe Note)
x_808ht = noteFromSample S.x_808ht_0__Sample

x_808ht_0 :: Cycle (Maybe Note)
x_808ht_0 = noteFromSample S.x_808ht_0__Sample

x_808ht_1 :: Cycle (Maybe Note)
x_808ht_1 = noteFromSample S.x_808ht_1__Sample

x_808ht_2 :: Cycle (Maybe Note)
x_808ht_2 = noteFromSample S.x_808ht_2__Sample

x_808ht_3 :: Cycle (Maybe Note)
x_808ht_3 = noteFromSample S.x_808ht_3__Sample

x_808ht_4 :: Cycle (Maybe Note)
x_808ht_4 = noteFromSample S.x_808ht_4__Sample

db :: Cycle (Maybe Note)
db = noteFromSample S.db_0__Sample

db_0 :: Cycle (Maybe Note)
db_0 = noteFromSample S.db_0__Sample

db_1 :: Cycle (Maybe Note)
db_1 = noteFromSample S.db_1__Sample

db_2 :: Cycle (Maybe Note)
db_2 = noteFromSample S.db_2__Sample

db_3 :: Cycle (Maybe Note)
db_3 = noteFromSample S.db_3__Sample

db_4 :: Cycle (Maybe Note)
db_4 = noteFromSample S.db_4__Sample

db_5 :: Cycle (Maybe Note)
db_5 = noteFromSample S.db_5__Sample

db_6 :: Cycle (Maybe Note)
db_6 = noteFromSample S.db_6__Sample

db_7 :: Cycle (Maybe Note)
db_7 = noteFromSample S.db_7__Sample

db_8 :: Cycle (Maybe Note)
db_8 = noteFromSample S.db_8__Sample

db_9 :: Cycle (Maybe Note)
db_9 = noteFromSample S.db_9__Sample

db_10 :: Cycle (Maybe Note)
db_10 = noteFromSample S.db_10__Sample

db_11 :: Cycle (Maybe Note)
db_11 = noteFromSample S.db_11__Sample

db_12 :: Cycle (Maybe Note)
db_12 = noteFromSample S.db_12__Sample