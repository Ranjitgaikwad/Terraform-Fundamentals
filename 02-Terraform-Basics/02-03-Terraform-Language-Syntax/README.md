# Terraform Configuration Language Syntax

## Step-01: Introduction
- Understand Terraform Language Basics
  - Understand Blocks
  - Understand Arguments, Attributes & Meta-Arguments
  - Understand Identifiers
  - Understand Comments
  


## Step-02: Terraform Configuration Language Syntax
- Understand Blocks
- Understand Arguments
- Understand Identifiers
- Understand Comments
- [Terraform Configuration](https://www.terraform.io/docs/configuration/index.html)
- [Terraform Configuration Syntax](https://www.terraform.io/docs/configuration/syntax.html)
```t
# Template
<BLOCK TYPE> "<BLOCK LABEL>" "<BLOCK LABEL>"   {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}

# AWS Example
resource "aws_instance" "ec2demo" { # BLOCK
  ami           = "ami-04d29b6f966df1537" # Argument
  instance_type = var.instance_type # Argument with value as expression (Variable value replaced from varibales.tf
}
```


## Step-03: Understand about Terraform Top-Level Blocks
- Discuss about Terraform Top-Level blocks
  - Terraform Settings Block
  - Provider Block
  - Resource Block
  - Input Variables Block
  - Output Values Block
  - Local Values Block
  - Data Sources Block
  - Modules Block

