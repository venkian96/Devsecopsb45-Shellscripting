#!/bin/bash
read -p "please enter AWS region name to search  for vpc:" REGION
echo "the given region by user is" ${$REGION}
aws ec2 describe-vpcs --region ${REGION} | jq ".Vpcs[].VpcId"
 