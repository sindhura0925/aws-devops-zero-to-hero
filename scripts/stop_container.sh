#!/bin/bash
set -e

# Stop the running container (if any)
cid=docker ps -a | awk -F" " 'NR>1 {print $1}'
docker rm -f $cid