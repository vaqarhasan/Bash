#!/bin/bash

# Directory to clean up
TARGET_DIR="/vaqarhasan"

# Check if the directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: Directory $TARGET_DIR does not exist."
  exit 1
fi

# Find and delete files older than 30 days
find "$TARGET_DIR" -type f -mtime +30 -exec rm -f {} \;

# Log the action
echo "$(date): Deleted files older than 30 days in $TARGET_DIR"
