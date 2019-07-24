#!/bin/bash

docker stop $(docker ps -qa)
docker rm -f $(docker ps -qa)
docker rmi $(docker images -q)
docker system prune -f
docker system prune --volumes -f




