# -*- mode: ruby -*-
# vi: set ft=ruby :

hostname = "juju.dev"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.33.13"
  config.vm.hostname = hostname
  config.vm.synced_folder "/home/kit/charms", "/charms"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.name = hostname
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
