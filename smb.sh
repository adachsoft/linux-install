#!/bin/bash

sudo apt install samba -y
cp config/smb/smb.conf /etc/samba/smb.conf

sudo /etc/init.d/samba restart

sudo smbpasswd -a arek
