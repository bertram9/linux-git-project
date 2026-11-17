#!/bin/bash

DISK_USAGE=$(df -h / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')

echo " Date and Time:$( date '+%Y-%m-%d %H:%M:%S')"

echo "Current disk usage:${DISK_USAGE}%"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is high!"
else
    echo "NORMAL: Disk usage is okay."
fi
