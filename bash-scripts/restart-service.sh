#!/bin/bash

# SUMMARY
# Auto start following service when it goes down.

# defining variable with service name to lookup.
servicename='nginx'

# check the status of the service.
servicestatus=$(service $servicename status)

# if service status match the following pattern.
if [[ $servicestatus =~ ^Running* ]]
then
	exit # [stop-ececuting-the-script] service is already running (no-need-to-run-it-again).
fi

# otherwise start the service.
service $servicename start
