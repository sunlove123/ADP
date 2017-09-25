#!/bin/bash

echo "Installing Docker"
yum -y update
yum -y install docker docker-registry
systemctl enable docker.service
systemctl start docker.service

echo "Making host Entry"
echo "127.0.0.1  myfirstpage.com" >> /etc/hosts
echo "127.0.0.1  mysecondpage.com" >> /etc/hosts
echo "127.0.0.1  mythirdpage.com" >> /etc/hosts

echo "Running Nginx Server in docker"
docker build --rm -t deena:v1 .
docker run -itd --name=deepak deena:v1 
