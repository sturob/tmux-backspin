#!/bin/bash

FILE="/tmp/tmux-window-state.log"
touch $FILE
chmod 0600 $FILE

tmux display-message -p -F "#{session_name} #{window_name} #{window_id}" >> $FILE
