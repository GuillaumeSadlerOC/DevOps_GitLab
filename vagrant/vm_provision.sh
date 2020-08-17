#!/bin/bash

# Update and upgrade linux distribution paquages
sudo apt -y update
sudo apt -y upgrade

# Install Docker
sudo apt -y remove docker docker-engine docker.io containerd runc
sudo apt -y update
sudo apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt -y update
sudo apt -y install docker-ce docker-ce-cli containerd.io 

# Install Docker Compose 
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Adding user vagrant to docker group
usermod -aG docker vagrant

# Install NFS requirements
sudo apt install nfs-common portmap

# Git
git config --global user.email "guillaume.sadler@gmail.com"
git config --global user.name "Guillaume Sadler"

# GitLab and GitLab Runner
docker-compose -f /home/vagrant/gitlab/docker-compose.yml up -d --build