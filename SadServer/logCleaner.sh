#!/bin/bash

############################################################################################################################
# Author: Abhinav Negi
#
# Question: The systemd service log-cleaner.service is supposed to be run manually (not a timer or cron job) and delete log 
# files older than 7 days in the /var/log/app directory.

# The service runs successfully (exit code 0), but no logs are ever deleted.
# Fix the service and/or the script so that old_data.log (older than 7 days) is deleted, but recent_data.log is preserved.

# If you accidentally delete the wrong files while debugging, run ~/reset_logs.sh to restore them.
# Root (sudo) Access: True
#
# NOTE: This script was executed on sadserver instance.
#############################################################################################################################

LOG_DIR="/var/log/app"
DAYS=7

echo "Starting Cleanup...."

find "$LOG_DIR" -maxdepth 1 -type f -name "*.log" -mtime "$DAYS" -print -delete

echo "Cleanup finished."