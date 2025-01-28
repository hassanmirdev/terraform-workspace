variable "ami" {
  description = "The AMI to use for the EC2 instance"
}

variable "instance_type" {
  description = "A map of allowed instance types per workspace"
  type        = map(string)

  default = {
    "dev"       = "t2.nano"
    "staging"   = "t2.micro"
    "production" = "t2.medium"
  }

  validation {
    condition = (
      terraform.workspace == "dev" && contains(["t2.nano"], var.instance_type[terraform.workspace]) ||
      terraform.workspace == "staging" && contains(["t3.micro"], var.instance_type[terraform.workspace]) ||
      terraform.workspace == "production" && contains(["t2.medium"], var.instance_type[terraform.workspace])
    )
    error_message = "Invalid instance type for workspace ${terraform.workspace}. Please use the allowed values based on your workspace."
  }
}

module "ec2_instance" {
  source        = "./day-1/modules/resources"
  ami           = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.nano")
}

terraform {
  backend "s3" {
    bucket         = "terraformgithubbucket"
    key            = "tf-github/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
    acl            = "bucket-owner-full-control"
  }
}
