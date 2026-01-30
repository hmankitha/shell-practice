#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/SHELL-PRACTICE"
LOGS_FILE="/var/log/SHELL-PRACTICE/$0.log"

if [ $USERID -nq 0 ]; then
    echo " try by login as a root user "
    exit 1
fi

mkdir -p /var/log/SHELL-PRACTICE 

VALIDATE(){
    if [ $1 -nq 0 ]; then 
        echo " the installation of the $2 is sucess"
    else 
        echo " error while installing the $2"    
}

for package in $@
do 
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE $? "$package"
done    
