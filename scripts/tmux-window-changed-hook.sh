#!/bin/bash

dir="/tmp/tmux-back"
mkdir -p $dir

tty=$(tmux display-message -p -F "#{client_tty}" | tr '/' '_')
file="$dir/$tty-state.log"
touch $file
chmod 0600 $file
timestamp=$(date +"%s")
tmux display-message -p -F "$timestamp	#{window_id}	#{session_name}	#{window_name}" >> $file
