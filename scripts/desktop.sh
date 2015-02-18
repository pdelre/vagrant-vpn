#!/bin/bash

# light desktop of choice
apt-get install --no-install-recommends -y lubuntu-desktop

# reinstall VBox Additions
mkdir /tmp/vbox
VER=$(cat /home/vagrant/.vbox_version)
mount -o loop /home/vagrant/VBoxGuestAdditions_$VER.iso /tmp/vbox
sh /tmp/vbox/VBoxLinuxAdditions.run
umount /tmp/vbox
rmdir /tmp/vbox
