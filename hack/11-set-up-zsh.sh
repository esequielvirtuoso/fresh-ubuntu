#!/bin/bash
echo "**************** Add tilix to apt repository... ****************"
sudo apt update
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
# reboot the machine
sudo reboot now
# type 2 to set the recommended configuration.


echo "**************** Install oh-my-zsh... ****************"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# let's install the powerlevel10k theme
cd $HOME
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# access github.com/ibnysrat/my-linux-setup
cd $HOME
git clone https://github.com/ibnYusrat/my-linux-setup
# go to my-linux-setup and copy the fonts to $HOME/.fonts
sudo mkdir -p $HOME/.fonts
cp -a $HOME/my-linux-setup/powerline-fonts/. $HOME/.fonts

# install gnome tweaks
sudo apt install gnome-tweaks -y

# make zsh defult
chsh -s $(which zsh)

# open tweaks and set font to MesloLGS NF Regular, do the same with terminal and tilix
# edit $HOME.zshrc file and set ZSH_THEME="powerlevel10k/powerlevel10k", save and close.
# Now, follow the instructions on the terminal

# set tilix as default terminal emulator
sudo update-alternatives --config x-terminal-emulator
