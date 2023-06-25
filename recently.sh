#!/bin/bash

FILE="/tmp/tmux-window-state.log"

tail -n 250 "$FILE" | tac
