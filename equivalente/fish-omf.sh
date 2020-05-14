# https://github.com/oh-my-fish/oh-my-fish
# https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md
# https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/pt-BR/README.md

curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

set -xg GOPATH $HOME/gocode   
set -xg PYTHONDONTWRITEBYTECODE 1 

# lista todos os pacotes instalados
omf list

# lista todos os temas disponiveis
# Temas favoritos:  clearance	coffeeandcode	default		fisk		gnuykeaj	scorphish
omf theme 

omf install bobthefish
omf remove bobthefish
omf install scorphish