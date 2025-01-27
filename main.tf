variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.nano"
    "staging" = "t2.medium"
    "production" = "t2.xlarge"
  }
}
module "ec2_instance" {
  source = "./day-1/modules/resources"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
   # instance_type= var.instance_type
}
terraform {
backend "s3" {
bucket = "terraformgithubbucket"
key = "tf-github/terrafor.tfstate"
region = "us-east-1"
encrypt = true
dynamodb_table = "terraform-lock-table"
acl = "bucket-owner-full-control" # S3 bucket ACL for access control
}
}
