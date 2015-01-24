#!/bin/bash -x
dockerid=$(docker ps -f status=running | grep docker-reveal.js | awk '{print $1}')
docker exec -i $dockerid pandoc --version
