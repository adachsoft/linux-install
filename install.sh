#/bin/bash

#for PHP 7.2
sudo add-apt-repository -y ppa:ondrej/php

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install php7.2 -y
sudo apt-get install nmap -y
sudo apt-get install php7.2-mysql -y
sudo apt-get install php7.2-pgsql -y
sudo apt-get install libapache2-mpm-itk -y

#nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs -y


