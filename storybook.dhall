let conf = ./cookbook.dhall

in      conf
    //  { sources = conf.sources # [ "storybook/**/*.purs" ]
        , dependencies = conf.dependencies # [ "halogen-storybook", "transformers" ]
        }
