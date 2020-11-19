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

echo "Preparando o ambiente"
sudo apt -y install gnome-tweaks

echo "Instalando drive de impressora"
sudo apt -y install task-print-server \
sudo apt -y install cups

echo "Instalando drive de audio"
sudo apt -y install pulseaudio \
sudo apt -y install pavucontrol

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

echo "Instalando Thunderbird"
sudo apt -y install thunderbird

echo "Instalando VPN"
sudo apt -y install vpnc network-manager-vpnc
sudo apt -y install vpnc network-manager-vpnc-gnome

echo "Instalando Gimp"
sudo apt -y install gimp

echo "Instalando Inkscape"
sudo apt -y install inkscape

echo "Instalando Transmission"
sudo apt -y install transmission

echo "Instalando Neofetch"
sudo apt -y install neofetch

echo "Fish"
sudo apt -y install fish

echo "OBS Studio"
sudo apt -y install obs-studio

echo "Realizando os últimos ajustes"
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoclean
sudo apt -y autoremove
sudo apt -y clean
