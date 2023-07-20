#!/usr/bin/env bash

dir="/tmp/tmux-back"
tty=$(tmux display-message -p -F "#{client_tty}" | tr '/' '_')
file="$dir/$tty-state.log"

n=20

if [[ $1 -gt 0 ]]; then
	n=$1
fi

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tail -n $n -F $file | $CURRENT_DIR/format-history.sh 
