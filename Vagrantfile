# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  ## VAGRANT BOX
  # box at https://app.vagrantup.com/guillaumesadler/boxes/ubuntu-server-20.04
  config.vm.box = "guillaumesadler/ubuntu-server-20.04"
  config.vm.box_version = "1"

  ## FORWARDED PORTS
  # GITLAB RESERVED 
  config.vm.network "forwarded_port", guest: 8088, host: 8088
  # OPEN PORTS
  config.vm.network "forwarded_port", guest: 8089, host: 8089

  ## PRIVATE NETWORK
  config.vm.network "private_network", ip: "192.168.33.10"

  ## SYNCED FOLDERS
  config.vm.synced_folder "www", "/home/vagrant/www", 
    type: "nfs",
    nfs_version: 4,
    mount_options: ['actimeo=2'],
    linux__nfs_options: ['rw', 'no_root_squash'], 
    :map_uid => 0, 
    :map_gid => 0

  config.vm.synced_folder "gitlab", "/home/vagrant/gitlab", 
    type: "nfs",
    nfs_version: 4,
    mount_options: ['actimeo=2'],
    linux__nfs_options: ['rw', 'no_root_squash'], 
    :map_uid => 0, 
    :map_gid => 0

  config.vm.synced_folder "nginx", "/home/vagrant/nginx", 
    type: "nfs",
    nfs_version: 4,
    mount_options: ['actimeo=2'],
    linux__nfs_options: ['rw', 'no_root_squash'], 
    :map_uid => 0, 
    :map_gid => 0

  ## PROVISIONNING
  config.vm.provision "shell", path: "vm_provision.sh"
  
end