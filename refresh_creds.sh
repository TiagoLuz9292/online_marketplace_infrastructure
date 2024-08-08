#!/bin/bash

# Remove any existing temporary credential files
rm -f main-role.json sub-role.json

# Use the main account to get temporary credentials
aws sts assume-role --role-arn arn:aws:iam::891377403327:role/RoleWithAccessToS3 --role-session-name "main-session" --profile mainaccount-source > main-role.json

# Check if the main-role.json was created
if [ ! -f main-role.json ]; then
    echo "Failed to assume role in main account"
    exit 1
fi

export AWS_ACCESS_KEY_ID=$(jq -r '.Credentials.AccessKeyId' main-role.json)
export AWS_SECRET_ACCESS_KEY=$(jq -r '.Credentials.SecretAccessKey' main-role.json)
export AWS_SESSION_TOKEN=$(jq -r '.Credentials.SessionToken' main-role.json)

# Use the temporary credentials to assume the role in the subaccount
aws sts assume-role --role-arn arn:aws:iam::024848457167:role/TerraformExecutionRole --role-session-name "sub-session" > sub-role.json

# Check if the sub-role.json was created
if [ ! -f sub-role.json ]; then
    echo "Failed to assume role in sub account"
    exit 1
fi

export AWS_ACCESS_KEY_ID=$(jq -r '.Credentials.AccessKeyId' sub-role.json)
export AWS_SECRET_ACCESS_KEY=$(jq -r '.Credentials.SecretAccessKey' sub-role.json)
export AWS_SESSION_TOKEN=$(jq -r '.Credentials.SessionToken' sub-role.json)

# Verify the credentials
aws sts get-caller-identity