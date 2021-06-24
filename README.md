# WagsI

Interactive coding with [`purescript-wags`](https://github.com/mikesol/purescript-wags).

## Gitpod.io

You can check out this video, a summary of which is provided below:

The best way to get up and started is on [gitpod.io](https://gitpod.io).  Here's how!

1. Sign up for an account.
1. Navigate to https://www.gitpod.io/#https://github.com/mikesol/wagsi. This will automatically provision your gitpod environment. Note that you only need to do this once - you can reboot the environment after creating it for the first time.
1. From the terminal on the bottom of the screen, run `npm install`.
1. On the left panel, click the **Extensions** icon (the four boxes), search for **PureScript Language Support**, and install it. Do _not_ install PureScript IDE. If you do, it's no biggie - just uninstall it. We'll be installing a custom one in the next step.
1. Run `npm run gitpod` to install PureScript IDE.
1. Press `Ctrl+Shift+P` and look for the command **PureScript: Restart/Reconnect purs IDE server**. Select this. You can monitor the output of the purescript ide server by clicking on the output tab. Eventually, yellow (or red) squigglies should show up in your source files.
1. Run `npm start` to start the webpage.
1. You'll see a pop-up asking to open a port and to open the page in your browser. Click on both. This will open a new page for your audio session.
1. On the new page, click **Start audio**.
1. Back in the online editor, open up Wagged and start making some music! For inspiration, you can use this `graph`:

```purescript
graph e (a :: Unit) = a /-\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
```

Then, you can change the graph and, whenever you save the document, the audio will update after a short pause. When restarting, you always need to _change_ some value in `Wagged.purs` (ie add a frivolous toplevel declaration) so that it will compile. This is a known issue & hopefully will be fixed soon.

## API

The entire workspace for building a live session lives in a `src/Wagged.purs`. There are two top-level declarations that need to have a specific type.

```purescript
control (_:: Extern) (a :: Unit) = a

graph (e :: Extern) (a :: Unit) =
  a /-\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
```

### control
`control` is a function that accepts the external environment and a control parameter of type `T0` and outputs the control parameter of type `T1`, which may be equal to `T0`. This function is called _once_ upon recompile and should only be used to give terms initial values or remove terms. It should not be used to incrementally update terms (you'll use graph for that). For example:

```purescript
type CP0 = { volume0 :: Number }
type CP1 = { volume0 :: Number, volume1 :: Number }

control :: Extern -> CP0 -> CP1
control e = union { volume1: e.time % 0.2 } -- initializes volume1 at the current time mod 0.2
```

### graph

`graph` is a function that accepts the the external environment and a control parameter of type `T1` and outputs a tuple with the control parameter of type `T1` and a valid audio graph. A _valid_ audio graph is one that conforms to the typeclass `GraphIsRenderable`. This will check, amongst other things, that you only have one microphone and one speaker, that there are no orphaned audio nodes, etc. This check is performed every time you save, and if the graph is not renderable, you'll see an error message. All of the examples use the operator `/-\` to construct this tuple.

Because the types of the output of `graph` are monstrous, it is advised not to try to write them out. There'll be a Yellow Squiggly of Triumph under the term in VSCode to signify that it compiles cleanly.

```purescript
type CP1 = { volume0 :: Number, volume1 :: Number }

graph (e :: Extern) (a :: CP1) =
  (a { volume0 = a.volume0 + (e.time % 0.1) })
    /-\
      speaker
        { unit0: a.volume0 { osc0: sinOsc 440.0 }
        , unit1: a.volume1 { osc1: sinOsc 440.0 }
        }
```

### Other declarations

Besides `control` and `graph`, you can add whatever other top-level declarations you want. In the example below, we abstract out the gain calculation of `unit0` to a separate function.

```purescript
myFuncOfTime :: Number -> Number
myFuncOfTime t = (cos (pi * t) * -0.02 + 0.02)

control (_:: Extern) (a :: Unit) = a

graph (e :: Extern) (a :: Unit) =
  a /-\ speaker { unit0: gain (myFuncOfTime e.time) { osc0: sinOsc 440.0 } }
```

## Cheat-sheet

Check out the Wags [cheat sheet](https://github.com/mikesol/purescript-wags/blob/main/CHEATSHEET.md), the [examples in `purescript-wags`](https://github.com/mikesol/purescript-wags/tree/main/examples), and the Pursuit documentation for constructing audio units like `sinOsc`, `highpass`, `loopBuf`, `convolver` etc (https://pursuit.purescript.org/packages/purescript-wags/0.3.2/docs/WAGS.Create.Optionals). Otherwise, the world's your oyster. It's vanilla PureScript. Go to town with monads, applicative functors, comonads, exotic typeclasses...

## Advanced usage

You can pull in whatever audio buffers, external events (MIDI, mouse clicks) and states (mouse position, axial tilt of the Earth) into your session. To do this, you'll need to modify the file `Main.purs`. This video shows a few examples of that:

## Local start

It is also possible to run this repo locally.  Here are the steps:

1. If you have PureScript IDE installed globally, make sure to uninstall it.
1. Download the custom PureScript IDE needed for working with wags from [this URL](https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/ide-purescript-0.25.0.vsix). In the future, it may be possible to use the main PureScript IDE package, but for now a fork is required. Move the extension to the root directory of this repo, and for all remaining commands, make sure to run them from the VSCode integrated terminal.
1. Run `code --install-extension ide-purescript-0.25.0.vsix` from the command line.
1. You may be asked to install the **PureScript Language Support** package. If so, click on **Install and Reload**.
1. Run `npm install`. _Always_ use the `npm install` command to build the project, as it will also take care of writing and cleaning up temp files.
1. Launch the project by running `npm start`.