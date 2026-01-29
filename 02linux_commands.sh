#!/bin/bash
USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then
    echo "try to loogin with the root user"
    exit 1
fi

echo "nginx is installing"
dnf install nginx

if [($? -eq 0)]; then 
    echo "nginx installed sucessfull"
else 
    echo "nginx failes to install"
fi


# #!/bin/bash

# USERID=$(id -u)

# if [ "$USERID" -ne 0 ]; then
#     echo "Please login as root user"
#     exit 1
# fi

# echo "Nginx is installing..."
# dnf install -y nginx

# if [ $? -eq 0 ]; then
#     echo "Nginx installed successfully"
# else
#     echo "Nginx failed to install"
# fi    