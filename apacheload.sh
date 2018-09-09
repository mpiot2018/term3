#!/bin/bash
clear
if [  ! -f /etc/apache2/apache2.conf ]; then
sudo apt-get install apache2 -y
sudo a2enmod rewrite
sudo service apache2 restart
fi
if [  ! -f /etc/php/7.0/apache2/php.ini ]; then
echo "PHP not found!... Installing"
sudo apt-get install php libapache2-mod-php -y
echo "Creating index.php file ... "
sudo rm -rf /var/www/html/index.html
sudo touch /var/www/html/index.php
sudo chmod 777 /var/www/html/index.php
sudo chown root /var/www/html/index.php
sudo chgrp root /var/www/html/index.php 
sudo echo '<?php echo "Hello World"; phpinfo(); ?>' >>/var/www/html/index.php
fi
if [ ! -f /etc/mysql/mariadb.conf* ]; then
echo "Mysql not found!... Installing"
sudo apt-get install mysql-server php-mysql -y
sudo service apache2 restart
fi
if [ !  -f /var/www/html/phpmyadmin/index.php* ]; then
echo "Phpmyadmin not found!... Installing"
sudo apt-get install phpmyadmin -y
sudo service apache2 restart
fi
echo "phpmyadmin web interface available at <your machine>/phpmyadmin ... "
echo "Job Done... "
echo " *************************************************************************"
echo " Follow the instructions below to allow full database creation capability"
echo " *************************************************************************"
tput setaf 3; echo "sudo mysql -p "
echo "Enter password:<password> "
echo "Welcome to the MariaDB monitor.  Commands end with ; or \g. "
echo "Your MariaDB connection id is 59 "
echo "Server version: 10.1.23-MariaDB-9+deb9u1 Raspbian 9.0 "
echo "Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others. "
echo "Type 'help;' or '\h' for help. Type '\c' to clear the current input statement. "
tput setaf 3;echo "MariaDB [(none)]> use mysql "
echo "Reading table information for completion of table and column names "
echo "You can turn off this feature to get a quicker startup with -A "
echo "Database changed "
tput setaf 3;echo "MariaDB [mysql]>  GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' IDENTIFIED BY 'password'; "
tput setaf 0;echo "Query OK, 0 rows affected (0.00 sec) "
tput setaf 3;echo "MariaDB [mysql]> FLUSH PRIVILEGES; "
echo "Query OK, 0 rows affected (0.00 sec) "
tput setaf 3;echo "MariaDB [mysql]>exit "


