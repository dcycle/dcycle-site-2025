#!/bin/bash
#
# Deploy a local site.
#
set -e

export BASE="$(pwd)"
echo ''
echo '-----'
echo "You are in $BASE"

docker run --rm -p 1313:1313 -v "$(pwd)"/hugo:/src hugomods/hugo:latest server
