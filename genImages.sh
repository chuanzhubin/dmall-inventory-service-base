#!/usr/bin/env bash

DMALL_DOCKER_REGISTRY="ec2-54-95-48-23.ap-northeast-1.compute.amazonaws.com:5000"
SLUG=chuanzhubin
BUILD_NUMBER=1
sudo docker build -t $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:$BUILD_NUMBER .
sudo docker tag $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:$BUILD_NUMBER $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:latest

sudo docker push $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:$BUILD_NUMBER
sudo docker push $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:latest