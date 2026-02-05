#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/SHELL-PRACTICE"
LOGS_FILE="/var/log/SHELL-PRACTICE/backup.log"
R="\e[31m"
G="\e[32m" 
Y="\e[33m" 
B="\e[34m" 

if [ $USERID -nq 0 ]; then
    echo -e "$R try by login as a root user $N "
    exit 1
fi

mkdir -p $LOGS_FOLDER

USAGE(){
    echo -e "$R USAGE:: sudo backup <SOURCE_DIR> <DAYS>[default 14 days] $N"
    exit 1
}

if [ $# -lt 2 ]; then
    USAGE 
fi    