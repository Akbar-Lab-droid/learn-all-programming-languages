#!/bin/bash
# System info - Bash: print a quick system report
echo "=== System Report ==="
echo "Hostname: $(hostname)"
echo "OS: $(uname -s) $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "User: $USER"
echo "--- Memory ---"
free -h | head -2
echo "--- Disk ---"
df -h / | tail -1
