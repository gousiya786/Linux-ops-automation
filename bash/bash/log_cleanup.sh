#!/usr/bin/env bash
set -e

LOG_DIR=${1:-/var/log}
DAYS=${2:-7}

echo "Cleaning log files older than $DAYS days in $LOG_DIR"

find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS" -print -delete || true
