#!/bin/bash
clear
echo " Blacklisting on-board Audio ... "
sudo rm -rf 
sudo touch /etc/modprobe.d/alsa-blacklist.conf
sudo chmod 777 /etc/modprobe.d/alsa-blacklist.conf
sudo chown root /etc/modprobe.d/alsa-blacklist.conf
sudo chgrp root /etc/modprobe.d/alsa-blacklist.conf
sudo echo 'blacklist snd_bcm2835' >> /etc/modprobe.d/alsa-blacklist.confsleep 1
sudo chmod 644 /etc/modprobe.d/alsa-blacklist.confecho "Job Done... "
sleep 5
sudo reboot 

