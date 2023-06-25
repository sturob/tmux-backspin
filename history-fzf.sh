#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

fzf_output=$( $CURRENT_DIR/recently.sh | fzf --ansi \
	--bind "ctrl-r:reload($CURRENT_DIR/recently.sh)" )

window_id=$(echo "$fzf_output" | awk '{print $3}')

current_session=$(tmux display-message -p '#{session_id}')
session_id=$(tmux display-message -p -t "$window_id" -F '#{session_id}')

if [[ "$current_session" == "$session_id" ]]; then
	tmux select-window -t "$window_id"
else
	tmux select-window -t "$window_id"
	tmux switch-client -t $session_id
fi

