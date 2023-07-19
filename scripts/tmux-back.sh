#!/bin/bash

dir="/tmp/tmux-back"
tty=$(tmux display-message -p -F "#{client_tty}" | tr '/' '_')
file="$dir/$tty-state.log"

LAST=""
BACK=""
FWD=""

# old_window_id=$(tmux display-message -p -F "#{window_id}")

penultimate_line=$(cat $file | uniq | tail -2 | head -1)
window_id=$(echo $penultimate_line | awk '{ print $2 }')
session_id=$(echo $penultimate_line | awk '{ print $3 }')

tmux switch-client -t $session_id
tmux select-window -t "$window_id"

truncate_file() {
  local file=$1
  local lines=$2
  local temp_file=$(mktemp)
  tail -n $lines $file > $temp_file && mv $temp_file $file
}

# truncate_file $FILE 50
