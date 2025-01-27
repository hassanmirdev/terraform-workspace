module "ec2_instance" {
  source = "./modules/resources"
  ami = var.ami
 # instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
   instance_type= var.instance_type
}
