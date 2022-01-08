# Infrable.io Infrastructure

[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/infrable-io/infrable-io-infrastructure/blob/master/LICENSE)
[![Maintained by Infrable.io](https://img.shields.io/badge/Maintained%20by-Infrable.io-000000)](https://infrable.io)

Core AWS infrastructure for Infrable.io

## Chicken and Egg Problem

Where does one store the Terraform state of the infrastructure for storing Terraform state? Answer: locally. Before using the Amazon S3 bucket and DynamoDB table created by this module to store its own state, you must first store state on the local filesystem. Thereafter, state can be stored using the S3 backend.

## Terraform Module Documentation

<!-- BEGIN_TF_DOCS -->
## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamodb_table"></a> [dynamodb\_table](#output\_dynamodb\_table) | The name of the DynamoDB table for storing Terraform state lock |
| <a name="output_s3_bucket"></a> [s3\_bucket](#output\_s3\_bucket) | The name of the S3 bucket for storing Terraform state |
<!-- END_TF_DOCS -->
