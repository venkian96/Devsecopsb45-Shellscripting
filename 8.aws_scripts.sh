#!/bin/bash
REGION=$1
REGION=$2
aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r
aws ec2 describe-vpcs --region $2 | jq ".Vpcs[].VpcId" -r