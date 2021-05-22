#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=project-ml

# Step 2:  
# Authenticate & tag
docker login --username vprocopan
docker tag project-ml vprocopan/project-ml:v1
echo "Dockeri ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push vprocopan/project-ml:v1 
