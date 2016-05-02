#!/bin/bash

ANSIBLE_ENV=/opt/ansible/hacking/env-setup
ANSIBLE_PATH=/opt/ansible
VAGRANT_USER_HOME=/home/vagrant

yum -y install gcc gcc-c++ kernel-devel python-devel libxslt-devel libffi-devel openssl-devel git 
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python
easy_install pip 
pip install paramiko PyYAML Jinja2 httplib2 six pycrypto
git clone https://github.com/ansible/ansible.git --recursive $ANSIBLE_PATH
cd $ANSIBLE_PATH
git pull --rebase
git submodule update --init --recursive
echo 'source '$ANSIBLE_ENV' -q' >> $VAGRANT_USER_HOME/.bashrc
source $ANSIBLE_ENV -q
chown -R vagrant:vagrant $ANSIBLE_PATH
chown -R vagrant:vagrant $VAGRANT_USER_HOME