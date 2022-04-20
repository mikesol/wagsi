> This project is now read-only. It was fun while it lasted! But it was made obsolete by the release of `wags@1.0.0`. Perhaps in the future some of these ideas will be brought back to life, but many of them existed to try to bend a rendering loop into something it wasn't, and `wags@1.0.0` novel approach to events makes a lot of this machinery unnecessary. Check out the [new wags](https://github.com/mikesol/purescript-wags) for ideas and inspiration!

# WagsI

Collaborative interactive music-making using [`purescript-wags`](https://github.com/mikesol/purescript-wags).

## Practicing before the jam

Practice makes perfect! To try this repo out:

1. Clone this repo.
2. Open this repo with your favorite editor that can communicate with `purs ide`. This includes, but is probably not limited to, [VSCode](https://github.com/nwolverson/vscode-ide-purescript), [emacs](https://github.com/purescript-emacs/psc-ide-emacs) and [IntelliJ](https://github.com/intellij-purescript/intellij-purescript).
3. Either:
  - Use `nix-shell` by running `nix-shell` in the root directory of this project. Then, run `npm install --no-optional && npm start`. Make sure to open your editor from the command line (ie if you're using code by invoking `code .`) in order to pick up on the `nix` environment.
  - Don't use `nix-shell` and run `npm install && npm start`.
4. Navigate to `localhost:8080` in _Chrome or Firefox_ and click on **Start Audio**.
5. In your editor, open `src/LiveCodeHere/Wagged.purs`. Start editing & save the file to render (ie change the empty `""` to `"bassdm"`). You should hear some beats! If not, file an issue on this repo.
6. Keep editing, keep saving, and listen to your creation! For ideas on how to get started, check out the [`cookbook/`](./cookbook/). All examples from the cookbook can be pasted into `src/LiveCodeHere/Wagged.purs` - just make sure to keep the module's name as `WAGSI.LiveCodeHere.Wagged` when pasting.

## API

Wagsi implements a subset of the [tidal](https://tidalcycles.org/) API + a couple additional bells and whistles.

## Top-level

When you start, the top-level file has the following code:

```purescript
module WAGSI.LiveCodeHere.Wagged where

import WAGS.Lib.Tidal.Tidal (make, s)
import WAGS.Lib.Tidal.Types (AFuture)

wag :: AFuture
wag = make 1.0
  { earth: s ""
  , title: "i m a k e n o i s e"
  }
```

## Mini-notation

Here's an example that uses mini-notation.

```purescript
module WAGSI.LiveCodeHere.Wagged where

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (make, s)

wag :: AFuture
wag = make 2.0
  { earth: s "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  }
```

Wagsi tidal supports the following mini-notation. A big thanks to whoever wrote [the Tidal documentation](http://tidalcycles.org/docs/reference/mini_notation/), which was dutifully copied.

| Symbol | Description                              | Example                               |
|--------|------------------------------------------|---------------------------------------|
| `hh27` | A single note.                           | `bassdm hh27 bassdm hh27`             |
| `~`    | A rest.                                  | `bassdm ~ bassdm hh27`                |
| `[ ]`  | Create a pattern grouping.               | `[bassdm kick] hh27`                  |
| `,`    | Play multiple patterns at the same time. | `bassdm hh27 , cr cr cr cr`           |
| `< >`  | Alternate between patterns.              | `[hh hh hh] [hh27 gab hh27 <gab cr>]` |

## Sounds

A full list is [here](./SOUNDS.md). Enjoy!

## Not-mini notation

You can also use PureScript terms to create notation. Here is the same example above using PureScript terms.

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Cycle (r)
import WAGS.Lib.Tidal.Tidal (make, parse, s, i, b, x)

bassdm = parse "bassdm"
bassdm_2 = parse "bassdm:2"
hh27 = parse "hh27"
gab = parse "gab"

wag :: AFuture
wag = make 2.0
  -- "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  { earth: s $ x (i bassdm [ hh27, i bassdm_2 [ bassdm_2 ], hh27 ]) [ b (i r [ gab, r, gab ]) [ r ] ]
  }
```

| Symbol     | Description                              | Example                                              |
|------------|------------------------------------------|------------------------------------------------------|
| `hh`       | A single note.                           | `i bassdm [hh27, kick, hh27]`                        |
| `r`        | A rest.                                  | `i bassdm [r, kick, hh27]`                           |
| `i _ [ ]`  | Create a pattern grouping.               | `i (i bassdm [kick]) [hh27]`                         |
| `x _ [ ]`  | Play multiple patterns at the same time. | `x (i bassdm [hh27]) [i cr [cr, cr, cr]]`            |
| `b _ [ ]`  | Alternate between patterns.              | `i (i cr [cr, cr]) [i hh27 [gab, hh27, b gab [cr]]]` |

It's often useful to create an initial beat with a string and then modify it using PureScript functions. To do this, you can use `parse`. This will give you low-level access to the underlying notes, which we'll take advantage of in the examples below.

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (make, parse, plainly, rend)

wag :: AFuture
wag = make 2.0
  { earth: map plainly $ rend $ parse "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  }
```

## Manipulating notes

You can manipulate the pitch and volume of notes. Let's pitch-shift everything up a fifth:

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import Data.Lens (set, traversed)
import WAGS.Lib.Tidal.Tidal (lnr, make, parse, s)

wag :: AFuture
wag = make 2.0
  { earth: s
      $ (set (traversed <<< traversed <<< lnr) (const 1.5))
      $ parse "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  }
```

The same works on individual notes. Let's drop the first bassdm down an octave.

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGS.Lib.Tidal.Types (AFuture)
import Data.Lens (set, traversed)
import WAGS.Lib.Tidal.Cycle (r)
import WAGS.Lib.Tidal.Tidal (parse, i, b, changeRate, make, s, x)

bassdm = parse "bassdm"
hh27 = parse "hh27"
gab = parse "gab"

wag :: AFuture
wag = make 2.0
  { earth: s
      $ x
          ( i (map (changeRate (const 0.5)) bassdm)
              [ hh27, i bassdm [ bassdm ], hh27 ]
          )
          [ b (i r [ gab, r, gab ]) [ r ] ]
  }
```

The same can been achieved using the string syntax, like this:

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import Data.Lens (set, traversed, view)
import Data.Variant.Either (hush)
import Data.Newtype (wrap)
import WAGS.Lib.Tidal.Types (AFuture)
import WAGS.Lib.Tidal.Tidal (focus, lnr, lns, make, parse, s)

wag :: AFuture
wag = make 2.0
  { earth: s
      $ set
          (traversed <<< traversed <<< focus (eq (pure (wrap "gab:0")) <<< hush <<< view lns) <<< lnr)
          (const 1.5)
      $ parse "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  }
```

## Jam sessions!

[Link to the first wagsi jam session](https://twitter.com/stronglynormal/status/1409566300452577286)

If you're attending a wagsi Jam session, please make sure to follow these instructions.

1. Either:
  - Install VSCode, the PureScript IDE extension, and the VSCode Live Share extension. Once the extension is installed, click on the Live Share button on the left bar (the arrow bending counterclockwise around a circle). To use Live Share, you'll need to sign in with GitHub account, so make sure to have one of those as well.
  - Find a link to the live-coding session the `#music` channel of [PureScript Discord](https://purescript.org/chat). You can join right from the browser without installing VSCode. However, you'll still need a GitHub account.
2. Make sure to join the live chat on the `#music` channel of [PureScript Discord](https://purescript.org/chat) from a **different** device than the one making the music you're listening to. For example, you can use your computer to render the audio and the phone for joining the meetup or vice versa. It's generally a good idea to use headphones.
3. If you're not already familiar with PureScript, check out some of the [existing resources on PureScript](https://leanpub.com/fp-made-easier) to get started. If you're a noob or novice and on the fence about joining a jam session, fear not - other folks will be there that can help you out.
4. When you update your code, make sure to **save** the file, otherwise it will not re-render!
