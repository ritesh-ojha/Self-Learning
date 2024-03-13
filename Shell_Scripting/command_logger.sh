#!/bin/bash

# Set the filename for storing commands
LOG_FILE="command_log.txt"

# Function to log commands to the log file
log_command() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" >> "$LOG_FILE"
}

# Print a message indicating the start of logging
echo "Logging terminal commands to $LOG_FILE..."
echo ""

# Trap the INT signal (Ctrl+C) to stop logging gracefully
trap 'echo "Stopping logging..."; exit' INT

# Loop to read and log commands until the user exits
while true; do
    read -e -p "> " command  # -e enables readline for history and editing
    log_command "$command"
done
