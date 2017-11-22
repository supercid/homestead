#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
sudo apt-get install zsh -yqq
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="fino"/g'  ~/.zshrc
sed -i 's/plugins=(git)/plugins=(git laravel5)/g'  ~/.zshrc
echo '\n' >> ~/.zshrc
cat ~/.bash_aliases >> ~/.zshrc
echo 'exec zsh' >> ~/.bashrc