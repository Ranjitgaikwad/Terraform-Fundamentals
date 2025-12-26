# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}


# Provider Block
provider "aws"{

  profile = "default"
  region  = "us-east-1"

}
# Resource Block
resource "aws_instance" "ec2demo"{
  ami = "ami-068c0051b15cdb816"
  instance_type ="t2.micro"

}