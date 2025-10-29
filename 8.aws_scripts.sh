#!/bin/bash
REGION=$1
aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId,.Vpcs[].idrblock" -r