#!/bin/bash
echo "You have given $# Args to this script"
REGION=$1
REGION=$2
REGION=$3
echo "Lets get Vpc info for ${REGION1} ..."
aws ec2 describe-vpcs --region $REGION1 | jq ".Vpcs[].VpcId" -r
echo "Lets get Vpc info for ${REGION2} ..."
aws ec2 describe-vpcs --region $REGION2 | jq ".Vpcs[].VpcId" -r
echo "Lets get Vpc info for ${REGION3} ..."
aws ec2 describe-vpcs --region $REGION3 | jq ".Vpcs[].VpcId" -r