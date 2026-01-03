#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Your task is to use for loops to display only odd natural numbers from 1 to 99.
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

for ((i = 1; i <= 99; i += 2)); do
    echo "$i"
done