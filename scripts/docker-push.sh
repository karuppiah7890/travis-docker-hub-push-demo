#!/bin/bash

set -e

git_tag=$1

if [ -z "$git_tag" ]
then
    echo "no git tag has been provided. usage: docker-push.sh <git-tag>"
    exit 1
fi

docker login --username karuppiah7890 --password $DOCKER_HUB_TOKEN
docker build -t karuppiah7890/dobby -t karuppiah7890/dobby:$git_tag .
docker push karuppiah7890/dobby
