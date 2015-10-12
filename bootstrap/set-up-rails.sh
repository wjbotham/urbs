#!/usr/bin/env bash

echo "Rails setup script is still a TODO"
#install ruby
apt-get install -y ruby-full

#install apache
apt-get install -y apache2

#install mariadb
apt-get install -y python-software-properties

apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
add-apt-repository 'deb http://ftp.osuosl.org/pub/mariadb/repo/10.0/ubuntu precise main'

apt-get update
debconf-set-selections <<< "mysql-server mysql-server/root_password password MY_PASSWORD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password MY_PASSWORD"
apt-get install -y mariadb-server

#install rails
apt-get install -y rails
