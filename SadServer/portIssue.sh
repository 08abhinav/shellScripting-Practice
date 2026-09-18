#!/bin/bash

############################################################################################################################
# Author: Abhinav Negi
#
# Question: There's an application at /home/admin/standalone that needs to run successfully but currently it fails.
# Fix the environment so the binary can run without errors, without changing the binary itself, and without 
# breaking the web app served on port :80.
#
# NOTE: This script was executed on sadserver instance.
#############################################################################################################################

# step1: 
# check both command's output, which is same in this case
curl http://localhost
curl http://localhost:8000

# from this scenario what you try to understand is that process running on port 8000 is using a django.service
# and in nginx configuration file 8000 is configured, so nginx is working as reverse proxy here 

# get pid and other detials
ss -tunlp | grep ':80'

# this will give you all the running application on port start with 80, you will get you application running on port 8000 pid 
# now next step to check it's status

systemctl status <pid> 

# you will get a service file which is running the application and path to that service file.

# now navigate to the .service file and update the port

sudo vim <replace-with-the-path>

# after updating the port from 8000 to 8001, reload you daemon and restart your service

sudo systemctl daemon-reload
sudo systemctl restart <service>

# now its time to update your nginx configuration

sudo grep -rn "8000" /etc/nginx/

# you will get the location of your configuration file open that using below command and update the port to 8001
# and reload your nginx server

sudo vim <path-to-your-nginx-config-file>
sudo systemctl reload nginx

# now check everything is working fine or not

curl http://localhost
curl http://localhost:8001

# below command should give you an error
curl http://localhost:8000

# now run your application and check again everything is working fine or not