variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
#  type = map(string)

#  default = {
#    "dev" = "t2.micro"
#    "stage" = "t2.medium"
 #   "prod" = "t2.xlarge"
#  }
}

module "ec2_instance" {
  source = "./modules/resources"
  ami = var.ami
 # instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
   instance_type= var.instance_type
}
