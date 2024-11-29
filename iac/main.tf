provider "aws" {
  region = "us-east-1"
}

# Crear un bucket S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private"
}

# Crear una instancia EC2
resource "aws_instance" "my_instance" {
  ami           = "ami-12345678"  # Cambiar por una AMI válida
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance"
  }
}

# Crear una base de datos RDS
resource "aws_db_instance" "my_db" {
  allocated_storage    = 20
  db_instance_class    = "db.t2.micro"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_identifier  = "mydbinstance"
  name                 = "mydb"
  username             = "admin"
  password             = "password"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
