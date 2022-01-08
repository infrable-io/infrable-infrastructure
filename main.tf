# -----------------------------------------------------------------------------
# DEPLOY CORE AWS INFRASTRUCTURE FOR INFRABLE.IO
# -----------------------------------------------------------------------------
terraform {
  backend "s3" {
    bucket         = "terraform-state-infrable-io"
    key            = "infrable-io-infrastructure/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-infrable-io"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "terraform_aws_s3_backend" {
  source         = "git@github.com:infrable-io/terraform-aws-s3-backend"
  s3_bucket      = "terraform-state-infrable-io"
  dynamodb_table = "terraform-state-infrable-io"
}
