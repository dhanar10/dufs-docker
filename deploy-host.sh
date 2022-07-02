#!/usr/bin/env bash

set -x
set -e
set -o pipefail

docker run -d -u $(id -u):$(id -g) --restart unless-stopped \
    -v "$(pwd)":/data \
    --network host \
    sigoden/dufs -- /data
