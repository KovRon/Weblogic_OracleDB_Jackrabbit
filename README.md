Set of Ansible playbooks for deploying and creating Java, OracleDB 11gR2, Apache Jackrabbit and WebLogic 12c R2 Domain with Oracle Fusion Middleware Infrastructure on RedHat 6 or CentOS 6 VMs automatically.
__________________________________________________________

Vagrant uses for the management of VMs. Vagrantfiles included. 

Ansible configuration involves the use of 4 VMs. In this case Ansible server, Apache Jackrabbit, OracleDB and Weblogic with Oracle Fusion Middleware Infrastructure roles need to be setup on the different VMs. 

VMs with OracleDB and Weblogic require to have the disk at least 20 Gb(e.g. boxcutter/centos67). Another machines can use RedHat 6 or CentOS 6 in minimal configuration(e.g. puphpet/centos65-x64)

To add boxes mentioned above into the local repository use the following commands:

$ vagrant box add puphpet/centos65-x64

$ vagrant box add boxcutter/centos67
___________________________________________________________

For Ansible installation in repository exists bash script ansible_install.sh to apply ansible environment variables execute command "source /opt/ansible/hacking/env-setup -q" as vagrant user or relogin on ansible server. In addition you can use offical documantation (http://docs.ansible.com/ansible/intro_installation.html) to choose another kind of installation.
___________________________________________________________

Each Ansible role can be deployed separatelly on VMs or together on all at the same time.
(Notice: Server with WebLogic demands started and configured VM with OracleDB) 


Ansible commands for each VM:

$ ansible-playbook oracledb.yml

$ ansible-playbook weblogic.yml

$ ansible-playbook jackrabbit.yml 


Ansible command for whole environment:

$ ansible-playbook java_test_env.yml