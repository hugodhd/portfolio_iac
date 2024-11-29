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