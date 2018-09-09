#!/bin/bash
echo "Scenario 1 script"
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) bob 
sleep 2

echo "Creating shared folders..."
sudo mkdir /home/sales-files
sudo mkdir /home/accounting-files
sleep 2

echo "Folder ownership changing to Bob..."
sudo chown bob /home/sales-files
sudo chown bob /home/accounting-files
sleep 2

echo "Creating accounting department..."
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) jane
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) jill
sudo groupadd Accounting
sudo usermod -a -G Accounting jane
sudo usermod -a -G Accounting jill
sudo chgrp Accounting /home/accounting-files
sleep 2

echo "Creating sales department..."
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) joe
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) fred
sudo useradd -s /bin/bash -m -p $(openssl passwd -1 password) mary
sudo groupadd Sales
sudo usermod -a -G Sales joe
sudo usermod -a -G Sales fred
sudo usermod -a -G Sales mary
sudo chgrp Sales /home/sales-files 
sleep 2

echo "Creating permissions..."
sudo chmod 770 /home/sales-files
sudo chmod 770 /home/accounting-files
sleep 2

echo "Creating shortcuts for Bob..."
sudo ln -s /home/sales-files /home/bob/sales-files
sudo ln -s /home/accounting-files /home/bob/accounting-files
sleep 2

echo "Creating shortcuts for Accounting department..."
sudo ln -s /home/accounting-files /home/jane/accounting-files
sudo ln -s /home/accounting-files /home/jill/accounting-files
sleep 2

echo "Creating shortcuts for Sales department..."
sudo ln -s /home/sales-files /home/joe/sales-files
sudo ln -s /home/sales-files /home/fred/sales-files
sudo ln -s /home/sales-files /home/mary/sales-files
sleep 2

echo "Operation successful..."
sleep 2
echo "Have a nice day!"
