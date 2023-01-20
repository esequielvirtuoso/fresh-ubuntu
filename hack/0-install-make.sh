#!/bin/bash
echo "**************** Installing Make... ****************"
sudo apt update
sudo apt install make -y
make --version
echo "**************** DONE! ****************"
