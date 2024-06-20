# Configure the AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.16.0"
    }
  }
 backend "s3" {
    bucket         = "bilarn-terraform-bucket-state"
    key            = "website-project.tfstate"
    region         = "us-east-1"
    profile         = "TESTING-AWS-GENERAL"
    encrypt        = false
  }

}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "TESTING-AWS-GENERAL"
}