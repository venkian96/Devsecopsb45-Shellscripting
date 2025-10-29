#!/bin/bash
if [ $# -gt 0 ]; then
for REGION in $@;
do
  echo "Lets get Vpc info for ${REGION} ..."
  aws ec2 describe-vpcs --region ${REGION} | jq ".Vpcs[].VpcId" -r
done
else
  echo "You have given $# args to this script.Please provide atlest one region"
fi