#!/bin/bash

docker login --username karuppiah7890 --password $DOCKER_HUB_TOKEN
docker build -t karuppiah7890/dobby .
docker push karuppiah7890/dobby
