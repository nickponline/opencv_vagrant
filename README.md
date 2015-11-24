opencv_vagrant
==============

Vagrant machine for using OpenCV 3.0.0 with Python bindings.

How to Install and Test
========================

1. Install [VirtualBox](http://virtualbox.org)
2. Install [Vagrant](http://vagrantup.com)
3. Clone OpenCV and OpenCV Contrib repos and edit `Vagrantfile` config.vm.synced_folder to reference them correctly.

```bash
vagrant up
vagrant ssh
```
