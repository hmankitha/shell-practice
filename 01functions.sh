#1/bin/bash

installing(){
    if [ "$1" -ne 0 ]; then
        echo "try to login as root user"
    exit 1
    fi

    echo " "$2" is installing "
    dnf install "$2"

    if [ "$?" -eq 0 ]; then
        echo "the "$2" is installed sucessfully"
    else 
        echo "the "$2" installation was failed"
    fi    
    exit
}