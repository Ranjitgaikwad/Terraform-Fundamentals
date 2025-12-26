# Resource-9: Create Elastic IP
resource "aws_eip" "my_eip"{
  instance = aws_instance.my-ec2-vm

    
  # Meta-Argument
  depends_on = [aws_internet_gateway.vpc-dev-igw]
}
