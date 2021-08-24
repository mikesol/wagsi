module Test.Main where

import Prelude

import Data.Tuple (Tuple(..))
import Data.Typelevel.Num (toInt)
import Data.Vec (empty, (+>))
import Effect (Effect)
import Effect.Aff (launchAff_)
import Test.Spec (describe, it)
import Test.Spec.Assertions (shouldEqual)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)
import Wagsi.Vec (mapWithTypedIndex)

main :: Effect Unit
main = do
  launchAff_
    $ runSpec [ consoleReporter ] do
        describe "mapWithTypedIndex" do
          it "works" do
            mapWithTypedIndex (\i a -> Tuple (toInt i) a) (true +> true +> false +> empty) `shouldEqual` (Tuple 0 true +> Tuple 1 true +> Tuple 2 false +> empty)
