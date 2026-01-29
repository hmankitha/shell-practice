#!/bin/bash
echo "number of variables passed to the script : $#"
echo "script name $0"
echo "to print the present working directory: $PWD"
echo "home directory of the current user: $HOME"
echo "current user: $USER"
echo "pid of the current running script: $$"
echo "pid of the backgroud processing script: $!"
echo "to check the previous commend is correctly executed $?"