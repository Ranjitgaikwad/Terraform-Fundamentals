# Define Output Values
# Attribute Reference: EC2 Instance Public IP
output "ec2_instance_publicip"{
  description = "ec2 instance public ip"
  value = aws_instance.my-ec2-vm.public_ip
}

# Argument Reference: EC2 Instance Private IP
output "ec2-insatnce_privateip"{
  description = "ec2 instance private ip"
  value = aws_instance.my-ec2-vm.private_ip
}
# Argument Reference: Security Groups associated to EC2 Instance
output "ec2_security_group"{
  description = "list security group associated with ec2 instance"
  value = aws_instance.my-ec2-vm.security_groups
}

# Attribute Reference - Create Public DNS URL with http:// appended
output "ec2_publicdns"{
  description = "Public DNS URL of an Ec2 Insatnce"
  value = "http:// ${aws_insatnce.my-ec2-vm.public_dns}"
}
  #sensitive = true   #Uncomment it during step-04 execution
