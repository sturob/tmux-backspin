# tmux-backspin

A back button and associated tools

## Why is this necessary?

If you rarely navigate between sessions in tmux then it's not. If you do, however, you might not be satified with having to consciously work out if you want to go to back to the previous window in this session, or need to go back to the previous session. They are separate commands. With this you just go back to the last window you were looking at, regardless of where it is.

## Default bindings

- alt-b = back
- prefix-backspace = back

## Tools

tail-history.sh

this plugin stores a log of all window changes in /tmp/tmux-back, this can be used to track history

## Not yet supported

- linked windows


## Works well with

- tmux-teleport
