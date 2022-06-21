#!/bin/bash

dnf update -y

sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

dnf install -y docker-ce

systemctl start docker
systemctl enable docker

usermod -aG docker $USER

docker run hello-world

dnf install -y curl

sudo curl -L "https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version
