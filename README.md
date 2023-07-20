# tmux-backspin

A back button and logger of window location history

## Why is this necessary?

If you don't navigate between sessions in tmux then it's not. Just bind something to `tmux last-window` and you're set.

If you use a more advanced window navigation technique (something like [tmux-teleport](https://github.com/sturob/tmux-teleport)) then you will have noticed that last-window only works within the current session. Sure you can use `switch-client -l` to switch back to the last session, but that requires you to remember if the last window want to return to was in the current session or not... and to maintain and remember two separate bindings.

Backspin takes you back to the the window you were looking at before the current one, regardless of where it is.

## Default bindings

- alt-b = back
- prefix-backspace = back

## How it works

The plugin keeps a log of all window changes (separated by client) in /tmp/tmux-back. This is so we can add multiple levels of back at some point. For now it is useful to tail and have a visual guide to what you have been working on.

Run ~/.tmux/plugins/tmux-backspin/scripts/tail-history.sh for live updating formatted log:

	$ ./tail-history.sh
	15:48  1-main > Teleport
	15:48  1-main > bacKspin
	15:48  1-main > Propane
	15:48  1-main > bacKspin
	15:48  1-main > Propane
	15:48  1-main > bacKspin
	15:48  0-help > good-bash
	15:48  1-main > bacKspin
	15:48  1-main > Propane
	15:48  1-main > bacKspin
	15:52  1-main > tmuX
	15:53  0-help > good-bash
	15:53  1-main > tmuX
	15:53  0-help > good-bash
	15:53  1-main > tmuX
	15:53  1-main > bacKspin
	15:53  1-main > bacKspin
	15:53  1-main > tmuX


## Installation


## Not yet supported

- linked windows

