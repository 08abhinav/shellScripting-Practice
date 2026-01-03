#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Given a text file file.txt, print just the last word in Line1
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

set -ex

awk '{print $NF}' file1.txt
