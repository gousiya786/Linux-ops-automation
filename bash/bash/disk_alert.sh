#!/usr/bin/env bash
set -e

THRESHOLD=${1:-80}
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "ALERT: Disk usage is ${USAGE}% (threshold ${THRESHOLD}%)"
  exit 2
else
  echo "OK: Disk usage is ${USAGE}%"
fi
