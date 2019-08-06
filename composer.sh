#!/bin/bash

sudo curl -s https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

composer -V
