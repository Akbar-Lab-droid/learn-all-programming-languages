#!/bin/bash
# Rename files - Bash: rename all .jpeg files to .jpg in a folder
DIR="${1:-.}"
count=0
for file in "$DIR"/*.jpeg; do
  [ -e "$file" ] || continue
  mv "$file" "${file%.jpeg}.jpg"
  count=$((count + 1))
done
echo "Renamed $count file(s) from .jpeg to .jpg in $DIR"
