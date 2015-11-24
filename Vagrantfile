# -*- mode: ruby -*-
# vi: set ft=ruby :

# http://www.bogotobogo.com/OpenCV/opencv_3_tutorial_ubuntu14_install_cmake.php

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build from.
  config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder "../tinySFM", "/tinySFM"
  config.vm.synced_folder "../opencv", "/opencv"
  config.vm.synced_folder "../opencv_contrib", "/opencv_contrib"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
   config.vm.provider "virtualbox" do |vb|
     vb.cpus = 9
     vb.customize ["modifyvm", :id, "--memory", "12288"]
     vb.customize ["modifyvm", :id, "--usb", "on"]
     vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
   end

   config.vm.provision "shell", path: "install.sh"
end
