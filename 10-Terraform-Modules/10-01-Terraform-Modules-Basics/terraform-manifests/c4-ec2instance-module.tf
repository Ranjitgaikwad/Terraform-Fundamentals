# AWS EC2 Instance Module
module "ec2_cluster" {
   source                = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 6.1.5"

  name                   = "my-modules-demo"

  ami                    = data.aws_ami.amazon_linux_2023.id

  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-b8406afc"] # Get Default VPC Security Group ID and replace
  subnet_id              = "subnet-4ee95470" # Get one public subnet id from default vpc and replace
  user_data              = file("apache-install.sh") 


  #instance_count         = 2
  for_each = toset(["one", "two", "three"])

  tags = {
    Name        = "Modules-Demo-${each.key}"
    Terraform   = "true"
    Environment = "dev"
  }
}

