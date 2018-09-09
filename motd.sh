#!/bin/bash
clear
if [ ! -f /usr/games/cowsay ]; then
sudo apt-get install cowsay -y
fi
if [ ! -f /usr/games/fortune* ]; then
    echo "File not found!"
sudo apt-get install fortune -y
fi
echo "Changing /etc/motd file ... "
sudo rm -rf /etc/motd
sudo touch /etc/motd
sudo chmod 777 /etc/motd
sudo chown root /etc/motd
sudo chgrp root /etc/motd
sudo echo '===============================================================================' >> /etc/motd
sudo /usr/games/cowsay -f ghostbusters Who you gonna call   >> /etc/motd
sudo echo '==============================================================================' >> /etc/motd
sleep 1
sudo chmod 644 /etc/motd
echo "Job Done... "
