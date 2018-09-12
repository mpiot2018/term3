#!/bin/bash
clear
tput setaf 4
echo " ############################################################# "
echo " ##   Remove Scenario1 Melbourne Polytechnic IOT Class      ## "
echo " ##  Term 3 2018  - Gavin Jackson                           ## "
echo " ############################################################# "
echo " Press a key to continue  "
read l 
clear
tput setaf 9; echo "Script start"
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
sudo deluser graph2
sudo deluser sound1
sudo deluser sound2
sudo delgroup programmer
sudo delgroup sound
sudo delgroup graphics
echo "Deleted pre-existing files, groups and users.."

