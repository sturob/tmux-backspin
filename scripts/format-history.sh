#!/bin/bash

RESET=$(tput sgr0)
# GREEN=$(tput setaf 2)
# BLUE=$(tput setaf 4)
GREY=$(tput setaf 8)

# Get current timestamp
current_timestamp=$(date +%s)

# 24 hours in seconds
one_day=$((24 * 60 * 60))

while read -r line; do
    timestamp=$(echo "$line" | awk '{print $1}')
    event=$(echo "$line" | awk '{print $3, "> " $4}')
    
    # Check if timestamp is older than 24 hours
    if (( current_timestamp - timestamp > one_day )); then
        # Format as date if older than 24 hours
        time=$(date -d@"$timestamp" "+%d/%m")
    else
        # Format as time if within last 24 hours
        time=$(date -d@"$timestamp" "+%H:%M")
    fi

    echo "$GREY$time$RESET  $event"
done

