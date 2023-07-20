# tmux-backspin

A back button and logger of window navigation history

## Why is this necessary?

If you don't navigate between sessions in tmux then it's not. Just bind something to `tmux last-window` and you're set.

If you use a more advanced window navigation technique (something like [tmux-teleport](https://github.com/sturob/tmux-teleport)) then you will have noticed that last-window only works within the current session. Sure you can use `switch-client -l` to switch back to the last session, but now you need to remember if the window you want to return to is in the current session or not... and to maintain and remember two separate bindings.

Backspin avoids all that and takes you back to the window you were previously looking at, regardless of where it is.

## Default bindings

- alt-b = back
- prefix-backspace = back

## How it works

The plugin uses tmux-hooks to keep a log of all window navigations under /tmp/tmux-back/. This is so we can support going back more than one window at some point. For now it can be useful to tail as a live log of what you have been working on.

Run ~/.tmux/plugins/tmux-backspin/scripts/tail-history.sh for the live formatted log:

	$ ./tail-history.sh
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


## Installation


## Not yet supported

- linked windows

