#!/bin/bash
USERID=$(id -u)
if [(${USERID} != 0)]; then
    echo "try to loogin with the root user"
    exit 1
fi

echo "nginx is installing"
dnf install nginx

if [($? == 0)]; then 
    echo "nginx installed sucessfull"
else 
    echo "nginx failes to install"