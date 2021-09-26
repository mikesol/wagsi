# WagsI

> The tidal branch

Collaborative interactive coding with [`purescript-wags`](https://github.com/mikesol/purescript-wags). This branch emulates a [Tidal](https://tidalcycles.org/)-like system in the browser.

## Jam sessions!

[Link to the first wagsi jam session](https://twitter.com/stronglynormal/status/1409566300452577286)

If you're attending a wagsi Jam session, please make sure to follow these instructions.

1. Install VSCode and the VSCode Live Share extension. Once the extension is installed, click on the Live Share button on the left bar (the arrow bending counterclockwise around a circle). To use Live Share, you'll need to sign in with GitHub or a Microsoft account, so make sure to have one of those as well.
1. Make sure to join the live chat on the `#music` channel of [PureScript Discord](https://purescript.org/chat) from a **different** device than the one making the music you're listening to. For example, you can use your computer to render the audio and the phone for joining the meetup or vice versa. It's generally a good idea to use headphones.
1. If you're not already familiar with PureScript, check out some of the [existing resources on PureScript](https://leanpub.com/fp-made-easier) to get started. If you're a noob or novice and on the fence about joining a jam session, fear not - other folks will be there that can help you out.

## Github Codespaces

[![Wags](https://img.youtube.com/vi/tHa7Eh9Ktyo/0.jpg)](https://www.youtube.com/watch?v=tHa7Eh9Ktyo)

You can check out the above video, a summary of which is provided below:

1. Sign up for [GitHub Codespaces](https://github.com/codespaces).
1. Fork https://github.com/mikesol/wagsi.
1. On the [Codespaces page](https://github.com/codespaces), create a new codespace for this repo.
1. From the terminal on the bottom of the screen, run `npm install`.
1. Run `npm run ide:codespaces` to install a forked version of PureScript IDE.
1. **Exit and re-enter codespaces** for the PureScript IDE installation to take effect. You only need to do this after the first install.
1. Go to the **Ports** tab and add a new port **8080**, making sure it is set to **Public** (the default is _private_, so you'll have to change this).
1. Still in the **Ports** tab, copy the URL under "local address" into the `codespacesPublicUrl` field of your package.json.
1. Run `npm run start:codespaces` to start the webpage.
1. Navigate to the same page as the one you copied to `codespacesPublicUrl`.
1. Once the page with the local address loads, click **Start audio**.
1. Back in the online editor, open up `Wagged.purs` and start making some music! For inspiration, you can use this `graph`:

```purescript
graph e (a :: Unit) = a /\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
```

Then, you can change the graph and, whenever you save the document, the audio will update after a short pause. When restarting, you always need to _change_ some value in `Wagged.purs` (ie add a frivolous toplevel declaration) so that it will compile. This is a known issue & hopefully will be fixed soon.

## Gitpod.io

1. Sign up for an account.
1. Navigate to https://www.gitpod.io/#https://github.com/mikesol/wagsi. This will automatically provision your gitpod environment. Note that you only need to do this once - you can reboot the environment after creating it for the first time.
1. From the terminal on the bottom of the screen, run `npm install`.
1. Run `npm run ide:gitpod` to install a forked version of PureScript IDE.
1. Press `Ctrl+Shift+P` and look for the command **PureScript: Restart/Reconnect purs IDE server**. Select this. You can monitor the output of the purescript ide server by clicking on the output tab. Eventually, yellow (or red) squigglies should show up in your source files.
1. Run `npm run start:gitpod` to start the webpage.
1. You'll see a pop-up asking to open a port and to open the page in your browser. Click on both. This will open a new page for your audio session.
1. On the new page, click **Start audio**.
1. Back in the online editor, open up Wagged and start making some music! For inspiration, you can use this `graph`:

```purescript
graph e (a :: Unit) = a /\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
```

Then, you can change the graph and, whenever you save the document, the audio will update after a short pause. When restarting, you always need to _change_ some value in `Wagged.purs` (ie add a frivolous toplevel declaration) so that it will compile. This is a known issue & hopefully will be fixed soon.

## API

The entire workspace for building a live session lives in a `src/LiveCodeHere/Wagged.purs`. There's only one top-level declaration that needs a specific type: `wagsi`. If you use the constructor `/@\`, it'll perform most of the necessary checks to make sure the type is correct.

```purescript
wagsi (e :: Extern) (a :: {}) =
  a /@\ speaker { unit0: gain (cos (pi * e.time) * -0.02 + 0.02) { osc0: sinOsc 440.0 } }
```

`wagsi` is a function that accepts the the external environment and a control parameter and outputs a tuple with the control parameter and a valid audio graph. The control parameter must be a `Record` whose elements implement the typeclass `FromEnv`. Currently, `FromEnv` has implementations for most "classic" monoids (`Endo`, `Conj`) as well as stuff from `wags-lib` defined in `LibWrap.purs` (`ARate`, `AnEmitter`, etc).

A _valid_ audio graph is one that conforms to the typeclass `GraphIsRenderable`. This will check, amongst other things, that you only have one microphone and one speaker, that there are no orphaned audio nodes, etc. This check is performed every time you save, and if the graph is not renderable, you'll see an error message.

Because the types of the output of `graph` are monstrous, it is advised not to try to write them out. There'll be a Yellow Squiggly of Triumph under the term in VSCode to signify that it compiles cleanly.

### Other declarations

Besides `wagsi`, you can add whatever other top-level declarations you want. In the example below, we abstract out the gain calculation of `unit0` to a separate function.

```purescript
myFuncOfTime :: Number -> Number
myFuncOfTime t = (cos (pi * t) * -0.02 + 0.02)

wagsi (e :: Extern) (a :: {}) =
  a /\ speaker { unit0: gain (myFuncOfTime e.time) { osc0: sinOsc 440.0 } }
```

## Cheat-sheet

Check out the Wags [cheat sheet](https://github.com/mikesol/purescript-wags/blob/main/CHEATSHEET.md), the [examples in `purescript-wags`](https://github.com/mikesol/purescript-wags/tree/main/examples), and the Pursuit documentation for constructing audio units like `sinOsc`, `highpass`, `loopBuf`, `convolver` etc (https://pursuit.purescript.org/packages/purescript-wags/0.3.2/docs/WAGS.Create.Optionals). Otherwise, the world's your oyster. It's vanilla PureScript. Go to town with monads, applicative functors, comonads, exotic typeclasses...

## Local start

It is also possible to run this repo locally.  Here are the steps:

1. If you have PureScript IDE installed globally, make sure to uninstall it.
1. Download the custom PureScript IDE needed for working with wags from [this URL](https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/ide-purescript-0.25.0.vsix). In the future, it may be possible to use the main PureScript IDE package, but for now a fork is required. Move the extension to the root directory of this repo, and for all remaining commands, make sure to run them from the VSCode integrated terminal.
1. Run `code --install-extension ide-purescript-0.25.0.vsix` from the command line.
1. You may be asked to install the **PureScript Language Support** package. If so, click on **Install and Reload**.
1. Run `npm install`. _Always_ use the `npm install` command to build the project, as it will also take care of writing and cleaning up temp files.
1. Launch the project by running `npm start`.