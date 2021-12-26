let conf = ./spago.dhall

in      conf
    //  { sources = conf.sources # [ "cookbook/**/*.purs" ]
        , dependencies = conf.dependencies # [ "strings", "identity" ]
        }
