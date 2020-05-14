# pré-requisato 
# * [asdf](https://github.com/sswellington/linux-essencial/tree/master/equivalente/asdf.sh)
#
# Referência
# * [jekyllrb](https://jekyllrb.com/)
# * [TeXt-theme](https://github.com/kitian616/jekyll-TeXt-theme)

asdf update | asdf update --head
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 2.7.1
asdf local ruby 2.7.1
asdf plugin-update --all

gem install rails
gem install bundler jekyll

# Template padrão = 114 kb
jekyll new site-exemplo
cd site-exemplo
bundle exec jekyll serve

# Template TeXt-theme
# encerre o servidor antes de prosseguir 
# vim Gemfile 
# Na linha seguinte ao comando: 
## gem "minima", "~> 2.5"
# Escreva 
## gem "jekyll-text-theme", "~> 2.2.6"
# bundle install
# bundle exec jekyll serve

# Agora basta configurar o arquivo _config.yml