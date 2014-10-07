# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = "PrivateDevServer-berkshelf"
  config.vm.box = "centos"

  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  config.vm.provision :shell, :path => "script/setup.sh"
end
