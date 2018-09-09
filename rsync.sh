#!/bin/bash
clear
echo "Changing /etc/issue file ... "
sudo rm -rf /etc/issue
sudo touch /etc/issue
sudo chmod 777 /etc/issue
sudo chown root /etc/issue
sudo chgrp root /etc/issue
sudo echo '=====================  OOT Server  Melbourne Polytechnic =======================' >> /etc/issue
sudo echo '=      Access to this computer system is limited to authorised users only.     =' >> /etc/issue
sudo echo '=      Unauthorised users may be subject to prosecution under the Crimes       =' >> /etc/issue
sudo echo '=                          Act or State legislation.                           =' >> /etc/issue
sudo echo '=         Please note, All details are confidential and must                   =' >> /etc/issue
sudo echo '================================================================================' >> /etc/issue
sleep 1
sudo chmod 644 /etc/issue
echo "Job Done... "
