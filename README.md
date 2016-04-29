# Weblogic_OracleDB_Jackrabbit

Ansible playbook for deploy and create Java, OracleDB 11gR2, Apache Jackrabbit and WebLogic 12c R2 Domain with Oracle Fusion Middleware Infrastructure on RedHat 6 or CentOS 6 VMs automatically.

For VMs management is using Vagrant. Vagrantfiles included. 

Ansible configuration involves the use of 4 VMs. In this case Ansible server, Apache Jackrabbit, OracleDB and Weblogic with Oracle Fusion Middleware Infrastructure roles need to setup on the different VMs. 

VMs with OracleDB and Weblogic require to have disks at list 20 Gb. For this purpose you can download follow box.

Another machines can use RedHat 6 or CentOS 6 in minimal configuration(e.g. puphpet/centos65-x64)

To add boxes mentioned above into the local repository use the following commands:

$ vagrant box add puphpet/centos65-x64

$ vagrant box add boxcutter/centos67


All VMs can be deployed by Ansible separatelly or together.
(Notice: Server with WebLogic demands started and configured VM with OracleDB) 


Ansible commands for each VM:

$ ansible-playbook oracledb.yml

$ ansible-playbook weblogic.yml

$ ansible-playbook jackrabbit.yml 


Ansible command for whole environment:

$ ansible-playbook java_test_env.yml