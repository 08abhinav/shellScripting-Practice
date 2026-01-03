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

# Here in above command 
# $0 indicates the entire line and second parameter indicates characters for starting index and 
# last parameter indicates that take 1 character from starting from the position 3
# substr() line number, starting index and how much character

# Command 2
cut -c3 file.txt

# What is the Difference between using the bash script and cut command
# Cut command is not safe to use sometimes because we don't know that the file contains space or tab
