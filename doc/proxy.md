# Proxy

Importante, caso a senha possua caracteres especiais é necessário usar em formato hexadecimal, vide a [Tabela ASCII](https://www.ascii-code.com/). 
Por exemplo: `@` deve ser substituído por `%40`.

[Fonte: cyberciti.biz](https://www.cyberciti.biz/faq/unix-linux-export-variable-http_proxy-with-special-characters/)

## Linux: APT
> Distro: Debian e derivadas

Criação do arquivo proxy: 
~~~bash
sudo touch /etc/apt/apt.conf.d/proxy.conf
~~~

Edição do arquivo usando o Vi, pode ser substituído por outro editor:
~~~bash
sudo vi /etc/apt/apt.conf.d/proxy.conf
~~~

Configuração de HTTP e HTTPS:
~~~bash
Acquire::http::Proxy "http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/";
Acquire::https::Proxy "http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/";
~~~

Verifica se o arquivo foi configurado:
~~~bash 
sudo cat /etc/apt/apt.conf.d/proxy.conf
~~~

Para manter persistente deve-se adicioná-las ao final do arquivo `~/.bashrc`
~~~bash
export http_proxy='http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/'
export https_proxy='http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/'
~~~

## Git
~~~bash
# HTTP
git config --global http.proxy http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/
# HTTPS
git config --global https.proxy http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/
~~~

## Npm
~~~bash
# HTTP
npm config set proxy "http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/"
# HTTPS
npm config set https-proxy "http://[USER]:[PASSWORD]@[PROXY.SERVER]:[PORT]/"
~~~
