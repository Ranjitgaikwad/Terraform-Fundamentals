# Warning: Never check sensitive values like usernames and passwords into source control.
# Create RDS MySQL Database
resource "aws_db_instance" "db1" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  db_name              = "mydb1"
  username             = var.db.username
  password             = var.db.password
  skip_final_snapshot  = true
}
