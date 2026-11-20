#!/bin/bash
# Count files - Bash: count files in a folder (default: current folder)
DIR="${1:-.}"
echo "Counting files in: $DIR"
echo "Files: $(find "$DIR" -type f | wc -l)"
echo "Folders: $(find "$DIR" -type d | wc -l)"
