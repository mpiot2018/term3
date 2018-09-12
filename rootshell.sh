#!/bin/bash
sudo /etc/init.d/ssh stop
sleep 5
sudo chmod 775 /etc/ssh/sshd_config
sudo chown pi /etc/ssh/sshd_config
sudo echo "PermitRootLogin=yes" >> /etc/ssh/sshd_config
sudo chmod 644 /etc/ssh/sshd_config
sudo chown root /etc/ssh/sshd_config
sleep 5
tail -n 10 /etc/ssh/sshd_config
sleep 2
sudo /etc/init.d/ssh status
sleep 2
sudo /etc/init.d/ssh start
