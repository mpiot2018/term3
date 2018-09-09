
<b>A repository to hold files that are used for configure a simple IoT raspberry pi server using raspian. </b>
<ul>
    <li>Steps to use are:</li>
    <li>Install BerryBoot onto the SD card (Replacing noobs)</li>
    <li>From the USB key install the Raspian lite version as this will be a headless machine</li>
    <li>Login as pi user</li>
    <li>1 - sudo  apt-get update </li>   
    <li>2 - sudo apt-get upgrade</li>
    <li>3 - Run the apacheconf script to install a basic LAMP stack.</li>
<li>4 - Run the samba script to install samba and create a testshare folder in /home/pi/testshare and share the /var/www/html folder 
    (Read Only) </li>
    <li>5 - Run the issue script to change the basic pre login welcome script </li>
    <li>6 - Run the motd script to change the basic post login process </li>
<li>7 - Run the dashboard script to install a basic kiosk and configure for autoload on startup </li>
   (Requires raspi-config login set to CLI with autologin
</ul>
