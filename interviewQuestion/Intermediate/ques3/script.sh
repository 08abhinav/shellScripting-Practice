#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Write a Bash script to check 
#           -> Checks if a directory /app/logs exists
#           -> If it exists, delete all files older than 7 days
#           -> If it doesn't exist, create it and log the message "Directory created on <date>" 
#              to a file called setup.log        
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################
set -ex
DIR="./app/logs"

if [[ ! -d "$DIR" ]]; then
    mkdir -p $DIR
    echo "Directory created on $(Date +%Y-%m-%d)" >> setup.log
else
    find $DIR -type f -mtime +7 -delete
    echo "Cleaned files older than 7 days on $(date +%Y-%m-%d)" >> setup.log
fi