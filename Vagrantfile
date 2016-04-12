# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "parallels/ubuntu-12.04"
  config.vm.box_check_update = true
  config.vm.network "forwarded_port", guest: 9090, host: 9090
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    export DEBCONF_NOWARNINGS=1

    sudo apt-get update
    sudo apt-get upgrade -u -y
    sudo apt-get install -y \
      markdown \
      ruby1.9.3 \
      rubygems \
      zlib1g \
      zlib1g-dev \
      libssl1.0.0 \
      libssl-dev

    rm -f /etc/alternatives/ruby; ln -s /usr/bin/ruby1.9.3 /etc/alternatives/ruby
    rm -f /etc/alternatives/gem; ln -s /usr/bin/gem1.9.3 /etc/alternatives/gem

    sudo gem install showoff --version=0.9.11.1
  SHELL
end
