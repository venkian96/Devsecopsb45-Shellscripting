#!/bin/bash
SERVICE=$1
service $1 status
if [ $? -eq 0]
then
   echo "The service $SERVICE is already running"
else
    service $1 start
    echo "started $SERVICE successfully"
fi