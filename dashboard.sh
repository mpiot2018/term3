#!/bin/bash
clear
sudo echo '=====================  IOT Server  Melbourne Polytechnic =======================' 
sudo echo '=      Access to this computer system is limited to authorised users only.     ='
sudo echo '=      Unauthorised users may be subject to prosecution under the Crimes       ='
sudo echo '=                          Act or State legislation.                           ='
sudo echo '=         Please note, All details are confidential and must                   ='
sudo echo '================================================================================'e
sleep 1
sudo apt-get install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox -y
sudo apt-get install --no-install-recommends chromium-browser -y

AUTOSTART=/etc/xdg/openbox/autostart
sudo chmod 777  $AUTOSTART
sudo echo "xset s off" > $AUTOSTART
sudo echo "xset s noblank" >> $AUTOSTART
sudo echo "xset s -dpms" >> $AUTOSTART
sudo echo "setxkbmap -option terminate:ctrl_alt_bksp" >> $AUTOSTART
sudo echo "sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State' " >> $AUTOSTART
#sudo echo 'sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences ' >> $AUTOSTART
sudo echo "chromium-browser --disable-infobars --kiosk 'http://127.0.0.1'" >> $AUTOSTART
# Start Chromium in kiosk mode
sudo echo '[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx -- -nocursor' >> $HOME/.bashrc

