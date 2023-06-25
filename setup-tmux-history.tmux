#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind -n M-q run-shell -b "$CURRENT_DIR/tmux-back.sh"
tmux bind -n C-Space run-shell -b "$CURRENT_DIR/tmux-back.sh"
tmux bind -n M-Space run-shell -b "$CURRENT_DIR/tmux-back.sh"
tmux bind  BSpace run-shell -b "$CURRENT_DIR/tmux-back.sh"
