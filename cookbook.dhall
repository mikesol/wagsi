let conf = ./spago.dhall

in      conf
    //  { sources = conf.sources # [ "cookbook/**/*.purs" ]
        }