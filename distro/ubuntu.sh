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


echo "Instalando Build Essential"
sudo apt -y install curl
sudo apt -y install wget
sudo apt -y install git
sudo apt -y install vim
sudo apt -y install vim-gtk3
sudo apt -y install software-properties-common
sudo apt -y install bison
sudo apt -y install gcc
sudo apt -y install make
sudo apt -y install automake
sudo apt -y install default-jdk
sudo apt -y install libssl-dev
sudo apt -y install apt-transport-https 
sudo apt -y install telnet
sudo apt -y install exuberant-ctags
sudo apt -y install fontconfig
sudo apt -y install imagemagick
sudo apt -y install gnupg-agent 
sudo apt -y install libjpeg-dev
sudo apt -y install libmariadb-dev
sudo apt -y install libcurl4-openssl-dev
sudo apt -y install libreadline-dev 
sudo apt -y install libedit-dev 
sudo apt -y install zlib1g-dev 
sudo apt -y install libicu-dev 
sudo apt -y install libxml2-dev 
sudo apt -y install libmagickwand-dev
sudo apt -y install libpq-dev
sudo apt -y install ca-certificates
sudo apt -y install gettext
sudo apt -y install ack-grep
sudo apt -y install autoconf
sudo apt -y install ncurses-term 
sudo apt -y install silversearcher-ag 
sudo apt -y install openssl
sudo apt -y install pkg-config 
sudo apt -y install htop
sudo apt -y install lm-sensors


echo "Instalando gparted"
sudo apt -y install gparted

echo "Instalando VLC"
sudo apt -y install vlc

echo "Instalando Spectacle"
sudo apt -y install spectacle

echo "Instalando Okular"
sudo apt -y install okular

echo "Instalando PDF-Shuffler"
sudo apt -y install pdfshuffler

echo "Instalando VPN"
sudo apt -y install vpnc network-manager-vpnc
sudo apt -y install vpnc network-manager-vpnc-gnome

echo "Instalando Gimp"
sudo apt -y install gimp

echo "Instalando Inkscape"
sudo apt -y install inkscape

echo "Instalando Transmission"
sudo apt -y install transmission

echo "OBS Studio"
sudo apt -y install obs-studio

echo "Fish"
sudo apt -y install fish

sudo apt -y install pip

sudo apt -y install neofetch



echo "Instalando Sublime-Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

echo "Instalando Visual Studio Code"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get -y update
sudo apt-get -y install code # or code-insiders

# echo "Instalando Google-Chrome"
# sudo apt -y install 'https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.deb'

# echo "Instalando Opera"
# wget -qO- https://deb.opera.com/archive.key | sudo apt-key add - 
# sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
# sudo apt -y install opera-stable

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
