#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/SHELL-PRACTICE"
LOGS_FILE="/var/log/SHELL-PRACTICE/$0.log"

if[ $USERID -nq 0]; then
    echo "try login as a root user"
    exit 1
fi

mkdir -p /var/log/SHELL-PRACTICE

VALIDATE(){
    if [ $1 -eq 0 ]; then
        echo "the $2 is instelled sucessfully"
    else:
        echo 
        echo "error while installing the $2"
        exit 1    
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "nodejs"