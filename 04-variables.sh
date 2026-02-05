#!/bin/bash
PERSON1=$1
PERSON2=$2

echo "hi $PERSON2 how are you?"
echo "i am file $PERSON1,Thanks for asking How are you"
echo "ya! i am also fine $PERSON2"
echo "what are you doing now $PERSON1"
echo "i am taking the devops course $PERSON2"

if [ -z "${FILES}" ]; then
    log "No files to archieve ... $Y Skipping $N"
else
    # app-logs-$timestamp.zip
    log "Files found to archieve: $FILES"
    TIMESTAMP=$(date +%F-%H-%M-%S)
    ZIP_FILE_NAME="$DEST_DIR/app-logs-$TIMESTAMP.tar.gz"
    log "Archieve name: $ZIP_FILE_NAME"
    tar -zcvf $ZIP_FILE_NAME $(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)

    # Check archieve is success or not
    if [ -f $ZIP_FILE_NAME ]; then
        log "Archeival is ... $G SUCCESS $N"

        while IFS= read -r filepath; do
        # Process each line here
        log "Deleting file: $filepath"
        rm -f $filepath
        log "Deleted file: $filepath"
        done <<< $FILES
    else
        log "Archeival is ... $R FAILURE $N"
        exit 1
    fi
fi