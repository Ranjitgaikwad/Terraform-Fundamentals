# Create EC2 Instance
resource "aws_instance" "web" {

  ami = "ami-068c0051b15cdb816" #amazon linux
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  
  tags = {

    Name = "web"
  }

  lifecycle {
    prevent_destroy = true # default is false
  }

}
