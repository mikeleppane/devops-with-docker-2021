#!/bin/bash

GIT_PROJECT=https://github.com/docker-hy/material-applications.git
DOCKER_HOST=docker.io
DOCKER_TAG=mikkolep/devops-with-docker-part3-ex2:v1

if [[ -z $DOCKER_USER ]]; then
  echo "You must set DOCKER_USER (DockerHub username) environment variable!!"
  echo "This required in order to login into DockerHub. Exiting..."
  exit 1
fi

if [[ -z $DOCKER_PASS ]]; then
  echo "You must set DOCKER_PASS (DockerHub password) environment variable!!"
  echo "This required in order to login into DockerHub. Exiting..."
  exit 1
fi

git clone $GIT_PROJECT
cd material-applications/simple-web-service
docker build . -t simple-web-service
docker tag simple-web-service $DOCKER_TAG
echo "$DOCKER_PASS" | docker login --username=$DOCKER_USER --password-stdin $DOCKER_HOST
docker push $DOCKER_TAG
