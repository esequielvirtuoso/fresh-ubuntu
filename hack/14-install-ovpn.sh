#!/bin/bash
echo "**************** Installing OVNP3... ****************"
sudo apt update
sudo apt install apt-transport-https -y
sudo wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
sudo apt-key add openvpn-repo-pkg-key.pub
sudo wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-jammy.list
sudo apt update
sudo apt install openvpn3 -y
