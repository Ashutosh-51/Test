#!/bin/bash

Log_Dir="/var/log"
ARCHIVE_DIR="archives"

mkdir -p "$ARCHIVE_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive$TIMESTAMP.tar.gz"
ARCHIVE_PATH=${ARCHIVE_DIR}/${ARCHIVE_NAME}

tar -czf "$ARCHIVE_PATH" -C / var/log

echo "$TIMESTAP -created archive in $ARCHIVE_PATH" >> archive_log.txt

