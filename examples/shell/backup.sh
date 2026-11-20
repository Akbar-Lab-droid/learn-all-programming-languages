#!/bin/bash
# Simple backup - Bash: copy a folder into a dated archive
SUMBER="$1"
TUJUAN="backup-$(date +%Y%m%d).tar.gz"

if [ -z "$SUMBER" ]; then
  echo "Usage: ./backup.sh <folder>"
  exit 1
fi

tar -czf "$TUJUAN" "$SUMBER"
echo "Backup complete: $TUJUAN"
