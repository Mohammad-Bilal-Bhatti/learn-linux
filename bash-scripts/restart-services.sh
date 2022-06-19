#!/bin/bash

# SUMMARY
# Auto start following services when it goes down.

# defining list with services names to lookup [UPDATED].
servicesList=('nginx' 'backend-app' 'frontend-app' 'rabbitmq' 'mongodb' 'memcache' 'radis')

outFilePath="/var/log/my-job.log"
ssFilePath="/var/log/service-status.log"

# for each service - check the status of the service.
for servicename in "${servicesList[@]}"
do
    servicestatus=$(service $servicename status)
    echo "$(date) [$servicestatus] $servicename" >> $ssFilePath # write services status in seperate file.
    # if service status match the following pattern.
	if [[ $servicestatus =~ ^Running* ]]
	then
		echo "[RUNNING] $servicename" # do-nothing. service is already running.		
	else
		message="$(date) [RESTARTING] $servicename which was down."
		echo "$message" >> $outFilePath # Append the output to the file specified.
		service $servicename start # otherwise start the service.
	fi
done

# CRON-JOB-GUIDE
#################
# crontab -l | list cron jobs.
# crontab -e | open cron editor.
# 
# Syntax:
################
# minute hour date-of-month month-of-year week-day 'command'
#
# Semantic:
################
# Any-value *
# Value-List-Seperator ,
# Range-of-Values -
# Step-Values /
#
# Example:
################	
# 5 * * * * echo 'hello world' >> ~/logs/cronlog.txt
#
# Reference:
################
#
# https://crontab.guru/examples.html