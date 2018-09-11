#!/bin/bash
tput setaf 3;
clear
tput setaf 3;echo " ############################################################# "
tput setaf 3;echo " ##   Scenario1 Melbourne Polytechnic IOT Class             ## "
tput setaf 3;echo " ##  Term 3 2018  - Gavin Jackson                           ## "
tput setaf 3;echo " ############################################################# "
tput setaf 3;echo "Press a key to continue  "
read l 
tput setaf 3;echo ""
tput setaf 9;echo "Ok, where are we , Lets start with a pwd";
tput setaf 3;echo ""
tput setaf 3;pwd
tput setaf 3;echo ""
tput setaf 3;echo "First we need some users..."
tput setaf 3;echo ""
tput setaf 3;echo "Making prog1";sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) prog1
tput setaf 9;echo 'sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) prog1'
tput setaf 3;echo "Making prog2";sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) prog2
tput setaf 9;echo 'sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) prog2'
tput setaf 3;echo "Making graph1";sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) graph1
tput setaf 9;echo 'sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) graph1'
tput setaf 3;echo "Making graph2";sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) graph2
tput setaf 9;echo 'sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) graph2'
tput setaf 3;echo "Making sound1";sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) sound1
tput setaf 9;echo 'sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) sound1'
tput setaf 3;echo "Making sound2";sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) sound2
tput setaf 9;echo 'sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) sound2'
tput setaf 3;echo ""
tput setaf 3;echo "Users created.."
tput setaf 3;echo ""
tput setaf 3;echo "Lets see what that looks like ..."
tput setaf 9;echo ""
sudo tail -n 6 /etc/passwd
tput setaf 3;echo ""
tput setaf 3;echo "Looks good dont you think  ..."
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 3;echo ""
tput setaf 3;echo "Now we need some groups ..."
tput setaf 3;echo ""
tput setaf 3;echo "Adding programmer group"; sudo groupadd programmer
tput setaf 9;echo 'sudo groupadd programmer'
tput setaf 3;echo "Adding programmer sound"; sudo groupadd sound
tput setaf 9;echo 'sudo groupadd sound'
tput setaf 3;echo "Adding programmer graphics"; sudo groupadd graphics
tput setaf 9;echo 'sudo groupadd graphics'
tput setaf 3;echo ""
tput setaf 3;echo "Groups created.."
tput setaf 3;echo ""
tput setaf 3;echo "Lets see what that looks like ..."
tput setaf 3;echo ""
tput setaf 9;sudo tail -n 3 /etc/group
tput setaf 3;echo ""
tput setaf 3;echo "All good so far ..."
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 3;echo ""
tput setaf 3;echo "Lets put our users into the groups ..."
tput setaf 3;echo ""
tput setaf 3;echo "Adding prog1 user to programmer group";sudo usermod -aG programmer prog1
tput setaf 9;echo 'sudo usermod -aG programmer prog1'
tput setaf 3;echo "Adding prog2 user to programmer group";sudo usermod -aG programmer prog2 
tput setaf 9;echo 'sudo usermod -aG programmer prog2'
tput setaf 3;echo "Adding sound1 user to sound group";sudo usermod -aG sound sound1  
tput setaf 9;echo 'sudo usermod -aG sound sound1'  
tput setaf 3;echo "Adding sound2 user to sound group";sudo usermod -aG sound sound2
tput setaf 9;echo 'sudo usermod -aG sound sound2'
tput setaf 3;echo "Adding graph1 user to graphics group";sudo usermod -aG graphics graph1
tput setaf 9;echo 'sudo usermod -aG graphics graph1'
tput setaf 3;echo "Adding  graph2 user to graphics group";sudo usermod -aG graphics graph2
tput setaf 9;echo 'sudo usermod -aG graphics graph2'
tput setaf 3;echo ""
tput setaf 3;echo "Lets see what that looks like ..."
tput setaf 3;echo ""
tput setaf 9;sudo tail -n 3 /etc/group
tput setaf 3;echo ""
tput setaf 3;echo "Sweet , Lets do some more ..."
tput setaf 3;echo ""
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 3;echo ""
tput setaf 3;echo "Now we need some shared directories  ..."
tput setaf 3;echo "Making programming-files directory"; sudo mkdir /home/programming-files
tput setaf 9;echo 'mkdir /home/programming-files'
tput setaf 3;echo "Making graphics-files irectory"; sudo mkdir /home/graphics-files
tput setaf 9;echo 'mkdir /home/graphics-files'
tput setaf 3;echo "Making sound-files directory"; sudo mkdir /home/sound-files
tput setaf 9;echo 'mkdir /home/sound-files'
tput setaf 3;echo ""
tput setaf 3;echo "Lets see what that looks like ..."
tput setaf 3;echo ""
sudo tree  /home
tput setaf 3;echo ""
tput setaf 3;echo "Awesome, somebodys home..."
tput setaf 3;echo ""
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 3;echo ""
tput setaf 3;echo "Time to set some permissions correctly for the shared folders  ..."
tput setaf 3;echo ""
tput setaf 3;echo "setting programming-files folder permissions";sudo chmod 770 /home/programming-files
tput setaf 9;echo 'sudo chmod 770 /home/programming-files'
tput setaf 3;echo "setting graphics-files folder permissions";sudo chmod 770 /home/graphics-files
tput setaf 9;echo 'sudo chmod 770 /home/graphics-files'
tput setaf 3;echo "setting sound-files folder permissions";sudo chmod 770 /home/sound-files
tput setaf 9;echo 'sudo chmod 770 /home/sound-files'
tput setaf 3;echo "setting programming-files folder permissions";sudo chown pi /home/programming-files
tput setaf 9;echo 'sudo chown pi /home/programming-files'
tput setaf 3;echo "setting sound-files folder permissions";sudo chown pi /home/sound-files
tput setaf 9;echo 'sudo chown pi /home/sound-files'
tput setaf 3;echo "setting graphics-files folder permissions";sudo chown pi /home/graphics-files
tput setaf 9;echo 'sudo chown pi /home/graphics-files'
tput setaf 3;echo "setting programming-files folder permissions";sudo chgrp programmer /home/programming-files
tput setaf 9;echo 'sudo chgrp programmer /home/programming-files'
tput setaf 3;echo "setting sound-files folder permissions";sudo chgrp sound /home/sound-files
tput setaf 9;echo 'sudo chgrp sound /home/sound-files'
tput setaf 3;echo "setting graphics-files folder permissions";sudo chgrp graphics /home/graphics-files
tput setaf 9;echo 'sudo chgrp graphics /home/graphics-files'
tput setaf 3;echo ""
tput setaf 3;echo "Folder permissions set...  Now to setup some symbolic links ..."
tput setaf 9;echo ""
sudo ls -la /home
tput setaf 3;echo "Press a key to continue  "
read l 
clear
cd ..
echo ""
tput setaf 3;echo "Creating Link for prog1";sudo ln -s /home/programming-files /home/prog1/programming-files
tput setaf 9;echo 'Command is - sudo ln -s /home/programming-files /home/prog1/programming-files'
sudo tree  /home/prog1
sleep 2
echo ""
tput setaf 3;echo "Creating Link for prog2";sudo ln -s /home/programming-files /home/prog2/programming-files
tput setaf 9;echo 'Command is - sudo ln -s /home/programming-files /home/prog2/programming-files'
sudo tree  /home/prog2
sleep 2
echo ""
tput setaf 3;echo "Creating Link for sound1";sudo ln -s /home/sound-files /home/sound1/sound-files
tput setaf 9;echo 'Command is - sudo ln -s /home/sound-files /home/sound1/sound-files'
sudo tree  /home/sound1
sleep 2
echo ""
tput setaf 3;echo "Creating Link for sound2";sudo ln -s /home/sound-files /home/sound2/sound-files
tput setaf 9;echo 'Command is - sudo ln -s /home/sound-files /home/sound2/sound-files'
sudo tree  /home/sound2
sleep 2
echo ""
tput setaf 3;echo "Creating Link for graph1";sudo ln -s /home/graphics-files /home/graph1/graphics-files
tput setaf 9;echo 'Command is - sudo ln -s /home/graphics-files /home/graph1/graphics-files'
sudo tree  /home/graph1
sleep 2
echo ""
tput setaf 3;echo "Creating Link for graph2";sudo ln -s /home/graphics-files /home/graph2/graphics-files
tput setaf 9;echo 'Command is - sudo ln -s /home/graphics-files /home/graph2/graphics-files'
sudo tree  /home/graph2
sleep 2

