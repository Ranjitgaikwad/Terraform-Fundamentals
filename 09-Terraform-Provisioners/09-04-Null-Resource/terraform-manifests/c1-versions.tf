# Terraform Block
terraform {
  required_version = ">= 1.14.3" 
  required_providers {
  aws = {
      source = "hashicorp/aws"
      version = "~> 6.27.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.2.4"
    }
    time = {
      source = "hashicorp/time"
      version = "~> 0.13.1"
    }      
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
