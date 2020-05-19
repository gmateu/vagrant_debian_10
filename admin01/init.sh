#!/bin/bash
WP=0
UPDATE=1

if [[ ${UPDATE} -eq 1 ]]
then
    apt-get update
    apt-get install -y bind9 net-tools dnsutils curl isc-dhcp-server
fi

#cream directori descarregues 
if [[ ! -d /home/vagrant/downloads ]]
then
    mkdir /home/vagrant/downloads
fi

#així les descarregues podran ser gestionades per vagrant
chown -R vagrant.vagrant /home/vagrant/downloads

#firewall
/etc/network/if-up.d/firewall.sh