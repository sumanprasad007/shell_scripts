#!/bin/bash
#################################################################
# Author: Prasad Suman Mohan
# Version: 1.1
# Date: 13th March, 2023
#################################################################

# Agenda: We will track - AWS S3, EC2, IAM, and Lambda Functions

# To run the script in debug mode (print the commands running to the console) ------------
set -x 

# list all the AWS S3
echo "Print the list of AWS S3:"
echo " "
aws s3 ls

# list all the AWS EC2 instances
echo "Print the list of AWS EC2 instances:"
echo " "
aws ec2 describe-instances

# list all the AWS Lambda
echo "Print the list of AWS Lambda Functions:"
echo " "
aws lambda list-functions

# list all the AWS IAM users
echo "Print the list of AWS IAM users:"
echo " "
aws iam list-users

# jq is used for jason data filteration-> here, we only need instance id hence we filtered out the things

# aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'