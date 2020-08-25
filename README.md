# STUDENT PROJECT [P4] - **VAGRANT**

![UbuntuServer](https://img.shields.io/badge/UbuntuServer-20.04-blue.svg)
![Vagrant](https://img.shields.io/badge/Vagrant-2.0.2+-blue.svg)
![VirtualBox](https://img.shields.io/badge/VirtualBox-5.2+-blue.svg)
![NFS 4](https://img.shields.io/badge/NFS-4-blue.svg)
![Licence](https://img.shields.io/badge/Licence-GPLv3-blue.svg)

> This vagrant VM include GitLab CE and GitLab Runner on Ubuntu 20.04 Server. 

## **REQUIREMENTS**
Your local machine must contain the following software :
- [Vagrant v2.0.2+](https://www.vagrantup.com/intro/getting-started/install)
- [VirtualBox v5.2+](https://www.virtualbox.org/wiki/Linux_Downloads)
- [NFS v4+](https://doc.ubuntu-fr.org/nfs)

## **GETTING STARTED**

### **STEP 1 - REQUIREMENTS**
On your local machine install **Vagrant**, **VirtualBox** and **NFS**.

By exemple on Ubuntu 20.04 :
```shell
apt install vagrant virtualbox nfs-kernel-server
```

### **STEP 2 - CLONE THIS REPOSITORY**
Clone this repository on your local machine like this :
```shel
git clone https://github.com/GuillaumeSadlerOC/DevOps_GitLab.git ubuntu-20.04
```

### **STEP 3 - VAGRANT UP**
Open the cloned repository on terminal and run vagrant up command like this :
```shell
vagrant up
```

### **STEP 4 - VAGRANT SSH**
After the step 3, you can come in the VM by running this command :
```shell
vagrant ssh
```

## COMMON VAGRANT COMMANDS

- **vagrant destroy** : stops and deletes all traces of the vagrant machine
- **vagrant provision** : provisions the vagrant machine
- **vagrant reload** : restarts vagrant machine, loads new Vagrantfile configuration
- **vagrant status** : outputs status of the vagrant machine
- **vagrant up** : starts and provisions the vagrant environment

## TROUBLESHOOTING

- **Launching the Docker container may take more than 5 minutes.** If GitLab don't work instantly please wait.

- This VM need that 8088, 8089 ports are free in your local machine.
