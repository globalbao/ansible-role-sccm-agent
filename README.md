Role Name
=========

`ansible-role-sccm-agent` Downloads the SCCM agent binaries and installs to the target machine.

Role Variables
--------------

Defined in `./defaults/main.yml`

* `sccm_agent_windows_file_path`
* `smssitecode`
* `fsp`
* `smsmp`
* `sccm_install_cmd`

Task Tags
--------------

Defined in `./tasks/windows.yml`

* `initialverification`
* `download`
* `unzip`
* `install`
* `wait`
* `finalverification`

Usage Examples
--------------
* ansible-playbook tasks/main.yml -vvv -- --tags="initialverification,download,unzip,install,wait,finalverification" 

or

* ansible-playbook tasks/main.yml -vvv -- --tags="download,unzip,install" 

Role Development Dependencies
------------

Defined in `./requirements.txt`

* ansible>=2.9.12
* ansible[azure]
* ansible-lint>=4.2.0
* molecule>=3.0.6
* molecule-azure>=0.3
* yamllint>=1.24.2
* pywinrm>=0.4.1
* junit-xml>=1.9
* requests>=2.24.0
* wheel>=0.30.0

Role Development Steps (w/ Molecule/Azure)
----------------

1. Create and access your Ansible control node in Azure (can simply be 1x Ubuntu VM, 1x VNET, 1x SUBNET)
2. `git clone https://github.com/globalbao/ansible-role-sccm-agent.git`
3. `cd /ansible-role-sccm-agent` 
4. `./run.sh`
5. `curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash`
6. Update your Azure & Ansible variables in /molecule/winXXXX/xxx.yml files as required
7. `az login`
8. `az subscription set -s SUBSCRIPTIONID`
9. `ansible-lint tasks/main.yml`
10. `molecule list`
11. `molecule create -s winXXXX`
12. `molecule converge -s winXXXX`
13. `molecule verify -s winXXXX`
14. `molecule test -s winXXXX`
