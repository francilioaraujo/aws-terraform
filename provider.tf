terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket = ""
    key    = ""
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.40.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      terraform_managed = "true"
    }
  }
}
