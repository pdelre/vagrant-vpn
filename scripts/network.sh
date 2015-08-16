#!/bin/bash

# let network-manager handle eth0
sed -e '/auto eth0/ s/^#*/#/' -i /etc/network/interfaces
sed -e '/iface eth0 inet dhcp/ s/^#*/#/' -i /etc/network/interfaces
service network-manager restart

# openconnect vpn
apt-get install -y network-manager-openconnect

# firewall
ufw enable
