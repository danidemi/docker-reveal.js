#!/bin/bash -x
docker run -d -v $(pwd):/slides/ -p 8000:8000 "docker-reveal.js"
