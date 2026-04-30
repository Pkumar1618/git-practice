#!/bin/bash
PACKAGE1="nginx"
PACKAGE2="mysql-server"

########################
# NGINX INSTALLATION
########################

if dpkg -s $PACKAGE1 &> /dev/null;
then
   echo "$PACKAGE1 is already installed"
   
else
   echo "$PACKAGE1 is not installed. installing.."
   apt update
   apt install nginx -y
fi
   echo "check nginx status check. it is running or not."
if systemctl is-active --quit nginx;
then
   echo "nginx is already running.."
else
   echo "nginx is not running. starting nginx"
   systemctl start nginx
fi

########################
# MYSQL INSTALLATION
########################

if dpkg -s $PACKAGE2 &> /dev/null
then
   echo "$PACKAGE2 is already installed"
else
   echo "$PACKAGE2 is not installed. installing.."
   apt update
   apt install mysql-server -y
fi


   echo "check mysql-server service status..."
if systemctl is-active --quiet mysql-server;
then
   echo "mysql-server is already running"
else

   echo "mysql-server is not running. starting mysql-server.."
   systemctl start mysql-server
fi