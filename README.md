A repository to hold files that are used for configure a simple IoT raspberry pi server using raspian.
Steps to use are:
Install BerryBoot onto the SD card (Replacing noobs)
From the USB key install the Raspian lite version as this will be a headless machine
Login as pi user
1 - sudo  apt-get update  
2 - sudo apt-get upgrade
3 - Run the apacheconf script to install a basic LAMP stack.
4 - Run the samba script to install samba and create a testshare folder in /home/pi/testshare and share the /var/www/html folder 
    (Read Only)
5 - Run the issue script to change the basic pre login welcome script
6 - Run the motd script to change the basic post login process
7 - Run the dashboard script to install a basic kiosk and configure for autoload on startup
   (Requires raspi-config login set to CLI with autologin
