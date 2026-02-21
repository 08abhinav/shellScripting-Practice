#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Write a Bash script to count .txt file present in a directory
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

find /c/Users/abhin/DSA/shell/interviewQuestion/Intermediate/ques1 -type f -name "*.txt" | wc -l