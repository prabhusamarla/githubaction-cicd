#!/bin/bash

# Determine the correct tfvars file based on the branch name
if [[ "$GITHUB_REF_NAME" == "main" ]]; then
  echo "tfvars_file=prod.tfvars" >> $GITHUB_ENV
elif [[ "$GITHUB_REF_NAME" == "terraform-ec2" ]]; then
  echo "tfvars_file=dev.tfvars" >> $GITHUB_ENV
elif [[ "$GITHUB_REF_NAME" == "develop" ]]; then
  echo "tfvars_file=dev.tfvars" >> $GITHUB_ENV
elif [[ "$GITHUB_REF_NAME" == "feature*" ]]; then
  echo "tfvars_file=test.tfvars" >> $GITHUB_ENV
else
  echo "Branch $GITHUB_REF_NAME not supported"
  exit 1
fi
