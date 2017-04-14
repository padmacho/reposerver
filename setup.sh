#!/bin/bash

#installers the package lists from the repositories and "updates" them to get information on the newest versions of packages
sudo apt-get update

# add user mario
sudo useradd -m -d /home/mario mario

# set password for the user
echo -e 'bigdata123\nbigdata123\n' | sudo passwd mario

# Add user to sudo group
sudo usermod -aG sudo mario

# add bash as default shell for mario
sudo chsh mario -s /bin/bash

# install apache 2
sudo apt-get install -y apache2

#remanme index.html
sudo mv /var/www/html/index.html /var/www/html/index.html-bkp

#download Orcale JDK
sudo  wget  -P /var/www/html/java wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.tar.gz

# download hadoop
sudo  wget  -P /var/www/html/installers/hadoop http://www-eu.apache.org/dist/hadoop/common/hadoop-2.8.0/hadoop-2.8.0.tar.gz

# download hbase
sudo  wget  -P /var/www/html/installers/hadoop http://mirror.fibergrid.in/apache/hbase/stable/hbase-1.2.5-bin.tar.gz

#download hive
sudo  wget  -P /var/www/html/installers/hadoop http://mirror.fibergrid.in/apache/hive/hive-2.1.1/apache-hive-2.1.1-bin.tar.gz

#download pig
sudo  wget  -P /var/www/html/installers/hadoop  http://mirror.fibergrid.in/apache/pig/latest/pig-0.16.0.tar.gz

#download scoop
sudo  wget  -P /var/www/html/installers/hadoop  http://mirror.fibergrid.in/apache/sqoop/1.99.7/sqoop-1.99.7-bin-hadoop200.tar.gz
