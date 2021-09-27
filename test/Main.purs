module Test.Main where

import Prelude

import Data.Either (Either(..))
import Data.List ((:))
import Data.List.Types (List(..), NonEmptyList(..))
import Data.Maybe (Maybe(..))
import Data.Newtype (wrap)
import Data.NonEmpty ((:|))
import Effect (Effect)
import Effect.Aff (launchAff_)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)
import Text.Parsing.StringParser (runParser)
import WAGSI.Plumbing.Cycle (noteFromSample)
import WAGSI.Plumbing.Samples (Note(..))
import WAGSI.Plumbing.Samples as S
import WAGSI.Plumbing.Tidal (Cycle(..), NoteInTime(..), cycleP, c2s, unrest)

main :: Effect Unit
main = do
  launchAff_
    $ runSpec [ consoleReporter ] do
        describe "Tests parser" do
          it "Works on simple imput" do
            runParser cycleP
              "tabla2:42" `shouldEqual` Right (noteFromSample S.tabla2_42__Sample)
            runParser cycleP
              "  tabla2:42" `shouldEqual` Right (noteFromSample S.tabla2_42__Sample)
            runParser cycleP
              "tabla2:42 hc:0" `shouldEqual` Right (Sequential { nel: NonEmptyList ((noteFromSample S.tabla2_42__Sample) :| (noteFromSample S.hc_0__Sample) : Nil) })
          it "Works on internal cycles" do
            runParser cycleP
              "[tabla2:42 hc:0] tabla2:42" `shouldEqual` Right (Sequential { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample S.tabla2_42__Sample) :| (noteFromSample S.hc_0__Sample) : Nil) } :| (noteFromSample S.tabla2_42__Sample) : Nil) })
          it "Works on branching cycles" do
            runParser cycleP
              "[tabla2:42 <hc:0 tech:0>] tabla2:42" `shouldEqual` Right (Sequential { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample S.tabla2_42__Sample) :| (Branching { nel: NonEmptyList ((noteFromSample S.hc_0__Sample) :| (noteFromSample S.tech_0__Sample) : Nil) }) : Nil) } :| (noteFromSample S.tabla2_42__Sample) : Nil) })
          it "Works on dual groups" do
            runParser cycleP
              "[tabla2 tabla2] [diphone2 <sitar latibro>]" `shouldEqual` Right
              ( Sequential
                  { nel: NonEmptyList
                      ( Internal
                          { nel: NonEmptyList
                              ( (noteFromSample S.tabla2_0__Sample)
                                  :| (noteFromSample S.tabla2_0__Sample) : Nil
                              )
                          } :|
                          Internal
                            { nel: NonEmptyList
                                ( (noteFromSample S.diphone2_0__Sample)
                                    :| (Branching { nel: NonEmptyList ((noteFromSample S.sitar_0__Sample) :| (noteFromSample S.latibro_0__Sample) : Nil) }) : Nil
                                )
                            } : Nil

                      )
                  }
              )
          it "Works on simultaneous cycles" do
            runParser cycleP
              "diphone2 diphone2  , tech:0 tech:2" `shouldEqual` Right
              ( Simultaneous
                  { nel: NonEmptyList
                      ( Sequential
                          { nel: NonEmptyList
                              ( (noteFromSample S.diphone2_0__Sample)
                                  :| (noteFromSample S.diphone2_0__Sample) : Nil
                              )
                          } :|
                          Sequential
                            { nel: NonEmptyList
                                ( (noteFromSample S.tech_0__Sample)
                                    :| (noteFromSample S.tech_2__Sample) : Nil
                                )
                            } : Nil
                      )
                  }
              )
          it "Works on simultaneous cycles 2" do
            runParser cycleP
              "[tabla2:42 <hc:0 tech:0>] , tabla2:42" `shouldEqual` Right (Simultaneous { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample S.tabla2_42__Sample) :| (Branching { nel: NonEmptyList ((noteFromSample S.hc_0__Sample) :| (noteFromSample S.tech_0__Sample) : Nil) }) : Nil) } :| (noteFromSample S.tabla2_42__Sample) : Nil) })
          it "Works on branching cycles with internal cycle" do
            runParser cycleP
              "[tabla2:42 <[hc:0 hc:0] tech:0>] tabla2:42" `shouldEqual` Right (Sequential { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample S.tabla2_42__Sample) :| (Branching { nel: NonEmptyList ((Internal { nel: NonEmptyList ((noteFromSample S.hc_0__Sample) :| (noteFromSample S.hc_0__Sample) : Nil) }) :| (noteFromSample S.tech_0__Sample) : Nil) }) : Nil) } :| (noteFromSample S.tabla2_42__Sample) : Nil) })
        describe "Test cycle to sequence" do
          let run = map (c2s $ wrap 1.0) <<< runParser cycleP
          it "Works on simple imput" do
            run "tabla2:42" `shouldEqual` Right (pure (NonEmptyList (NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| Nil)))
            run "tabla2:42 hc:0" `shouldEqual` Right (pure (NonEmptyList (NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on internal cycles" do
            run "[tabla2:42 hc:0] tabla2:42" `shouldEqual` Right (pure (NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on branching cycles" do
            run "[tabla2:42 <hc:0 tech:0>] tabla2:42" `shouldEqual` Right (NonEmptyList ((NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) :| (NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: S.tech_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
          it "Works on dual groups" do
            run "[tabla2 tabla2] [diphone2 <sitar latibro>]" `shouldEqual` Right (NonEmptyList ((NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: S.diphone2_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.75, cycleLength: 1.0, note: Just $ Note { sample: S.sitar_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) :| (NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: S.diphone2_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.75, cycleLength: 1.0, note: Just $ Note { sample: S.latibro_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
          it "Works on simultaneous cycles" do
            run "[tabla2:42 <hc:0 ~>] , hc:0" `shouldEqual` Right (NonEmptyList ((NonEmptyList (NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) :| (NonEmptyList (NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Nothing } : Nil)) : Nil))
        describe "Test cycle to sequence without rests" do
          let run = map (unrest <<< c2s (wrap 1.0)) <<< runParser cycleP
          it "Works on simple imput" do
            run "tabla2:42" `shouldEqual` Right (pure ((NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
            run "tabla2:42 hc:0" `shouldEqual` Right (pure ((NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on internal cycles" do
            run "[tabla2:42 hc:0] tabla2:42" `shouldEqual` Right (pure ((NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on branching cycles" do
            run "[tabla2:42 <hc:0 tech:0>] tabla2:42" `shouldEqual` Right ((((NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : ((NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Note { sample: S.tech_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
          it "Works on simultaneous cycles" do
            run "[tabla2:42 <hc:0 ~>] , hc:0" `shouldEqual` Right ((((NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : ((NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.tabla2_42__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: S.hc_0__Sample, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
