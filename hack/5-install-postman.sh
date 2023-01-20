#!/bin/bash
echo "**************** Installing Snap... ****************"
cd $HOME
sudo apt update
sudo apt install snap -y
echo "**************** Installing Postman... ****************"
sudo snap install postman -y
echo "**************** DONE! ****************"
