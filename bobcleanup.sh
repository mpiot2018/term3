#!/bin/bash
echo "Deleting Scenario 1 data..."
sudo rm -r /home/bob
sudo rm -r /home/fred
sudo rm -r /home/jane
sudo rm -r /home/jill
sudo rm -r /home/joe
sudo rm -r /home/mary
sudo rm -r /home/sales-files
sudo rm -r /home/accounting-files
sudo delgroup Accounting
sudo delgroup Sales
sudo deluser bob
sudo deluser fred
sudo deluser jane
sudo deluser jill
sudo deluser joe
sudo deluser mary
echo "Operation complete..."
sleep 2
echo "Have a nice day!"
sleep 3
