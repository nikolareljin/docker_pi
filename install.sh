#!/bin/bash

# update
sudo apt-get update

# prerequisites
sudo apt-get install apt-transport-https \
                       ca-certificates \
                       software-properties-common

# add GPG key
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
# verify key
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D

# install latest Docker raspbian repo
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       raspbian-$(lsb_release -cs) \
       main"

# alternative:
# sudo vim /etc/apt/sources.list
# add this:
# https://apt.dockerproject.org/repo/ raspbian-jessie main

# update
sudo apt-get update

# install Docker
sudo apt-get -y install docker-engine

# test
docker run hello-world
