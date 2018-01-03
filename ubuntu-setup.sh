#!/bin/bash

# update packages
sudo apt-get update
sudo apt-get upgrade

# Install vim
sudo apt install vim

# Install oracle java 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get install oracle-java8-installer
sudo apt-get update

#add JAVA_HOME
sudo /bin/sh -c 'echo "JAVA_HOME=\"/usr/lib/jvm/java-8-oracle\"" >> /etc/environment'

source /etc/environment

echo "The JAVA_HOME variable is set to $JAVA_HOME"

# Install dev tools

sudo apt install maven
sudo apt install git
sudo apt install curl

# Install docker

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce
