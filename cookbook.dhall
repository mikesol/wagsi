let conf = ./spago.dhall

in      conf
    //  { sources = conf.sources # [ "cookbook/**/*.purs" ]
        , dependencies = conf.dependencies # ["partial", "unfoldable", "unsafe-coerce", "record", "strings", "identity" ]
        }
