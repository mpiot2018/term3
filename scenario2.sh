#!/bin/bash
clear
echo " ############################################################# "
echo " ##   Scenario2 IOT Class                                   ## "
echo " ##  Term 3 2018                                            ## "
echo " ############################################################# "
echo " Press a key to continue  "
read l 
clear
tput setaf 3; echo "Script start"
sleep 2
clear
cd /home
pwd
sleep 2
sudo rm -rf /home/pro*
sudo rm -rf /home/graph*
sudo rm -rf /home/soun*
sudo deluser prog1
sudo deluser prog2
sudo deluser graph1
sudo deluser sound1
sudo deluser sound2
sudo delgroup programmer
sudo delgroup sound
sudo delgroup graphics
echo "Deleted pre-existing files, groups and users.."
sleep 2
tput setaf 2
clear
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) prog1
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) prog2
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) graph1
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) sound1
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) sound2
echo "Users created.."
sudo tail -n 15 /etc/passwd
sleep 3
clear
sudo groupadd programmer
sudo groupadd sound
sudo groupadd graphics
echo "Groups created.."
sudo tail -n 15 /etc/group
sleep 2
echo "####################################################"
sudo usermod -aG programmer prog1
sudo usermod -aG programmer prog2
sudo usermod -aG sound sound1  
sudo usermod -aG sound sound2
sudo usermod -aG graphics graph1
sudo usermod -aG graphics graph2
sudo tail -n 15 /etc/group
echo "Added users to groups.."
sleep 3
sudo mkdir /home/programming-files
sudo mkdir /home/graphics-files
sudo mkdir /home/sound-files
sudo tree  /home
echo "Shared folders created.."
sleep 2
sudo chmod 770 /home/programming-files
sudo chmod 770 /home/graphics-files
sudo chmod 770 /home/sound-files
sudo chown pi /home/programming-files
sudo chown pi /home/sound-files
sudo chown pi /home/graphics-files
sudo chgrp programmer /home/programming-files
sudo chgrp sound /home/sound-files
sudo chgrp graphics /home/graphics-files
echo "Folder permissions set.."
sleep 2
cd ..
echo "Creating shortcuts for prog1..."
sudo ln -s /home/programming-files /home/prog1/programming-files
sudo tree  /home/prog1
sleep 2
echo "Creating shortcuts for prog2..."
sudo ln -s /home/programming-files /home/prog2/programming-files
sudo tree  /home/prog2
sleep 2
echo "Creating shortcuts for sound1..."
sudo ln -s /home/sound-files /home/sound1/sound-files
sudo tree  /home/sound1
sleep 2
echo "Creating shortcuts for sound2..."
sudo ln -s /home/sound-files /home/sound2/sound-files
sudo tree  /home/sound2
sleep 2
echo "Creating shortcuts for graphics1..."
sudo ln -s /home/graphics-files /home/graph1/graphics-files
sudo tree  /home/graph1
sleep 2


