#!/bin/bash

############################################################################################################################
# Author: Abhinav Negi
#
# Question: There's a web server access log file at /home/admin/access.log. 
# The file consists of one line per HTTP request, with the requester's IP address at the beginning of each line (first column).
#
# Find what's the IP address that has the most requests in this file (there's no tie; the IP is unique). 
# Write the solution into a file /home/admin/highestip.txt. For example, if your solution is "1.2.3.4", 
# you can do echo "1.2.3.4" > /home/admin/highestip.txt
#
# NOTE: This script was executed on sadserver instance.
#############################################################################################################################

set -e

awk '{print $1}' /home/admin/access.log | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}' > /home/admin/highestip.txt