#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker push parameshnaathi/simple-python-flask-app

# Run the Docker image as a container
docker -d -p 5000:5000 parameshnaathi/simple-python-flask-app
