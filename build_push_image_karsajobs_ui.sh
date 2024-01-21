#!/bin/bash

docker build -t craziyuhuu/karsajobs-ui:latest

echo $PASSWORD_DOCKER_HUB | docker login -u craziyuhuu --password-stdin

docker push craziyuhuu/karsajobs-ui:latest