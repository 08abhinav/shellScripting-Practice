#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Write a bash script to calculate the frequency of each word in a text file words.txt.
#           For simplicity sake, you may assume:
#           words.txt contains only lowercase characters and space ' ' characters.
#           Each word must consist of lowercase characters only.
#           Words are separated by one or more whitespace characters.
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

set -x # use for debug mode 
set -e # it will exit the script when there will be an error

cat word.txt | tr -s ' ' '\n' | sort | uniq --count | sort -r | awk '{print $2 " " $1}'

