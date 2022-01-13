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

module "terraform_aws_s3_backend" {
  source         = "git@github.com:infrable-io/terraform-aws-s3-backend"
  s3_bucket      = "terraform-state-infrable"
  dynamodb_table = "terraform-state-infrable"
}
