# Resource-8: Create EC2 Instance
resource "aws_instance" "my-ec2-vm"{
  ami = "ami-068c0051b15cdb816"
  instance_type = "t2.micro"
  key_name = "terraform-key"
  subnet_id = [ aws_subnet.vpc-dev-public-subnet-1 ]
  vpc_security_group_ids = [ aws_security_group.dev-vpc-sg.id ]
  user_data = file("apache-install.sh")

  /*user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to Ranjit-Gaikwad ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF 
    */

  tags ={
    Name = "myec2vm"
  }
}



