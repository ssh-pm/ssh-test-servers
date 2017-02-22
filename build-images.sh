#!/bin/bash

DOCKER_ROOT=docker
DOCKER_FILES=$DOCKER_ROOT/*

for docker_file in $DOCKER_FILES 
do
  IMAGE_TAG=$(echo $docker_file | sed -e "s/docker\/Dockerfile\.//" )
  
  echo "Building sshpm-test-server$IMAGE_TAG..."
  docker build -t sshpm-test-server:$IMAGE_TAG -f $docker_file $DOCKER_ROOT


done

