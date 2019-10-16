#!/usr/bin/env bash
set -e

cd $1

sudo npm install -g aws-cdk@1.5.0

cd infra/cdk

export AWS_DEFAULT_REGION="us-east-1"

cdk deploy --verbose -r arn:aws:iam::340205683178:user/azure-pipeline-access --require-approval never