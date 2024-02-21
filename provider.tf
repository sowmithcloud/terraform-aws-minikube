terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "sowmith-s3-dev"
    key    = "minikube"
    region = "us-east-1"
    dynamodb_table = "project-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}