#!/bin/bash
echo "**************** Add tilix to apt repository... ****************"
sudo add-apt-repository ppa:ubuntuhandbook1/tilix
sudo apt update
echo "**************** Installing tilix... ****************"
sudo apt install tilix -y
echo "**************** Tilix successfuly installed! ****************"

echo "**************** Installing zsh... ****************"
sudo apt update
sudo apt install zsh -y
echo "**************** zsh successfuly installed! ****************"

echo "**************** Changing deafult from bash to zsh... ****************"
echo "**************** ENTER the password... ****************"
chsh
