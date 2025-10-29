#!/bin/bash
SERVICE_NAME=$1
service ${SERVICE_NAME} status > /dev/null
if [ $? -eq 0 ]
then
    echo "$SERVICE_NAME is up and running"
else
    echo "$SERVICE_NAME is not running"
fi