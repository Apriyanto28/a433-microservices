#!/bin/bash

docker build -t item-app:v1 .
dokcer images
docker tag item-app:v1 craziyuhuu/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u craziyuhuu --password-stdin
docker push craziyuhuu/item-app:v1