#!/bin/bash

APP_NAME="sample-app"
IMAGE_NAME="hxbeeb11/sample-app:latest"

cd /home/ubuntu/flask-app

echo "Stopping and removing old container (if any)..."
docker stop $APP_NAME || true
docker rm $APP_NAME || true

echo "Pulling latest Docker image..."
docker pull $IMAGE_NAME

echo "Starting new container..."
docker run -d --name $APP_NAME -p 80:5000 $IMAGE_NAME

echo "Deployment complete!"
