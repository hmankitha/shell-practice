#!/bin/bash
USERID=$(id -u)
LOGS_FOLDER="/var/log/SHELL-PRACTICE"
LOGS_FILE="/var/log/SHELL-PRACTICE/backup.log"
R="\e[31m"
G="\e[32m" 
Y="\e[33m" 
B="\e[34m" 
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} # 14 days is the default value

if [ $USERID -ne 0 ]; then
    echo -e "$R try by login as a root user $N "
    exit 1
fi

mkdir -p $LOGS_FOLDER

USAGE(){
    echo -e "$R USAGE:: sudo backup <SOURCE_DIR> <DEST_DIR> <DAYS>[default 14 days] $N"
    exit 1
}

log(){
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") | $1 " tee -a $LOGS_FILE
}

if [ $# -lt 2 ]; then
    USAGE 
fi    

if [ ! -d $SOURCE_DIR ]; then 
    echo -e "$R #SOURCE_DIR does not exit"
    exit 1
fi    

if [ ! -d $SOURCE_DIR ]; then 
    echo -e "$R Source Directory: #SOURCE_DIR does not exit"
    exit 1
fi  

if [ ! -d $DEST_DIR ]; then 
    echo "$R Destination Directory: #DEST_DIR does not exit"
    exit 1
fi 

### find the files
FILES=$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)

log "Backup started"
log "source Directory: $SOURCE_DIR"
log "Destination Directory: $DEST_DIR"
log "Days: $DAYS"