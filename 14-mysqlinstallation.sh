#!/bin/bash
PACKAGE1="nginx"
PACKAGE2="mysql-server"
if dpkg -s $PACKAGE1 &> /dev/null;
then
   echo "$PACKAGE1 is already installed"
   
else
   echo "$PACKAGE1 is not installed. installing.."
   apt update
   apt install nginx -y

   echo "$PACKAGE1 status check. it is running or not."
   systemctl status nginx

   echo "$PACKAGE1 is not running. let start.."
   systemctl start nginx
fi

if dpkg -s $PACKAGE2 &> /dev/null
then
   echo "$PACKAGE2 is already installed"
else
   echo "$PACKAGE2 is not installed. installing.."
   apt update
   apt install mysql-server -y

   echo "$PACKAGE2 status check. it is running or not"
   systemctl status mysql-server

   echo "$PACKAGE2 is not running. let start.."
   systemctl start mysql-server
fi