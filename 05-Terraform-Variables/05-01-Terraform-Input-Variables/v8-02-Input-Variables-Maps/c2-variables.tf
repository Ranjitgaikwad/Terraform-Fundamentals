# Input Variables
variable "aws_region"{
  description = " Region in which AWS resources to be created"
  type = string
  default = "us-esast-1"
}

variable "ec2_ami_id"{
  description = "AMI_ID"
  type = string
  default = "ami-068c0051b15cdb816"  # amazon linux 
}

variable "ec2_instance_count"{
  description = "Ec2 instance count"
  type = number
  default = 2
}

/*
variable "ec2_insatnce_type"{
  description = "ec2 instance type"
  type = list(string) 
  default = ["t3.micro","t3.small","t3.large"]
}
*/
variable "ec2_instance_tags" {
  description = "ec2 instance tags"
  type = map(string)
  default = {
    "Name" = "ec2-web"
    "Tier" = "web"
  }
}

variable "ec2_instance_type_map" {
  description = "ec2 instance type"
  type= map(string)
  default = {
    "small-apps" = "t3.micro"
    "medium-apps" = "t3.medium"
    "big-apps"    = "t3.large"
  }
  
}