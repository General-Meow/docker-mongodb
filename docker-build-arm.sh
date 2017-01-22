#!/bin/bash
rm ./files/mongodb-arm.tar.gz
rm -rf ./files/mongo-arm-extract
mkdir ./files/mongo-arm-extract
cat ./files/mongodb-ubuntu-arm/mongodb-ubuntu-arm-3.4.1.tar.gz* > ./files/mongodb-arm.tar.gz
tar -zxvf ./files/mongodb-arm.tar.gz -C ./files/mongo-arm-extract
rm ./files/mongodb-arm.tar.gz
docker build -f Dockerfile-arm -t generalmeow/mongodb:1.0-arm .
