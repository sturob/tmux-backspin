#!/bin/bash

penultimate_line=$(cat /tmp/tmux-window-state.log | uniq | tail -2 | head -1)
window_id=$(echo $penultimate_line | awk '{ print $3 }')
session_id=$(echo $penultimate_line | awk '{ print $1 }')

tmux select-window -t "$window_id"
tmux switch-client -t $session_id

