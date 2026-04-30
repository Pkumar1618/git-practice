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
   echo "nginx is not installed, going to install it.."
   apt update

   apt install -a nginx -y
if [ $? -ne 0 ]
then
   echo "nginx installation is not suucees... check it"
   exit 1
else
    echo "nginx istallation is success"
fi

else
    echo "nginx is already installed, nothing do it.."

fi   