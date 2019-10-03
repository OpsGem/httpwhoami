#!/bin/bash

image=ascend6/whoami

docker build -t ${image} .
docker login -u ascend6
docker push ${image}

