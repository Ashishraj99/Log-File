#!/bin/bash

# Define keywords or patterns to track (modify as needed)
KEYWORDS=("error" "warning" "INFO" "404" "500")

# Function to handle Ctrl+C interrupt
function signal_handler() {
  echo "\nStopping monitoring..."
  exit 0
}

# Register signal handler for Ctrl+C
trap signal_handler SIGINT

# Log entry counter
declare -A LOG_ENTRIES

# Continuously monitor log file for new entries using 'tail -f'
tail -f logfile | while read -r LOG_ENTRY; do

  # Print new log entry
  echo "$LOG_ENTRY"

  # Update log entry counter for each keyword
  for KEYWORD in "${KEYWORDS[@]}"; do
    if [[ $LOG_ENTRY =~ $KEYWORD ]]; then
      LOG_ENTRIES["$KEYWORD"]=$(( ${LOG_ENTRIES["$KEYWORD"]} + 1 ))
    fi
  done
done
