#!/bin/sh

sudo apt-get install -y python3-dev python-pip

# install virtualenv
sudo pip install virtualenv
mkdir ~/.virtualenvs

# install virtualenvwrapper
sudo pip install virtualenvwrapper
# export WORKON_HOME=~/.virtualenvs
echo 'export WORKON_HOME=~/.virtualenvs' >> ~/.bashrc
echo '. /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc

. ~/.bashrc



