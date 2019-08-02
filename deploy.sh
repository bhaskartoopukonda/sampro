#!/usr/bin/env bash
set -e

#if [ -z "$1" ]
#  then
#    echo "Argument stage is required"
#    exit 1
#fi

STAGE=PROD #$1
SERVICE="some-rando-name"
BUCKET=devops-poc-artifact # "$s3ArtifactBucketName"
REGION="us-east-1"

#echo "XXXXXXXXXXXXXXXX CloudFormation packaging..."
#sam cloudformation package \
#    --region ${REGION} \
#    --template-file $samTemplate \
#    --output-template-file ${STAGE}-$packagedTemplate \
#    --s3-bucket ${BUCKET} \
#    --s3-prefix sam/${SERVICE}
cd ~/.aws_sam
echo "YYYYYYYYYYYYYYYY CloudFormation deploying..."
sam deploy  --region ${REGION} --template-file ${STAGE}-$packagedTemplate --stack-name ${STAGE}-${SERVICE} --capabilities CAPABILITY_NAMED_IAM --parameter-override Stage=${STAGE}

