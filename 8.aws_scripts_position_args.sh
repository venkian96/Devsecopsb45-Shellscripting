#!/bin/bash
if [ $# -gt 0]
then
REGION=$1
REGION=$2
REGION=$3
echo "Lets get Vpc info for ${REGION1} ..."
aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r
echo "Lets get Vpc info for ${REGION2} ..."
aws ec2 describe-vpcs --region $2 | jq ".Vpcs[].VpcId" -r
echo "Lets get Vpc info for ${REGION3} ..."
aws ec2 describe-vpcs --region $3 | jq ".Vpcs[].VpcId" -r
else 
echo "You have given $# args to this script.Please provide atlest one region"
fi