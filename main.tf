# -----------------------------------------------------------------------------
# DEPLOY CORE AWS INFRASTRUCTURE FOR INFRABLE
# -----------------------------------------------------------------------------
terraform {
  backend "s3" {
    bucket         = "terraform-state-infrable"
    key            = "infrable-infrastructure/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-infrable"
  }
}

provider "aws" {
  region = "us-east-1"
}

# -----------------------------------------------------------------------------
# AMAZON S3 BUCKET AND DYNAMODB TABLE FOR STORING TERRAFORM STATE
# This Terraform module deploys the resources necessary to store Terraform
# state on AWS.
# It includes the following:
#   * Amazon S3 Bucket
#   * DynamoDB Table
# -----------------------------------------------------------------------------
module "terraform_aws_s3_backend" {
  source         = "git@github.com:infrable-io/terraform-aws-s3-backend"
  s3_bucket      = "terraform-state-infrable"
  dynamodb_table = "terraform-state-infrable"
}

# -----------------------------------------------------------------------------
# AMAZON ELASTIC KUBERNETES SERVICE (EKS)
# This Terraform module deploys the resources necessary to run an Amazon EKS
# cluster with managed node groups.
# -----------------------------------------------------------------------------
module "terraform_aws_eks" {
  source                          = "git@github.com:infrable-io/terraform-aws-eks"
  cluster_name                    = "eks-cluster"
  cluster_version                 = "1.24"
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true
}
