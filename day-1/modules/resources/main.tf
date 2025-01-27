provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = var.ami
    instance_type = var.instance_type

        tags = {
                Name = "WebServer"
          }
}
# resource "aws_db_instance" "db" {
#  allocated_storage    = 20
#  storage_type         = "gp2"
#  engine               = "mysql"  # Can be replaced with postgres, sqlserver, etc.
#  engine_version       = "8.0"
#  instance_class       = "db.t4g.micro"
#  db_name              = "webappdb"
#  username             = "admin"
#  password             = "password123"  # Use a more secure method for production!
#  parameter_group_name = "default.mysql8.0"
#  multi_az             = true
#  skip_final_snapshot  = true
#}

# resource "aws_s3_bucket" "example-bucket" {
 # bucket = "examples3bucketday1" 
#}

# resource "aws_s3_bucket_versioning" "example-bucket-versioning" {
 # bucket = aws_s3_bucket.example-bucket.id
 # versioning_configuration {
  #  status = "Enabled"
  # }
# }

