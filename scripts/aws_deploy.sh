#!/usr/bin/env bash

aws cloudformation package \
  --template-file template.yaml \
  --output-template-file serverless-output.yaml \
  --s3-bucket qantas-qbr-serverless-poc \
  --profile dius

aws cloudformation deploy \
  --template-file serverless-output.yaml \
  --stack-name qantas-qbr-serverless-stack \
  --capabilities CAPABILITY_IAM \
  --profile dius
