#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind -n M-b run-shell -b "$CURRENT_DIR/scripts/tmux-back.sh"
tmux bind BSpace run-shell -b "$CURRENT_DIR/scripts/tmux-back.sh"

tmux set-hook -g session-window-changed "run-shell -b $CURRENT_DIR/scripts/tmux-window-changed-hook.sh"
# fixme: sometimes you need the next line, other times it produces dupes in the log
tmux set-hook -g client-session-changed "run-shell -b $CURRENT_DIR/scripts/tmux-window-changed-hook.sh"

