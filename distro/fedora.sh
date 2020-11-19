#!/bin/bash

# Install
# sudo chmod 777 fedora.sh
# sudo ./fedora.sh

# yum == dnf

echo "Atualizando o Sistema Operacional..."
sudo dnf -y update
sudo dnf -y upgrade

echo "Preparando o ambiente"
sudo dnf install deltarpm nano
sudo nano /etc/dnf/dnf.conf
su -c 'dnf install deltarpm && echo "deltarpm=1" >> /etc/dnf/dnf.conf'
sudo dnf -y upgrade

sudo dnf -y install 
sudo dnf -y install gnome-tweaks 
sudo dnf -y install papirus-icon-theme 
sudo dnf -y install amrnb 
sudo dnf -y install amrwb 
sudo dnf -y install faad2 
sudo dnf -y install flac 
sudo dnf -y install ffmpeg 
sudo dnf -y install gpac-libs 
sudo dnf -y install lame 
sudo dnf -y install libfc14audiodecoder 
sudo dnf -y install mencoder 
sudo dnf -y install mplayer 
sudo dnf -y install x264 
sudo dnf -y install x265 
sudo dnf -y install gstreamer-plugins-espeak 
sudo dnf -y install gstreamer-plugins-fc 
sudo dnf -y install gstreamer-rtsp 
sudo dnf -y install gstreamer-plugins-good 
sudo dnf -y install gstreamer-plugins-bad 
sudo dnf -y install gstreamer-plugins-bad-free-extras 
sudo dnf -y install gstreamer-plugins-bad-nonfree 
sudo dnf -y install gstreamer-plugins-ugly 
sudo dnf -y install gstreamer-ffmpeg 
sudo dnf -y install gstreamer1-plugins-base 
sudo dnf -y install gstreamer1-libav 
sudo dnf -y install gstreamer1-plugins-bad-free-extras 
sudo dnf -y install gstreamer1-plugins-bad-freeworld 
sudo dnf -y install gstreamer1-plugins-base-tools 
sudo dnf -y install gstreamer1-plugins-good-extras 
sudo dnf -y install gstreamer1-plugins-ugly 
sudo dnf -y install gstreamer1-plugins-bad-free 
sudo dnf -y install gstreamer1-plugins-good

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Instalando Build Essential"
sudo yum -y install 
sudo yum -y install make 
sudo yum -y install automake 
sudo yum -y install gcc 
sudo yum -y install gcc-c++ 
sudo yum -y install bison 
sudo yum -y install java 
sudo yum -y install vim 
sudo yum -y install curl 
sudo yum -y install kernel-devel 
sudo yum -y install apt-transport-https 
sudo yum -y install ca-certificates 
sudo yum -y install gnupg-agent 
sudo yum -y install software-properties-common 
sudo yum -y install lm-sensors 
sudo yum -y install htop

sudo yum -y groupinstall "Development Tools" "Development Libraries"

echo "Instalando gparted"
sudo dnf -y install gparted

echo "Instalando VLC"
sudo dnf -y install vlc

echo "Instalando Spectacle"
sudo dnf -y install spectacle

echo "Instalando Okular"
sudo dnf -y install okular

echo "PDF-Shuffler"
sudo dnf -y install pdfshuffler

echo "Instalando Gimp"
sudo dnf -y install gimp

echo "Instalando Inkscape"
sudo dnf -y install inkscape

echo "Instalando Transmission"
sudo dnf -y install transmission

sudo dnf -y install pip

sudo dnf -y install neofetch

echo "Fish"
sudo dnf -y install fish

# echo "Instalando Google-Chrome"
# sudo dnf -y install 'https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm'

# echo "Instalando Opera"
# URL=http://get.geo.opera.com/pub/opera/desktop/53.0.2907.37/linux/
# sudo dnf -y install -y ${URL}/opera-stable_53.0.2907.37_amd64.rpm
# get https://download3.operacdn.com/pub/opera/desktop/66.0.3515.72/linux/opera-stable_66.0.3515.72_amd64.rpm
# dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
# sudo dnf -y update

echo "Instalando Sublime-Text"
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text

echo "Realizando os últimos ajustes"
sudo dnf -y update
sudo dnf -y upgrade
sudo dnf -y autoclean
sudo dnf -y autoremove
sudo dnf -y clean

echo "Sistema Operacional Atualizado"
echo "Em breve seu computador será reiniciado"
sudo shutdown -r 1

# Dash to Dock
# Atalho para terminal -> Command: 'gnome-terminal'
