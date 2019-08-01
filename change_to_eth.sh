#!/bin/bash

FILE=/etc/default/grub

echo $FILE

sed 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0"/g' \
$FILE > /tmp/tmp.bak

cp /tmp/tmp.bak $FILE

cat $FILE | grep -i 'GRUB_CMDLINE_LINUX='

sed -r 's/ens[0-9]+/eth0/g' /etc/network/interfaces > /tmp/i.bak
cp /tmp/i.bak /etc/network/interfaces

update-grub
reboot
