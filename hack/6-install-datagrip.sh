#!/bin/bash
echo "**************** Installing Datagrip... ****************"
cd $HOME
sudo apt update
sudo apt install libfuse2
wget -c https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.27.2.13801.tar.gz
sudo tar -xzf jetbrains-toolbox-1.27.2.13801.tar.gz -C /opt
./opt/jetbrains-toolbox-1.27.2.13801/jetbrains-toolbox
echo "**************** DONE! ****************"
