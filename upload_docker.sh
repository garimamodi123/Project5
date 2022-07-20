#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath

dockerpath="garimamodi/project5"


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath" 
docker login
#docker tag 8ef3cf703e46 garimamodi/project4_udacity:latest

# Step 3:
# Push image to a docker repository
#docker push <hostname>:<repository-port>/<image>:<tag>
docker push garimamodi/project5:latest
