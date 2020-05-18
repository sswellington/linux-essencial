#!/bin/bash
# Install
# sudo chmod 777 pip.sh
# sudo ./pip.sh

# Remove todos os pacotes do pip
pip freeze | xargs pip uninstall -y
# or 
pip freeze | grep -v "^-e" | xargs pip uninstall -y

# [virtualenv](https://pythonacademy.com.br/blog/python-e-virtualenv-como-programar-em-ambientes-virtuais)
pip install virtualenv
# [jupyterlab](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html)
sudo pip install jupyterlab
# [interface](https://kivy.org/doc/stable/guide/basic.html#quickstart)
pip install kivy
# [Python Imaging Library](https://pillow.readthedocs.io/en/stable/)
pip install Pillow
# [Construção de página WEB](https://flask.palletsprojects.com/)
pip install Flask
# [Construção de página estático](https://www.getlektor.com/)
pip install lektor
