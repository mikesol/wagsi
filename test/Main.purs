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
import WAGSI.Plumbing.Tidal (Cycle(..), Sample(..), NoteInTime(..), Note(..), cycleP, c2s, unrest, noteFromSample)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)
import Text.Parsing.StringParser (runParser)

main :: Effect Unit
main = do
  launchAff_
    $ runSpec [ consoleReporter ] do
        describe "Tests parser" do
          it "Works on simple imput" do
            runParser cycleP
              "hh:0" `shouldEqual` Right (noteFromSample ClosedHH0)
            runParser cycleP
              "  hh:0" `shouldEqual` Right (noteFromSample ClosedHH0)
            runParser cycleP
              "hh:0 snare:0" `shouldEqual` Right (Sequential { nel: NonEmptyList ((noteFromSample ClosedHH0) :| (noteFromSample Snare0) : Nil) })
          it "Works on internal cycles" do
            runParser cycleP
              "[hh:0 snare:0] hh:0" `shouldEqual` Right (Sequential { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample ClosedHH0) :| (noteFromSample Snare0) : Nil) } :| (noteFromSample ClosedHH0) : Nil) })
          it "Works on branching cycles" do
            runParser cycleP
              "[hh:0 <snare:0 kick:0>] hh:0" `shouldEqual` Right (Sequential { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample ClosedHH0) :| (Branching { nel: NonEmptyList ((noteFromSample Snare0) :| (noteFromSample Kick0) : Nil) }) : Nil) } :| (noteFromSample ClosedHH0) : Nil) })
          it "Works on dual groups" do
            runParser cycleP
              "[hh hh] [clap <roll shaker>]" `shouldEqual` Right
              ( Sequential
                  { nel: NonEmptyList
                      ( Internal
                          { nel: NonEmptyList
                              ( (noteFromSample ClosedHH0)
                                  :| (noteFromSample ClosedHH0) : Nil
                              )
                          } :|
                          Internal
                            { nel: NonEmptyList
                                ( (noteFromSample Clap0)
                                    :| (Branching { nel: NonEmptyList ((noteFromSample SnareRoll0) :| (noteFromSample Shaker0) : Nil) }) : Nil
                                )
                            } : Nil

                      )
                  }
              )
          it "Works on simultaneous cycles" do
            runParser cycleP
              "clap clap  , kick:0 kick:1" `shouldEqual` Right
              ( Simultaneous
                  { nel: NonEmptyList
                      ( Sequential
                          { nel: NonEmptyList
                              ( (noteFromSample Clap0)
                                  :| (noteFromSample Clap0) : Nil
                              )
                          } :|
                          Sequential
                            { nel: NonEmptyList
                                ( (noteFromSample Kick0)
                                    :| (noteFromSample Kick1) : Nil
                                )
                            } : Nil
                      )
                  }
              )
          it "Works on simultaneous cycles 2" do
            runParser cycleP
              "[hh:0 <snare:0 kick:0>] , hh:0" `shouldEqual` Right (Simultaneous { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample ClosedHH0) :| (Branching { nel: NonEmptyList ((noteFromSample Snare0) :| (noteFromSample Kick0) : Nil) }) : Nil) } :| (noteFromSample ClosedHH0) : Nil) })
          it "Works on branching cycles with internal cycle" do
            runParser cycleP
              "[hh:0 <[snare:0 snare:0] kick:0>] hh:0" `shouldEqual` Right (Sequential { nel: NonEmptyList (Internal { nel: NonEmptyList ((noteFromSample ClosedHH0) :| (Branching { nel: NonEmptyList ((Internal { nel: NonEmptyList ((noteFromSample Snare0) :| (noteFromSample Snare0) : Nil) }) :| (noteFromSample Kick0) : Nil) }) : Nil) } :| (noteFromSample ClosedHH0) : Nil) })
        describe "Test cycle to sequence" do
          let run = map (c2s $ wrap 1.0) <<< runParser cycleP
          it "Works on simple imput" do
            run "hh:0" `shouldEqual` Right (pure (NonEmptyList (NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| Nil)))
            run "hh:0 snare:0" `shouldEqual` Right (pure (NonEmptyList (NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on internal cycles" do
            run "[hh:0 snare:0] hh:0" `shouldEqual` Right (pure (NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on branching cycles" do
            run "[hh:0 <snare:0 kick:0>] hh:0" `shouldEqual` Right (NonEmptyList ((NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) :| (NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: Kick0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
          it "Works on dual groups" do
            run "[hh hh] [clap <roll shaker>]" `shouldEqual` Right (NonEmptyList ((NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: Clap0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.75, cycleLength: 1.0, note: Just $ Note { sample: SnareRoll0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) :| (NonEmptyList (NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: Clap0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.75, cycleLength: 1.0, note: Just $ Note { sample: Shaker0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
          it "Works on simultaneous cycles" do
            run "[hh:0 <snare:0 ~>] , snare:0" `shouldEqual` Right (NonEmptyList ((NonEmptyList (NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Just $ Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) :| (NonEmptyList (NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } :| NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Just $ Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Nothing } : Nil)) : Nil))
        describe "Test cycle to sequence without rests" do
          let run = map (unrest <<< c2s (wrap 1.0)) <<< runParser cycleP
          it "Works on simple imput" do
            run "hh:0" `shouldEqual` Right (pure ((NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
            run "hh:0 snare:0" `shouldEqual` Right (pure ((NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on internal cycles" do
            run "[hh:0 snare:0] hh:0" `shouldEqual` Right (pure ((NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)))
          it "Works on branching cycles" do
            run "[hh:0 <snare:0 kick:0>] hh:0" `shouldEqual` Right ((((NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : ((NoteInTime { duration: 0.25, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.25, startsAt: 0.25, cycleLength: 1.0, note: Note { sample: Kick0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
          it "Works on simultaneous cycles" do
            run "[hh:0 <snare:0 ~>] , snare:0" `shouldEqual` Right ((((NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 0.5, startsAt: 0.5, cycleLength: 1.0, note: Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : ((NoteInTime { duration: 0.5, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: ClosedHH0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : NoteInTime { duration: 1.0, startsAt: 0.0, cycleLength: 1.0, note: Note { sample: Snare0, rateFoT: const 1.0, volumeFoT: const 1.0 } } : Nil)) : Nil))
