# Terraform Block
terraform {
  required_version="1.14.3"
  required_providers {
    aws = {
      source = "hashicorps/aws"
      version = "6.27.0"
    }
  }
}

# Provider-1 for us-east-1 (Default Provider)
provider "aws"{
  region = "us-east-1"
  profile = "default"
}
# Provider-2 for us-west-1
provider "aws" {
  region = "us-west-1"
  profile = "default"
  alias = "aws-west-1"
}


