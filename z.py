A=[{ "handle": "QcsBV7b0S4eDXxBXdT24"
    , "slug": "licks2:44"
    }
  , { "handle": "S5BpterMRVWOyQRKFOx9"
    , "slug": "licks2:10"
    }
  , { "handle": "rPtXg1PQ0qTHjOZ8bcPO"
    , "slug": "licks2:54"
    }
  , { "handle": "Q8Iu9AkR6yk3zEkdHewM"
    , "slug": "licks1:116"
    }
  , { "handle": "I0GM5kT0THaLweZs250c"
    , "slug": "licks2:40"
    }
  , { "handle": "nLel2mqMTbqRkGc3t60D"
    , "slug": "licks1:108"
    }
  , { "handle": "yDVRpCEXRlud5tgdIDqh"
    , "slug": "licks2:58"
    }
  , { "handle": "CkVVPjbAQGZaXjDTLi3b"
    , "slug": "licks2:36"
    }
  , { "handle": "0oS9pblQ6wgtI81UB0wT"
    , "slug": "licks2:50"
    }
  , { "handle": "byAPSlk6Q86OeO32ZeXW"
    , "slug": "licks1:100"
    }
  , { "handle": "5AFWNHv8R2rTDIezLVby"
    , "slug": "licks1:90"
    }
  , { "handle": "Ruta3AQfu3zgHc8Pjjgk"
    , "slug": "licks1:62"
    }
  , { "handle": "Z6KIi8JlRkKXPxpIJXDN"
    , "slug": "licks2:18"
    }
  , { "handle": "MFqjKKnnRPewnZOnCk7J"
    , "slug": "licks2:14"
    }
  , { "handle": "ZoaeQG5QvarKqZvANrGB"
    , "slug": "licks2:28"
    }
  , { "handle": "zhTNG93SQgqHo5wrPYkm"
    , "slug": "licks1:112"
    }
  , { "handle": "LDOu6wFRoOOV7kv7R7r2"
    , "slug": "licks1:42"
    }
  , { "handle": "h0AgWMj4TFyA7yiD7jEj"
    , "slug": "licks1:86"
    }
  , { "handle": "sobq0PNgQWar4l1jBHQn"
    , "slug": "licks1:104"
    }
  , { "handle": "hQgXCmV0RvmB5FSwYwr5"
    , "slug": "licks2:22"
    }
  , { "handle": "478YIc4nTQshmU39R0xQ"
    , "slug": "licks2:6"
    }
  , { "handle": "206EgFrQdq92ybfdTitf"
    , "slug": "licks2:32"
    }
  , { "handle": "TP0qIJlvStie9yBkPMuB"
    , "slug": "licks1:66"
    }
  , { "handle": "Up6A1gBSyNPsPyoBANWQ"
    , "slug": "licks1:70"
    }
  , { "handle": "hnPJVmoR8e2CxwZ8JV4A"
    , "slug": "licks1:98"
    }
  , { "handle": "8ii8QiOTUWkAFl65Rg2k"
    , "slug": "licks1:8"
    }
  , { "handle": "WlVRsEmcSIGxDK8CIuCW"
    , "slug": "licks1:50"
    }
  , { "handle": "XvV2FWz4QniN4k7GFzUq"
    , "slug": "licks1:58"
    }
  , { "handle": "jJLOI3ivRJqUUsD1qjzR"
    , "slug": "licks1:26"
    }
  , { "handle": "zh6MmgdSfCoW7HmXBm2a"
    , "slug": "licks1:82"
    }
  , { "handle": "jDP30L12TpKNj0BG4ryO"
    , "slug": "licks1:54"
    }
  , { "handle": "LnOIfiZUQtO69dYX8zEy"
    , "slug": "licks1:40"
    }
  , { "handle": "e8JUmAirRv22bcAkzBcN"
    , "slug": "licks1:12"
    }
  , { "handle": "EcVgDlfUQGuItzwYWaF1"
    , "slug": "licks1:4"
    }
  , { "handle": "kF1SO4tSEiQig3VRJuVq"
    , "slug": "licks1:30"
    }
  , { "handle": "fddyDTMDSBe4W1nB83gS"
    , "slug": "licks1:34"
    }
  , { "handle": "WuI1MZYYR5KdYwuvKv40"
    , "slug": "licks1:16"
    }
  , { "handle": "OM8jtmGdRMKsNMDxJhTO"
    , "slug": "licks1:46"
    }
  , { "handle": "ylePiCITT6ChV30EsU11"
    , "slug": "licks1:74"
    }
  , { "handle": "p3O9WdehS5G8dx3kdGBg"
    , "slug": "licks1:78"
    }
  , { "handle": "42qdKEoPQK6jgEyAoiY0"
    , "slug": "licks1:20"
    }]
#
# print([a["slug"] for a in A])
for x in A:
  print(x["slug"])
  print("https://media.graphcms.com/%s" % x["handle"])
