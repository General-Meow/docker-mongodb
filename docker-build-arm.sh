#!/bin/bash
cat ./files/mongodb-ubuntu-arm/mongodb-ubuntu-arm-3.4.1.tar.gz* > ./files/mongodb-arm.tar.gz
tar - zxvf ./files/mongodb-arm.tar.gz -c ./files/mongo-arm-extract
docker build -f Dockerfile-arm -t generalmeow/mongodb:1.0-arm ./files
