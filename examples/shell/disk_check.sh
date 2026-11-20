#!/bin/bash
# Disk usage check - Bash: warn when any disk is over 80% full
echo "Disk usage:"
df -h | awk 'NR==1 || $5+0 >= 80 {print}'

usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
if [ "$usage" -ge 80 ]; then
  echo "WARNING: root disk is ${usage}% full!"
else
  echo "Root disk OK: ${usage}% used."
fi
