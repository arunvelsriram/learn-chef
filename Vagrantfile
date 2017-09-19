# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "chefserver" do |chefserver|
    chefserver.vm.box = "bento/ubuntu-16.04"
    chefserver.vm.hostname = "chefserver.vm"
    chefserver.vm.network "private_network", ip: "192.168.33.10"
    chefserver.vm.provision "shell", path: "install-chef-server.sh"
  end

  config.vm.define "node-1" do |node|
    node.vm.box = "bento/ubuntu-14.04"
    node.vm.hostname = "node-1.vm"
    node.vm.network "private_network", ip: "192.168.34.10"
    node.vm.provision "shell", path: "setup-node-hosts.sh"
  end

end
