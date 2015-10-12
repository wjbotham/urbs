# -*- mode: ruby -*-
# vi: set ft=ruby :

if !Vagrant.has_plugin?("vagrant-cachier")
  echo "Please run the following before starting this Vagrant machine:"
  echo "  vagrant plugin install vagrant-cachier"
  echo
  echo "Exiting now."
end

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provider "virtualbox"
  config.vm.box = "ubuntu/trusty32"
  
  # vagrant-cachier is a plugin that keeps packages around so you don't have
  # to download them from our poor benighted providers over and over and over
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.provision :shell, :path => "bootstrap/set-up-rails.sh"
end
