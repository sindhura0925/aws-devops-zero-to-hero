#!/bin/bash
set -e

# Stop the running container (if any)

# Get all running container IDs into an array
readarray -t container_ids < <(docker ps -q)

if [ "${#container_ids[@]}" -eq 0 ]; then
    echo "No running containers to stop."
else
    echo "Stopping and removing containers: ${container_ids[*]}"
    docker rm -f "${container_ids[@]}"
fi
