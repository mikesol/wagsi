{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "my-project"
, dependencies =
  [ "aff"
  , "aff-promise"
  , "arrays"
  , "behaviors"
  , "control"
  , "effect"
  , "either"
  , "event"
  , "foldable-traversable"
  , "foreign"
  , "foreign-object"
  , "free"
  , "halogen"
  , "halogen-subscriptions"
  , "lcg"
  , "maybe"
  , "newtype"
  , "ordered-collections"
  , "prelude"
  , "profunctor"
  , "psci-support"
  , "quickcheck"
  , "random"
  , "refs"
  , "sized-vectors"
  , "tuples"
  , "typelevel"
  , "wags"
  , "wags-lib"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
