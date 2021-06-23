# Repl hacks

Live coding with [`purescript-wags`](https://github.com/mikesol/purescript-wags).

## Quick start

## Local start

It is also possible to run this repo locally.  Here are the steps:

1. If you have PureScript IDE installed globally, make sure to uninstall it.
2. Download the custom PureScript IDE needed for working with wags from [this URL](https://meeshkan-public-assets.s3.eu-west-1.amazonaws.com/wags/ide-purescript-0.25.0.vsix). In the future, it may be possible to use the main PureScript IDE package, but for now a fork is required. Move the extension to the root directory of this repo, and for all remaining commands, make sure to run them from the VSCode integrated terminal.
3. Run `code --install-extension ide-purescript-0.25.0.vsix` from the command line.
4. You may be asked to install the **PureScript Language Support** package. If so, click on **Install and Reload**.
5. Run `npm install`. _Always_ use the `npm install` command to build the project, as it will also take care of writing and cleaning up temp files.