#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=vprocopan/project-ml

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl run project-ml -- --image=vprocopan/project-ml:v1 --port=80


# Step 3:
# List kubernetes pods
minikube kubectl get pods 

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward project-ml 8000:80

