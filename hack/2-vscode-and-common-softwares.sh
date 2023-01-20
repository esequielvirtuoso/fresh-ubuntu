#!/bin/bash
echo "**************** Installing common packages (curl, wget, software-properties-common, apt-trnasport-https)... ****************"
sudo apt install curl software-properties-common apt-transport-https wget -y

echo "**************** Preparing to Install VSCode... ****************"
wget -O- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
echo "**************** Installing VSCode... ****************"
sudo apt install code
echo "**************** DONE! ****************"
