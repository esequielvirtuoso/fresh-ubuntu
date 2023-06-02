#!/bin/bash
echo "**************** Uninstall old docker versions... ****************"
sudo apt-get remove docker docker-engine docker.io containerd runc

echo "**************** Install docker... ****************"
sudo apt-get update
sudo apt-get install ca-certificates gnupg lsb-release curl -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
echo "**************** Docker successfully installed! ****************"

echo "**************** Docker post installation for LINUX! ****************"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
echo "**************** Docker successfully set! ****************"

# COMPOSE
sudo apt update
sudo apt install docker-compose
