#!bin/bash
[ -z "$1" ] && { echo "Usage: bash comment-top-line.sh <dir>"; exit 1; }
echo "Adding Name and ID to the following"
find $1 -type f -name '*.ts' -printf "%p\n" -exec sed -i '1i // Name: David Prince ID: 1539802' {} +
echo "Done"
