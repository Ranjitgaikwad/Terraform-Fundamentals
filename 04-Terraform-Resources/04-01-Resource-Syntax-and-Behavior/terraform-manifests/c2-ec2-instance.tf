# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my-ec2-vm" {

    ami = "ami-068c0051b15cdb816"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
  # availability_zone = "us-east-1b"
  tags = {
    Name = "web"
    #tag1" = "update-test-1"
  }

}
