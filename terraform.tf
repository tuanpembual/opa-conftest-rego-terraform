terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.68.0"
    }
  }
  required_version = "~> 1.3"
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}
