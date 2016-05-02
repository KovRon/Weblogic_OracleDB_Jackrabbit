Set of Ansible playbooks for deploying and creating Java, OracleDB 11gR2, Apache Jackrabbit and WebLogic 12c R2 Domain with Oracle Fusion Middleware Infrastructure on RedHat 6 or CentOS 6 VMs automatically.
__________________________________________________________

The VMs managed by Vagrant. Vagrantfiles included. For getting Vagrant go to the offical site (https://www.vagrantup.com/) and download package for your OS.
__________________________________________________________

Ansible configuration involves the use of 4 VMs. In this case Ansible server, Apache Jackrabbit, OracleDB and Weblogic with Oracle Fusion Middleware Infrastructure roles need to be setup on the different VMs. 

The VMs with OracleDB and Weblogic require to have the disk at least 20 Gb(e.g. boxcutter/centos67). Other machines can use RedHat 6 or CentOS 6 in minimal configuration(e.g. puphpet/centos65-x64)

List of commands to add boxes mentioned above into the local repository:

$ vagrant box add puphpet/centos65-x64

$ vagrant box add boxcutter/centos67
___________________________________________________________

There is bash script ansible_install.sh for Ansible installation in repository to apply ansible environment variables execute command "source /opt/ansible/hacking/env-setup -q" as vagrant user or relogin on ansible server. In addition you can use offical documantation (http://docs.ansible.com/ansible/intro_installation.html) to choose another kind of installation.
___________________________________________________________

Each Ansible role can be deployed separatelly on VMs or together on all at the same time.
(Notice: Server with WebLogic demands started and configured VM with OracleDB) 


Ansible commands for each VM:

$ ansible-playbook oracledb.yml

$ ansible-playbook weblogic.yml

$ ansible-playbook jackrabbit.yml 


Ansible command for whole environment:

$ ansible-playbook java_test_env.yml