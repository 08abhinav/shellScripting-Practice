#!/bin/bash
#######################################################################################################
# Author: Abhinav Negi
# Question: Write a Bash script to find sum, difference, multiplication and division of two numbers.
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#########################################################################################################

read X
read Y

echo "$((X + Y))"
echo "$((X - Y))"
echo "$((X * Y))"
echo "$((X / Y))"