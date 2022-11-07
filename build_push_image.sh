#!/bin/sh
# build image dengan tag item-app:v1
docker build . -t item-app:v1
# menampilkan list image
docker image ls
# membuat tag baru dari item-app:v1 ghcr.io/berviantoleo/a433-microservices:v1
docker tag item-app:v1 ghcr.io/berviantoleo/a433-microservices:v1
# menggunakan variabel PAT dan login ke github package
echo $PAT | docker login ghcr.io --username berviantoleo --password-stdin
# push image ke github package
docker push ghcr.io/berviantoleo/a433-microservices:v1