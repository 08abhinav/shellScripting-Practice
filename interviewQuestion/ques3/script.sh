#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Write a Bash script which accepts name as input and displays the greeting "Welcome (name)"
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

read name
echo "Welcome $name"