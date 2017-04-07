#!/bin/bash

#apt-get update

apt-get -y install wget
docker -v >/dev/null
if [  $? != 0 ]; then
  wget -qO- https://get.docker.com/ | sh
fi
gpasswd -a vagrant docker
service docker restart
