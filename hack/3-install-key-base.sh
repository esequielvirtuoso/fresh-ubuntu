#!/bin/bash
echo "**************** Installing keybase... ****************"
sudo apt update
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ./keybase_amd64.deb -y
rm keybase_amd64.deb
echo "**************** DONE! ****************"
