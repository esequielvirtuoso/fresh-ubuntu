echo "**************** Installing vim before install go... ****************"
sudo apt update && sudo apt upgrade
sudo apt install vim -y
vim --version
echo "**************** Vim successfully installed! ****************"

echo "**************** Removing any previous go version and installing newer version... ****************"
VERSION=1.20.4
wget -c https://go.dev/dl/go$VERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go$VERSION.linux-amd64.tar.gz


echo "**************** Set go environment variables... ****************"
cat >> ~/.profile <<x
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
x
source ~/.profile
echo "**************** Go variables all set! ****************"

go version
echo "**************** Golang successfully installed! ****************"
