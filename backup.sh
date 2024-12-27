#!/bin/bash
# Script to back up a directory

SOURCE_DIR="/var/www/html"
DEST_DIR="/backup/$(date +%F)"
mkdir -p "$DEST_DIR"
rsync -av --delete "$SOURCE_DIR/" "$DEST_DIR/"

echo "Backup completed successfully to $DEST_DIR"
