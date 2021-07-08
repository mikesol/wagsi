let conf = ./spago.dhall

in      conf
    //  { sources = conf.sources # [ "history/**/*.purs" ]
        }
