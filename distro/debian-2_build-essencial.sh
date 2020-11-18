#!/bin/bash

# Install
# sudo chmod 777 debian.sh
# sudo ./debian.sh

echo "Atualizando o Sistema Operacional..."
sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoclean
sudo apt -y autoremove
sudo apt -y clean

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
