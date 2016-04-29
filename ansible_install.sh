#!/bin/bash

sudo yum install vim git zsh curl -y
sed -i 's/robbyrussell/amuse/g' ~/.zshrc
sudo easy_install pip
sudo pip install paramiko PyYAML Jinja2 httplib2 six
sudo git clone https://github.com/ansible/ansible.git --recursive /opt/ansible
sudo chown -R vagrant:vagrant /opt/ansible
cd /opt/ansible
git pull --rebase
git submodule update --init --recursive
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo 'source /opt/ansible/hacking/env-setup -q' >> /home/vagrant/.zshrc
source /opt/ansible/hacking/env-setup -q
ansible --version
