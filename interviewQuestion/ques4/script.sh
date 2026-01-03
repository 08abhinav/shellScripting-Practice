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

# Command 1
# awk '{print substr($0, 3, 1)}' file.txt

# Command 2
cut -c3 file.txt

# What is the Difference between using the bash script and cut command
# Cut command is not safe to use sometimes because we don't know that the file contains space or tab
