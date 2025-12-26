# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-068c0051b15cdb816" # Amazon Linux
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-3"
  }
/*
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }*/
}

