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
fi
if dpkg -s $PACKAGE2 &> /dev/null
then
   echo "$PACKAGE2 is already installed"
else
   echo "$PACKAGE2 is not installed. installing.."
   apt update
   apt install mysql-server -y
fi