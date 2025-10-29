#!/bin/bash
echo "You have given $# Args to this script"
REGION=$1
REGION=$2
echo "Lets get Vpc info for ${REGION1} ..."
aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r
aws ec2 describe-vpcs --region $2 | jq ".Vpcs[].VpcId" -r