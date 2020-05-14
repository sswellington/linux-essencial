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

sudo dnf -y install \ 
gnome-tweaks \ 
papirus-icon-theme \
amrnb \ 
amrwb \ 
faad2 \ 
flac \ 
ffmpeg \ 
gpac-libs \ 
lame \ 
libfc14audiodecoder \ 
mencoder \
mplayer \
x264 \ 
x265 \ 
gstreamer-plugins-espeak \ 
gstreamer-plugins-fc \
gstreamer-rtsp \ 
gstreamer-plugins-good \
gstreamer-plugins-bad \
gstreamer-plugins-bad-free-extras \
gstreamer-plugins-bad-nonfree \
gstreamer-plugins-ugly \ 
gstreamer-ffmpeg \
gstreamer1-plugins-base \
gstreamer1-libav \
gstreamer1-plugins-bad-free-extras \
gstreamer1-plugins-bad-freeworld \
gstreamer1-plugins-base-tools \
gstreamer1-plugins-good-extras \
gstreamer1-plugins-ugly \
gstreamer1-plugins-bad-free \
gstreamer1-plugins-good

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Instalando Build Essential"
sudo yum -y install \ 
make \
automake \ 
gcc \ 
gcc-c++ \ 
java \ 
vim \ 
curl \ 
kernel-devel \
apt-transport-https \ 
ca-certificates \ 
gnupg-agent \ 
software-properties-common \
lm-sensors \
htop

sudo yum -y groupinstall "Development Tools" "Development Libraries"

echo "Instalando gparted"
sudo dnf -y install gparted

echo "Instalando VLC"
sudo dnf -y install vlc

echo "Instalando Spectacle"
sudo dnf -y install spectacle

echo "Instalando Okular"
sudo dnf -y install okular

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

echo "Instalando Google-Chrome"
sudo dnf -y install 'https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm'

echo "Instalando Opera"
URL=http://get.geo.opera.com/pub/opera/desktop/53.0.2907.37/linux/
sudo dnf -y install -y ${URL}/opera-stable_53.0.2907.37_amd64.rpm
get https://download3.operacdn.com/pub/opera/desktop/66.0.3515.72/linux/opera-stable_66.0.3515.72_amd64.rpm
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y update

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
