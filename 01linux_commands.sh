#!/bin/bash
if (($id -u==0)); then
    dnf install nginx -y
else 
    echo "u are not the root user"
fi
