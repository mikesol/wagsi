# WagsI

> The tidal branch

Collaborative interactive coding with [`purescript-wags`](https://github.com/mikesol/purescript-wags). This branch emulates a [Tidal](https://tidalcycles.org/)-like system in the browser.

**The first tidal jam session is on October 3 at 9PM Finnish time, 8PM in Berlin, 11AM in LA. More info on the `#music` channel of the [PureScript Discord](https://purescript.org/chat).**

## Jam sessions!

[Link to the first wagsi jam session](https://twitter.com/stronglynormal/status/1409566300452577286)

If you're attending a wagsi Jam session, please make sure to follow these instructions.

1. Either:
  - Install VSCode, the PureScript IDE extension, and the VSCode Live Share extension. Once the extension is installed, click on the Live Share button on the left bar (the arrow bending counterclockwise around a circle). To use Live Share, you'll need to sign in with GitHub account, so make sure to have one of those as well.
  - Find a link to the live-coding session the `#music` channel of [PureScript Discord](https://purescript.org/chat). You can join right from the browser without installing VSCode. However, you'll still need a GitHub account. 
2. Make sure to join the live chat on the `#music` channel of [PureScript Discord](https://purescript.org/chat) from a **different** device than the one making the music you're listening to. For example, you can use your computer to render the audio and the phone for joining the meetup or vice versa. It's generally a good idea to use headphones.
3. If you're not already familiar with PureScript, check out some of the [existing resources on PureScript](https://leanpub.com/fp-made-easier) to get started. If you're a noob or novice and on the fence about joining a jam session, fear not - other folks will be there that can help you out.
4. When you update your code, make sure to **save** the file, otherwise it will not re-render!

## Practicing before the jam

Practice makes perfect! To try WagsI tidal out:

1. Clone this repo.
2. Open this repo with VSCode. Make sure the PureScript IDE extension is installed.
3. Run `npm install && npm start`.
4. Navigate to `localhost:8080` in Chrome or Firefox and click on **Start Audio**.
5. In VSCode, open `src/LiveCodeHere/Wagged.purs`. Start editing & save the file to render. You should hear some beats! If not, file an issue on this repo.
6. Keep editing, keep saving, and listen to your creation!

> Due to a glitch, when you start editing `Wagged.purs`, save it a couple times before you make any edits. This will help avoid pops on the first render. Hopefully this will be fixed soon.

## API

WagsI Tidal implements a subset of the [tidal](https://tidalcycles.org/) API + a couple additional bells and whistles.

## Top-level

When you start, the top-level file has the following code:

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGSI.Plumbing.Tidal (TheFuture, make, parse, plainly)

wag :: TheFuture
wag = make 1.0
  { earth: plainly $ parse ""
  }
```

The record has three channels to make music on - `earth`, `wind`, and `fire`. You can use all of them or none of them. `plainly` means that we're not adding any effects, and `parse` will parse a string of mini-notation and fail on silence.

## Mini-notation

Here's an example that uses mini-notation.

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGSI.Plumbing.Tidal (TheFuture, make, parse, plainly)

wag :: TheFuture
wag = make 2.0
  { earth: plainly $ parse "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
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

import WAGSI.Plumbing.Tidal (TheFuture, b, make, plainly, r, rend, s, x, kick, kick1, hh27, gab)

wag :: TheFuture
wag = make 2.0
  -- "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  { earth: plainly $ rend $ x (s bassdm [hh27, s kick1 [kick1], hh27]) [b (s r [gab, r, gab]) [r]]
  }
```

| Symbol     | Description                              | Example                                              |
|------------|------------------------------------------|------------------------------------------------------|
| `hh`       | A single note.                           | `s bassdm [hh27, kick, hh27]`                        |
| `r`        | A rest.                                  | `s bassdm [r, kick, hh27]`                           |
| `s _ [ ]`  | Create a pattern grouping.               | `s (s bassdm [kick]) [hh27]`                         |
| `x _ [ ]`  | Play multiple patterns at the same time. | `x (s bassdm [hh27]) [s cr [cr, cr, cr]]`            |
| `b _ [ ]`  | Alternate between patterns.              | `s (s cr [cr, cr]) [s hh27 [gab, hh27, b gab [cr]]]` |

It's often useful to create an initial beat with a string and then modify it using PureScript functions. To do this, you can use `parse'` instead of parse. This will give you low-level access to the underlying notes, which we'll take advantage of in the examples below.

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import WAGSI.Plumbing.Tidal (TheFuture, make, parse', plainly, rend)

wag :: TheFuture
wag = make 2.0
  { earth: plainly $ rend $ parse' "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  }
```

## Manipulating notes

You can manipulate the pitch and volume of notes. Let's pitch-shift everything up a fifth:

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import Data.Lens (_Just, set, traversed)
import WAGSI.Plumbing.Tidal (TheFuture, lnr, make, parse', plainly, rend)

wag :: TheFuture
wag = make 2.0
  { earth: plainly
      $ rend
      $ (set (traversed <<< _Just <<< lnr) (const 1.5))
      $ parse' "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  }
```

The same works on individual notes. Let's drop the first bassdm down an octave.

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import Data.Lens (_Just, set, traversed)
import WAGSI.Plumbing.Cycle (hh27, bassdm, r, gab)
import WAGSI.Plumbing.Tidal (TheFuture, b, lnr, make, plainly, rend, s, x)

wag :: TheFuture
wag = make 2.0
  { earth: plainly
      $ rend
      $ x
          ( s (set (traversed <<< _Just <<< lnr) (const 0.5) bassdm)
              [ hh27, s bassdm [ bassdm ], hh27 ]
          )
          [ b (s r [ gab, r, gab ]) [ r ] ]
  }
```

The same can been achieved using the string syntax, like this:

```purescript
module WAGSI.LiveCodeHere.Wagged where

import Prelude

import Data.Lens (_Just, set, traversed, view)
import WAGSI.Plumbing.Samples as S
import WAGSI.Plumbing.Tidal (TheFuture, prune, lnr, lns, make, parse', plainly, rend)

wag :: TheFuture
wag = make 2.0
  { earth: plainly
      $ rend
      $ set
          (traversed <<< _Just <<< prune (eq S.gab_0__Sample <<< view lns) <<< lnr)
          (const 1.5)
      $ parse' "bassdm hh27 [bassdm:2 bassdm:2] hh27 , <[~ gab ~ gab] ~>"
  }
```