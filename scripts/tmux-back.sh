#!/bin/bash

dir="/tmp/tmux-back-$(whoami)"
tty=$(tmux display-message -p -F "#{client_tty}" | tr '/' '_')
file="$dir/$tty-state.log"

penultimate_line=$(tail -n 30 $file | uniq | tail -2 | head -1)
window_id=$(echo $penultimate_line | awk '{ print $2 }')
session_name=$(echo $penultimate_line | awk '{ print $3 }')

current_session_id=$(tmux display-message -p '#{session_id}')
target_session_id=$(tmux display-message -p -t "$window_id" -F '#{session_id}')

if [[ "$current_session_id" == "$target_session_id" ]]; then
	tmux select-window -t "$window_id"
else
	tmux select-window -t "$window_id"
	tmux switch-client -t $target_session_id
fi

truncate_file() {
  local file=$1
  local lines=$2
  local temp_file=$(mktemp)
  tail -n $lines $file > $temp_file && mv $temp_file $file
}

# truncate_file $FILE 50
