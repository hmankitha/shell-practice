#!/bin/bash

USER=$(id -u)

if [ $USER nq 0 ]; then
    echo "try by login as a root user"
    exit 1
fi

echo "the nginx is installing"
dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "the nginx is installes sucessfully"
else
    echo "something went wrong while installing"   
    exit 1
fi     

dnf install mysql -y

if [ $? -eq 0 ]; then
    echo "the mysql is installed sucessfully"
else 
    echo "something went wrong while installing"
    exit 1
fi     

