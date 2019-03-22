#!/bin/bash

os_v="$(lsb_release -si) $(lsb_release -sr)"
echo "$os_v"

if [ -x "$(command -v mysql)" ]; then
	echo 'mysql is installed.'
	mysql -V
	exit 1
fi

if [ "$os_v" = "Ubuntu 16.04" ]; then
	debconf-set-selections <<< 'mysql-server mysql-server/root_password password pass1234'
	debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password pass1234'
	apt-get -y install mysql-server

	mysql -V

else
	echo "No installation script for: $os_v"
fi


