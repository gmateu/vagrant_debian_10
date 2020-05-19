#!/bin/bash
WP=0

apt-get update
apt-get install -y apache2 net-tools dnsutils curl
a2enmod userdir
/etc/init.d/apache2 restart

#cream directori descarregues 
if [[ ! -d /home/vagrant/downloads ]]
then
    mkdir /home/vagrant/downloads
fi

#obtenir darrer wordpress
if [[ ${WP} -eq 1 ]]
then
    wget https://wordpress.org/latest.tar.gz -O /home/vagrant/downloads/wordpress.tar.gz
fi

#així les descarregues podran ser gestionades per vagrant
chown -R vagrant.vagrant /home/vagrant/downloads