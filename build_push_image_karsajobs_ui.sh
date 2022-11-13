#!/bin/bash
# Build image dengan nama berviantoleo/karsajobs:latest
docker build . -t berviantoleo/karsajobs-ui:latest
# login ke Github Package
echo $PAT | docker login ghcr.io --username berviantoleo --password-stdin
# Menambahkan tag dengan ghcr.io untuk melakukan push dan sekaligus push ke Github Package
docker tag berviantoleo/karsajobs-ui:latest ghcr.io/berviantoleo/karsajobs-ui:latest && docker push ghcr.io/berviantoleo/karsajobs-ui:latest
