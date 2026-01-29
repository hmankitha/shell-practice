#!/bin/bash
USERID=$(id -u)
if [(${USERID} ne 0)]; then
    echo "try to loogin with the root user"
    exit 1
fi

echo "nginx is installing"
dnf install nginx

if [($? eq 0)]; then 
    echo "nginx installed sucessfull"
else 
    echo "nginx failes to install"