clear
echo ""
tput setaf 3;echo "Displaying /home/Programmer related folders ";sudo  tree /home/prog*
tput setaf 9;echo 'Command is - tree  /home/prog*'
sleep 2
echo ""
tput setaf 3;echo "Displaying /home/Graphics related folders ";sudo  tree /home/graph*
tput setaf 9;echo 'Command is - tree  /home/grap*'
sleep 2
echo ""
tput setaf 3;echo "Displaying /home/Sound related folders ";sudo  tree /home/soun*
tput setaf 9;echo 'Command is - tree  /home/soun*'
clear 
sleep 2
tput setaf 9;echo 'Ok, Lets testr this out using actual users*'
tput setaf 9;echo 'Graph1 user first'
su graph1 -c 'clear;whoami;pwd;sleep 2;echo " Test File by graph1 " > /home/graph1/graphics-files/graph1.txt;tree /home; cp /home/graphics-files/graph1.txt /home/graph1'
tree /home
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 9;echo 'Graph2 user'
su graph2 -c 'clear;whoami;pwd;sleep 2;echo " Test File by graph1 " > /home/graph1/graphics-files/graph2.txt;tree /home; cp /home/graphics-files/graph2.txt /home/graph2'
tree /home
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 9;echo 'Sound1 user'
su sound1 -c 'clear;whoami;pwd;sleep 2;echo " Test File by sound1 " > /home/sound1/sound-files/sound1.txt;tree /home; cp /home/sound-files/sound1.txt /home/sound1'
tree /home
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 9;echo 'Sound2 user'
su sound2 -c 'clear;whoami;pwd;sleep 2;echo " Test File by sound2 " > /home/sound2/sound-files/sound2.txt;tree /home; cp /home/sound-files/sound2.txt /home/sound2'
tree /home
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 9;echo 'Prog1 user'
su prog1 -c 'clear;whoami;pwd;sleep 2;echo " Test File by prog1 " > /home/prog1/programming-files/prog1.txt;tree /home; cp /home/programming-files/prog1.txt /home/prog1'
tree /home
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
tput setaf 9;echo 'Prog2 user'
su prog2 -c 'clear;whoami;pwd;sleep 2;echo " Test File by prog2 " > /home/prog2/programming-files/prog2.txt;tree /home; cp /home/programming-files/prog2.txt /home/prog2'
tree /home
tput setaf 3;echo "Press a key to continue  "
read l 
clear 
su prog1 -c 'clear;whoami;pwd;sleep 2;echo "Test file by prog1" > /home/prog1/programming-files/prog1.txt;tree /home'
tput setaf 3;echo "Press a key to continue  "
read l 
clear 

su - prog1 <<! >/dev/null 2>&1
password
whoami > /dev/tty
ls > /dev/tty
!
