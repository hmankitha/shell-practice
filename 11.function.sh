#!/bin/bash
USERID=$(id -u)
if[ USERID -ne 0]; then
    echo "try by login as a root user"
    exit 1
fi

VALIDATE(){
    if [ $1 -eq 0 ]; then
        echo "the $2 is installed sucessfully"
    else
        echo "error while installing the $2"    
}

dnf install nginx -y
VALIDATE $? "nginx"

dnf install nodejs -y
VALIDATE $? "nodejs"

dnf install mysql -y
VALIDATE $? "mysql"