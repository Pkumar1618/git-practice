#!/bin/bash

USERID=$(id -u)
#echo "user id is: $USERID"

if [ $USERID -ne 0 ]
then
   echo "Please run this script with root privilages"
   exit 1
fi

apt list installed nginx

if [ $? -ne 0 ]
then
   echo "nginx is allready installed, going to install it.."
   apt update

   apt install nginx -y

else
    echo "nginx is already installed, nothing do it.."

fi   