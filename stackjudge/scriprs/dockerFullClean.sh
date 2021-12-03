#!/bin/bash

docker rmi $(docker images -a -q) -f
docker rm -f $(docker ps -a -q)
