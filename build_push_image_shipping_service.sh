#!/bin/bash
# Melakukan build image dari file Dockerfile menjadi image 'order-service'
docker build -t shipping-service:latest .

# mengubah nama image sesuai dengan format Github Packages
docker tag shipping-service:latest ghcr.io/obagus/shipping-service:latest

# Melakukan login ke github package metode Personal Access Token
echo $GITHUB_PACKAGE_ACCESS_TOKEN | docker login ghcr.io -u Obagus --password-stdin

# Mengunggah image ke Github Package
docker push ghcr.io/obagus/shipping-service:latest
