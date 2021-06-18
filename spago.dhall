{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "my-project"
, dependencies =
  [ "behaviors"
  , "canvas"
  , "cartesian"
  , "colors"
  , "console"
  , "convertable-options"
  , "effect"
  , "either"
  , "event"
  , "foldable-traversable"
  , "halogen"
  , "heterogeneous"
  , "identity"
  , "indexed-monad"
  , "integers"
  , "lists"
  , "math"
  , "maybe"
  , "painting"
  , "prelude"
  , "psci-support"
  , "record"
  , "refs"
  , "simple-json"
  , "sized-vectors"
  , "transformers"
  , "typelevel"
  , "typelevel-peano"
  , "wags"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
