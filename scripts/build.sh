#!/bin/bash
#
# Build a site in a sub-repo.
#
set -e

export BASE="$(pwd)"
echo ''
echo '-----'
echo "You are in $BASE"

# See http://patorjk.com/software/taag/#p=display&f=Ivrit&t=Drupal%20Starterkit
cat ./scripts/lib/my-ascii-art.txt

echo ''
echo '-----'
echo 'Check hugo version.'
docker pull hugomods/hugo:latest

echo ''
echo '-----'
echo 'Check hugo version.'
docker run --rm hugomods/hugo:latest version

echo ''
echo '-----'
echo 'Building site to ./hugo/public.'
docker run --rm -v "$(pwd)"/hugo:/src/hugo hugomods/hugo:latest build
