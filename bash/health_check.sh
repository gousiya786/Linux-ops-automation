#!/usr/bin/env bash
set -e

echo "Hostname:"
hostname

echo ""
echo "Uptime:"
uptime

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
free -h || echo "free command not available"

echo ""
echo "Top CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
