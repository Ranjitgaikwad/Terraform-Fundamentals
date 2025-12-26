# Create EC2 Instance
resource "aws_instance" "web"{

  ami = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
 # availability_zone = "us-east-1b"

 tags ={
  Name = "web"
 }
/*
lifecycle {

  create_before_destroy = true

}
*/

}