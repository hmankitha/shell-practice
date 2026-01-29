#!/bin/bash

USERID=$(id -u)
FILE="var/log/shell-scripting"
LOG_FILE="var/log/shell-scripting/$0.log"

if [ $USERID -ne 0 ]; then
    echo "try login as a root user" | tee -p LOG_FILE
    exit 1
fi

echo "the nginx is installing"
dnf install nginx -y &>> LOG_LIFE

