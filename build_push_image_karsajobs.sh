#!/bin/bash

docker build -t craziyuhuu/karsajobs:latest

echo $PASSWORD_DOCKER_HUB | docker login -u craziyuhuu --password-stdin

docker push craziyuhuu/karsajobs:latest