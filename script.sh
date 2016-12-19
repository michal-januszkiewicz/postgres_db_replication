#!/bin/bash
if grep -Fxq "127.0.0.1" /etc/hosts ;
then
	echo "host found"
else
	sudo bash -c "echo '127.0.0.1   localhost' >> /etc/hosts"
	sudo bash -c "echo '255.255.255.255 broadcasthost' >> /etc/hosts"
fi
sudo bash -c "echo 'host all all 192.168.0.0/24 trust' >> /etc/postgresql/9.3/main/pg_hba.conf"
sudo bash -c "echo \"listen_addresses='*'\" >> /etc/postgresql/9.3/main/postgresql.conf"
sudo bash -c "/etc/init.d/postgresql restart"

sudo -u postgres createdb testdb
sudo -u postgres psql testdb < /vagrant/testdb

cp -r /vagrant/londiste-config /home/vagrant/skytools-3.2/
cd /home/vagrant/skytools-3.2/londiste-config
mkdir -p log pid
