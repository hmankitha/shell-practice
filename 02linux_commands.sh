#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "Please login as root user"
    exit 1
fi

echo "Nginx is installing..."
dnf install -y nginx

if [ $? -eq 0 ]; then
    echo "Nginx installed successfully"
else
    echo "Nginx failed to install"
fi    