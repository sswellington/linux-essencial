#!/bin/bash

# Install
# sudo chmod 777 ubuntu.sh
# sudo ./ubuntu.sh

echo "Atualizando o Sistema Operacional..."
sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoclean
sudo apt -y autoremove
sudo apt -y clean

echo "Preparando o ambiente"
sudo apt -y install ubuntu-restricted-extras
sudo apt -y install gnome-tweaks

echo "Instalando gparted"
sudo apt -y install gparted

echo "Instalando Google-Chrome"
sudo apt -y install 'https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.deb'

echo "Instalando Opera"
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add - 
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt -y install opera-stable

echo "Instalando VLC"
sudo apt -y install vlc

echo "Instalando Spectacle"
sudo apt -y install spectacle

echo "Instalando Okular"
sudo apt -y install okular

echo "Instalando Gimp"
sudo apt -y install gimp

echo "Instalando Inkscape"
sudo apt -y install inkscape

echo "Instalando Transmission"
sudo apt -y install transmission

echo "Instalando Sublime-Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

echo "Instalando Build Essential"
sudo apt -y install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl

sudo apt -y install neofetch

echo "Realizando os últimos ajustes"
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoclean
sudo apt -y autoremove
sudo apt -y clean

echo "Sistema Operacional Atualizado"
echo "Em breve seu computador será reiniciado"
sudo shutdown -r 1

# Dash to Dock
