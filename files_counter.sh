#!/bin/bash

set -e

if [ ! -d "/etc" ]; then
  echo "The /etc directory does not exist."
  exit 1
fi

file_count=$(find /etc -type f | wc -l)

echo "Number of regular files in /etc (excluding directories and links): $file_count"
