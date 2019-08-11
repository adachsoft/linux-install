#!/bin/bash

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get update
sudo apt-get install nodejs -y

nodejs -v

echo "----------------------------------------"
echo "Install Yarn"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install yarn -y

yarn -v