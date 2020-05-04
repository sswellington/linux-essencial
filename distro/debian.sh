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
sudo apt -y install \ 
build-essential \ 
default-jdk \
libssl-dev \ 
make \
automake \ 
gcc \ 
exuberant-ctags \ 
ncurses-term \ 
ack-grep \
silversearcher-ag \ 
fontconfig \ 
imagemagick \ 
libmagickwand-dev \
software-properties-common \ 
git \ 
vim \ 
vim-gtk3 \ 
curl \ 
apt-transport-https \ 
ca-certificates \ 
gnupg-agent \
telnet \ 
wget

echo "Preparando o ambiente"
sudo apt -y install gnome-tweaks

echo "Instalando gparted"
sudo apt -y install gparted

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

echo "Instalando Neofetch"
sudo apt -y install neofetch

echo "Instalando PIP"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

echo "Instalando Docker"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

sudo apt-get install docker-ce=5:19.03.8~3-0~debian-buster docker-ce-cli=5:19.03.8~3-0~debian-buster containerd.io

echo "Instalando Google-Chrome"
sudo apt -y install 'https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.deb'

echo "Instalando Opera"
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add - 
sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt -y install opera-stable

echo "Instalando Sublime-Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt -y update
sudo apt -y install sublime-text

echo "Instalando Visual Studio Code"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get -y update
sudo apt-get -y install code # or code-insiders

echo "Instalando Dropbox"
touch /etc/apt/sources.list.d/dropbox.list | echo deb [arch=amd64] https://linux.dropbox.com/debian buster main > /etc/apt/sources.list.d/dropbox.list
sudo apt-y install dirmngr
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo apt install dropbox

echo "Realizando os últimos ajustes"
sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoclean
sudo apt -y autoremove
sudo apt -y clean

echo "Sistema Operacional Atualizado"
echo "Em breve seu computador será reiniciado"
sudo shutdown -r 1