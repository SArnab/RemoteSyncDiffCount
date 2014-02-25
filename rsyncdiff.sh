#!/bin/bash

# syncDiff.sh
#
# Source and remote directories are compared through a file count.

source_dir=""
remote_user=""
remote_address=""
remote_path=""

syncdiff_count=$(rsync --dry-run -avz ${source_dir} ${remote_user}@${remote_address}:${remote_path} | wc -l | awk '{printf "%d", $1-5}')

echo "metric syncdiff_count double ${syncdiff_count}"
