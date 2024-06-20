#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
echo "pulling the docker image from the docker repo"

docker pull sureshpasamawsdevops/simple-python-flask-app

# Run the Docker image as a container
echo "Run the docker image for 5000 port"
docker run -d -p 5000:5000
