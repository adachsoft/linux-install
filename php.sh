#/bin/bash

PHP_V=7.2

echo "Install php$PHP_V"

add-apt-repository -y ppa:ondrej/php
apt-get update
apt-get -y install php$PHP_V
apt-get -y install php$PHP_V-mysql
apt-get -y install php$PHP_V-pgsql



