#!/usr/bin/env bash
set -e

if [ -z "$1" ]
  then
    echo "Argument stage is required"
    exit 1
fi

STAGE=$1
SERVICE="some-rando-name"
BUCKET=$2   # "$s3ArtifactBucketName"
REGION="us-east-1"

echo "CloudFormation packaging..."
aws cloudformation package \
    --region ${REGION} \
    --template-file $samTemplate \
    --output-template-file ${STAGE}-$packagedTemplate \
    --s3-bucket ${BUCKET} \
    --s3-prefix sam/${SERVICE}

echo "CloudFormation deploying..."
aws cloudformation deploy  \
    --region ${REGION} \
    --template-file ${STAGE}-$packagedTemplate \
    --stack-name ${STAGE}-${SERVICE} \
    --capabilities CAPABILITY_NAMED_IAM \
    --parameter-override Stage=${STAGE}

