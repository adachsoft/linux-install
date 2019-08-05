#!/bin/bash

apt-get -y install apache2
apt-get -y install libapache2-mpm-itk
a2enmod rewrite


/etc/init.d/apache2 restart
