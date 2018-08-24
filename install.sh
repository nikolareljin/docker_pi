#!/bin/bash

# update
sudo apt-get update -y

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io

# prerequisites
sudo apt-get install apt-transport-https \
                       ca-certificates \
                       software-properties-common -y

curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
sudo sh get-docker.sh

# @TODO: enable if having issues with the script
## add GPG key
#curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
## verify key
#apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
#
## install latest Docker raspbian repo
#sudo add-apt-repository \
#       "deb https://apt.dockerproject.org/repo/ \
#       raspbian-$(lsb_release -cs) \
#       main"
#
## alternative:
## sudo vim /etc/apt/sources.list
## add this:
## https://apt.dockerproject.org/repo/ raspbian-jessie main
#
## update
#sudo apt-get update -y
#
## install Docker
#sudo apt-get -y install docker-engine -y

sudo apt-get update -y
sudo apt-get install docker-compose -y

# test
docker run hello-world
