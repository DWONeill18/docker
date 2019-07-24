#!/bin/bash

IMAGE=nginx
HOST=localhost:5000/my/nginx

docker run -d -p 5000:5000 --name registry registry
docker pull nginx
docker tag nginx localhost:5000/my/nginx
docker push localhost:5000/my/nginx
docker rmi nginx localhost:5000/my/ngnix
docker pull localhost:5000/my/ngnix 



docker run -d -p 5000:5000 --name registry registry
docker pull $IMAGE
docker tag $IMAGE $HOST
docker push $HOST
docker rmi $IMAGE $HOST
docker pull $HOST

