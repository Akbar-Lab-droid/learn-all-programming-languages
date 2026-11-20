#!/bin/bash
# Greet user - Bash
NAME="${1:-World}"
echo "Hello, $NAME!"
echo "Today is $(date '+%A, %d %B %Y')"
echo "Current time: $(date '+%H:%M')"
