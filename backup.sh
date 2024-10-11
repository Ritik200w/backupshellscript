#!/bin/bash

SOURCE_DIR="/home/ritik/shellfolder"
DEST_DIR="/home/ritik/shellfolder/backups"
LOG_FILE="/home/ritik/shellfolder/access.log"

if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi

cp -r "$SOURCE_DIR"/* "$DEST_DIR"/

echo "Backup completed at: $(date)" >> "$LOG_FILE"
