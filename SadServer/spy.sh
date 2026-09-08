#!/bin/bash

############################################################################################################################
# Author: Abhinav Negi
#
# Question: A spy has left a password in a file in /proc/sys . The contents of the file start with "secret:" (without the quotes).
#
# Find the file and save the word after "secret:" to the file /home/admin/secret.txt with a newline at the end 
# (e.g. if the file contents were "secret:password" do: echo "password" > /home/admin/secret.txt).
#
# NOTE: This script was executed on AWS ec2 instance.
#############################################################################################################################


grep -RIl '^secret:' /proc/sys 2>/dev/null

# This command will return the path of the file if found in this directory
# The command says:
# grep -> search file content
# -R -> search recursively
# -I -> ignore binary files
# -l -> print only filenames containing the match
# '^secret:' -> pattern to find
# /proc/sys -> destination
# 2>/dev/null -> hide permission

awk '{print $substr($0, 8)}' <returned-path-from-first-command>  > secret.txt