# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"
  count = 5

  tags = {
    Name = "web-${count.index}"
  }
}