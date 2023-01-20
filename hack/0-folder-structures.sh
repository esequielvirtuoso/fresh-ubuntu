#!/bin/bash
echo "**************** Creating .ssh directory... ****************"
cd $HOME
sudo mkdir -p .ssh

echo "**************** Creating workspace directory... ****************"
cd $HOME
sudo mkdir -p workspace/go/src/github.com/esequielvirtuoso
cd $HOME
sudo mkdir -p workspace/go/src/gitlab.neoway.com.br

echo "**************** Creating .vpn directory... ****************"
cd $HOME
sudo mkdir -p .config/vpn
echo "**************** DONE! ****************"
