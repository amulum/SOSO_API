#!/bin/bash

eval "$(ssh-agent -s)" &&
ssh-add -k ~/.ssh/id_rsa &&
cd ~/docker/backend #helloworld
git pull

source ~/.profile
echo "$DOCKERHUB_PASS" | docker login --username $DOCKERHUB_USER --password-stdin
docker stop soso-api
docker rm soso-api
docker rmi yuyyum/containerd:be
docker run -d --name soso-api -p 5000:5000 yuyyum/containerd:be