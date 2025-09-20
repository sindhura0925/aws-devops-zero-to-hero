#!/bin/bash
set -e

# Stop the running container (if any)
cid=$(docker ps | awk 'NR>1 {print $1}')
echo $cid
docker rm -f $cid
