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

variable "ec2_instance_type"{
  description = "ec2 instance type"
  type = string
  default = "t3.micro"
}