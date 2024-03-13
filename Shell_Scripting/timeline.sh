#!/bin/bash

# load logo file

source logo.sh

# Check if the timeline file exists, if not create it
TIMELINE_FILE="timeline.txt"
if [ ! -f "$TIMELINE_FILE" ]; then
    touch "$TIMELINE_FILE"
fi

# Prompt for the day, description, and learning
read -p "Enter the day number: " DAY
read -p "Enter a description: " DESCRIPTION
read -p "Enter what you learned: " LEARNING

# Write the day, description, and learning to the timeline file
echo "Day $DAY: $DESCRIPTION - $LEARNING" >> "$TIMELINE_FILE"

echo "Learning added to timeline!"
