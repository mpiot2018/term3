#!/bin/bash
clear
if [ ! -f /usr/bin/espeak ]; then
sudo echo '=============================================================================='
sudo echo '=               Loading i2c Audio Bonnet   =============================================`'
sudo echo '==============================================================================' 
curl -sS https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/i2samp.sh | bash
else
sudo echo '==============================================================================' 
sudo echo '=              espeak was already loaded  ====================================' 
sudo echo '=============================================================================='
fi
sleep 3
echo "Job Done... "
