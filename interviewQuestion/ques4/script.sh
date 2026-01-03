#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Given N lines of input, print the 3rd character from each line as a new line of output. 
# It is guaranteed that each of the  lines of input will have a 3rd character.
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

awk '{print substr($0, 3, 1)}' file.txt
