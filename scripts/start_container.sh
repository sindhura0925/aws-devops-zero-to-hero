#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull sindhura0925/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5100:5000 sindhura0925/simple-python-flask-app
