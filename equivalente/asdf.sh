#!/bin/bash
# Install
# sudo chmod 777 asdf.sh
# sudo ./asdf.sh
#
# Readme
# 
# # build-essential ( linguagens mudam com pouca frequência: C/C++, Java)
# # # O principal pacote é o build-essential
# # # que como o nome diz tem todo o essencial pra fazer builds. 
# # # Aproveito também pra já instalar o JDK
# # # pra termos não só a JVM como o compilador do Java mais novo;  
# # # # OBS. Será instalado automaticamente no script das distros
#
# # Gerenciador de pacotes: ASDF (linguagens mudam com frequências: Go, Javascript, Ruby)
#
# Referência
# # https://www.akitaonrails.com/2019/07/12/akitando-54-o-guia-definitivo-de-ubuntu-para-devs-iniciantes
# # # Vídeo
# # # # https://www.youtube.com/watch?v=epiyExCyb2s&t=2441s

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
source ~/.bashrc
asdf --version

# echo "Adicionando Golang ao repositório"
# asdf plugin-add golang https://github.com/kennyp/asdf-golang.git

#echo "Lista o repositório"
# asdf plugin-list

# echo "Instalando Golang"
# asdf list-all golang 
# asdf install golang 1.14

# asdf global golang 1.14

asdf plugin-update --all