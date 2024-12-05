#!/bin/bash
#
# Deploy the CMS locally
#
set -e

docker run --rm -d -p 80 -v "$PWD/docs/admin":/usr/share/nginx/html:ro nginx:alpine
