variable "ami" {
  description = "value"
}

variable "instance_type" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "staging" = "t2.medium"
    "production" = "t2.xlarge"
  }
}
