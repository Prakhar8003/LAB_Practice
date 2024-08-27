# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Use a more recent Ubuntu box
  config.vm.box = "ubuntu/focal64"

  # Forward ports for MySQL, MongoDB, and PostgreSQL
  config.vm.network "forwarded_port", guest: 3306, host: 3306  # MySQL
  config.vm.network "forwarded_port", guest: 27017, host: 27017 # MongoDB
  config.vm.network "forwarded_port", guest: 5432, host: 5432  # PostgreSQL

  # Provision the VM using the bootstrap script
  config.vm.provision :shell, path: "bootstrap.sh"

  # Provider-specific configuration
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end
end
