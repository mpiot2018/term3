#!/bin/bash
clear
echo "Installing Samba Services ... "
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install samba -y
sleep 1
echo "Stopping Samba Services ... "
sleep 1
sudo service smbd stop
sleep 1
sudo service networking stop
echo "Adding testshare to samba config file ... "
sudo rm -rf /etc/samba/smb.conf
sudo touch /etc/samba/smb.conf
sudo chmod 777 /etc/samba/smb.conf
sudo grep -q -F '[global]' /etc/samba/smb.conf ||  echo '[global]' >> /etc/samba/smb.conf
sudo grep -q -F 'workgroup = WORKGROUP' /etc/samba/smb.conf || echo 'workgroup = WORKGROUP' >> /etc/samba/smb.conf

sudo grep -q -F 'server string = %h server' /etc/samba/smb.conf || echo 'server string = %h server' >> /etc/samba/smb.conf
sudo grep -q -F 'dns proxy = no' /etc/samba/smb.conf || echo 'dns proxy = no' >> /etc/samba/smb.conf
sudo grep -q -F 'name resolve order = bcast lmhosts host wins' /etc/samba/smb.conf || echo 'name resolve order = bcast lmhosts host wins' >> /etc/samba/smb.conf
sudo grep -q -F 'socket options = TCP_NODELAY IPTOS_LOWDELAY SO_KEEPALIVE' /etc/samba/smb.conf || echo 'socket options = TCP_NODELAY IPTOS_LOWDELAY SO_KEEPALIVE' >> /etc/samba/smb.conf
sudo grep -q -F 'log file = /var/log/samba/log.%m' /etc/samba/smb.conf || echo 'log file = /var/log/samba/log.%m' >> /etc/samba/smb.conf
sudo grep -q -F 'max log size = 1000' /etc/samba/smb.conf || echo 'max log size = 1000' >> /etc/samba/smb.conf
sudo grep -q -F 'syslog = 0' /etc/samba/smb.conf || echo 'syslog = 0' >> /etc/samba/smb.conf
sudo grep -q -F 'panic action = /usr/share/samba/panic-action %d' /etc/samba/smb.conf || echo 'panic action = /usr/share/samba/panic-action %d' >> /etc/samba/smb.conf
sudo grep -q -F 'security = user' /etc/samba/smb.conf || echo 'security = user' >> /etc/samba/smb.conf
sudo grep -q -F 'encrypt passwords = true' /etc/samba/smb.conf || echo 'encrypt passwords = true' >> /etc/samba/smb.conf
sudo grep -q -F 'map to guest = bad user' /etc/samba/smb.conf || echo 'map to guest = bad user' >> /etc/samba/smb.conf
sudo grep -q -F 'guest account = pi' /etc/samba/smb.conf || echo 'guest account = pi' >> /etc/samba/smb.conf

sudo grep -q -F '[testshare]' /etc/samba/smb.conf ||  echo '[testshare]' >> /etc/samba/smb.conf
sudo grep -q -F 'comment = sharing' /etc/samba/smb.conf || echo 'comment = sharing' >> /etc/samba/smb.conf
sudo grep -q -F 'path=/home/pi/testshare' /etc/samba/smb.conf || echo 'path=/home/pi/testshare' >> /etc/samba/smb.conf
sudo grep -q -F 'browseable = yes' /etc/samba/smb.conf || echo 'browseable = yes' >> /etc/samba/smb.conf
sudo grep -q -F 'read only= no' /etc/samba/smb.conf || echo 'read only= no' >> /etc/samba/smb.conf
sudo grep -q -F 'guest ok= yes' /etc/samba/smb.conf || echo 'guest ok= yes' >> /etc/samba/smb.conf
sudo grep -q -F 'create mask = 0700' /etc/samba/smb.conf || echo 'create mask = 0700' >> /etc/samba/smb.conf

sleep 1
echo "Adding web share to samba config file ... "
sudo grep -q -F '[www]' /etc/samba/smb.conf ||  echo '[www]' >> /etc/samba/smb.conf
sudo grep -q -F 'comment=web sharing' /etc/samba/smb.conf || echo 'comment=web sharing' >> /etc/samba/smb.conf
sudo grep -q -F 'path=/var/www/html' /etc/samba/smb.conf || echo 'path=/var/www/html' >> /etc/samba/smb.conf
sudo grep -q -F 'browseable=yes' /etc/samba/smb.conf || echo 'browseable=yes' >> /etc/samba/smb.conf
sudo grep -q -F 'read only=no' /etc/samba/smb.conf || echo 'read only=no' >> /etc/samba/smb.conf
sudo grep -q -F 'guest ok=yes' /etc/samba/smb.conf || echo 'guest ok=yes' >> /etc/samba/smb.conf
sudo grep -q -F 'create mask=0700' /etc/samba/smb.conf || echo 'create mask=0700' >> /etc/samba/smb.conf
sudo mkdir /home/pi/testshare
sudo chmod 777 /home/pi/testshare
sleep 1
echo "Starting Samba Services ... "
sudo service smbd start
sleep 1
sudo service networking start
sleep 1
echo "Have a nice day!"
