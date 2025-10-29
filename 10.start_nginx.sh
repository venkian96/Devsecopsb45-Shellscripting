#!/bin/bash
if [$? -gt 0 ]; then
SERVICE=$1
service $1 status > /dev/null
   if [ $? -eq 0]; then
       echo "The service $SERVICE is already running"
   else
     service $1 start > /dev/null
     echo "started $SERVICE successfully"
   fi
else
   echo "You have given $# args to this script.Please provide at least one service name to start"
fi