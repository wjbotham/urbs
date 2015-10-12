# -*- mode: ruby -*-
# vi: set ft=ruby :

if not Vagrant.has_plugin?("vagrant-cachier")
  puts "Please run the following before starting this Vagrant machine:"
  puts "  vagrant plugin install vagrant-cachier"
  puts
  puts "Exiting now."
  exit 0
end

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provider "virtualbox" do |v|
    v.cpus = 1
    v.customize ["modifyvm", :id, "--hwvirtex", "off"]
  end
  config.vm.box = "ubuntu/trusty32"
  
  # vagrant-cachier is a plugin that keeps packages around so you don't have
  # to download them from our poor benighted providers over and over and over
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.provision :shell, :path => "bootstrap/install-rvm.sh", args: "stable"
  config.vm.provision :shell, :path => "bootstrap/install-ruby.sh"
  config.vm.provision :shell, :path => "bootstrap/install-apache.sh"
  config.vm.provision :shell, :path => "bootstrap/install-mariadb.sh"
  config.vm.provision :shell, :path => "bootstrap/install-rake.sh"
  config.vm.provision :shell, :path => "bootstrap/install-gems.sh"
end
