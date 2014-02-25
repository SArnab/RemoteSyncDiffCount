#!/bin/bash

# syncDiff.sh
#
# Source and remote directories are compared through a file count.

syncdiff_count=$(rsync --dry-run -avz $1 $2@$3:$4 | wc -l | awk '{printf "%d", $1-5}')

echo "File Diff Count: ${syncdiff_count}"
