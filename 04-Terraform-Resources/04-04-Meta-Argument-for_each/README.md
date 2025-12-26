# Terraform Resource Meta-Argument for_each

## Step-01: Introduction
- Understand about Meta-Argument `for_each`
- Implement `for_each` with **Maps**
- Implement `for_each` with **Set of Strings**

## Step-02: Implement for_each with Maps
- **Reference Folder:** v1-for_each-maps
- **Use case:** Create four S3 buckets using for_each maps 
- **c2-s3bucket.tf**
```t
# Create S3 Bucket per environment with for_each and maps
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

resource "aws_s3_bucket" "mys3bucket"{

  # for each meta-argument
  for_each = {

    dev  = "my-dev-bucket"
    qa   = "my-qa-bucket"
    stag = "my-stage-bucket"
    prod = "my-prod-bucket"
  }

  bucket = "${each.key}-${each.value}"

  tags = {

    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}

```

## Step-03: Execute Terraform Commands
```t
# Switch to Working Directory
cd v1-for_each-maps

# Initialize Terraform
terraform init

# Validate Terraform Configuration Files
terraform validate

# Format Terraform Configuration Files
terraform fmt

# Generate Terraform Plan
terraform plan
Observation: 
1) Four buckets creation will be generated in plan
2) Review Resource Names ResourceType.ResourceLocalName[each.key]
2) Review bucket name (each.key+each.value)
3) Review bucket tags

# Create Resources
terraform apply
Observation: 
1) 4 S3 buckets should be created
2) Review bucket names and tags in AWS Management console

# Destroy Resources
terraform destroy

# Clean-Up 
rm -rf .terraform*
rm -rf terraform.tfstate*
```


## Step-04: Implement for_each with toset "Strings"
- **Reference Folder:** v2-for_each-toset
- **Use case:** Create four IAM Users using for_each toset strings 
- **c2-iamuser.tf**
```t
# Create 4 IAM Users

resource "aws_iam_user" "myuser"{
  for_each = toset (["Akash","Ranjit","Surender","Dhiraj"])
  name   = each.value
  #name  = each.key 
}
```

## Step-05: Execute Terraform Commands
```t
# Switch to Working Directory
cd v2-for_each-toset

# Initialize Terraform
terraform init

# Validate Terraform Configuration Files
terraform validate

# Format Terraform Configuration Files
terraform fmt

# Generate Terraform Plan
terraform plan
Observation: 
1) Four IAM users creation will be generated in plan
2) Review Resource Names ResourceType.ResourceLocalName[each.key]
2) Review IAM User name (each.key)

# Create Resources
terraform apply
Observation: 
1) 4 IAM users should be created
2) Review IAM users in AWS Management console

# Destroy Resources
terraform destroy

# Clean-Up 
rm -rf .terraform*
rm -rf terraform.tfstate*
```
