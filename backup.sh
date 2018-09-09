# backup script for Raspberry Pi
#
# electronut.in
# 
#!/bin/bash
echo Backing up RPi \#1...
# set this to Raspberry Pi IP address
PI_ADDR="10.2.222.18"
# set this to Raspberry Pi code directory
# note that the trailing / is important with rsync
PI_DIR="/home/pi/testshare/"
# set this to local code (backup) directory
BKUP_DIR="/home/pi/testshsre"
# run rsync
# use this first to test: 
# rsync -uvrn pi@$PI_ADDR:$PI_DIR $BKUP_DIR
rsync -uvr root@$PI_ADDR:$PI_DIR $BKUP_DIR
echo ...
echo done.

