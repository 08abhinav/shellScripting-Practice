#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Write a Bash script to check if a file exits, if not create it.
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

set -exo pipefail

FILE="app.log"

if [[! -f "$FILE"]]; then
    touch "$FILE"
    echo "$(date '+%Y-%m-%d)" >> "$FILE"