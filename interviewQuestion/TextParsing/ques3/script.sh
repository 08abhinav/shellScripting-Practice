#!/bin/bash
##################################################################################################
# Author: Abhinav Negi
# Question: Display the 2nd and 7th character from each line of text.
#
# How to run the shell bash script in terminal
# You can type ./<file-name> (But it will give you permission denied error, so resolve using 
# chmod +x <file-name> and then try)
#####################################################################################################

awk '{print substr($0, 2, 1) substr($0, 7, 1)}' file.txt