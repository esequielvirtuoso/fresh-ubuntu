#!/bin/bash
echo "**************** Setting .ssh keys permissions... ****************"
cd $HOME/.ssh
sudo chmod 644 id_rsa.pub
sudo chmod 600 id_rsa
ls -l
echo "**************** DONE! ****************"
