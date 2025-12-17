provider "aws" {
    region = "us-east-2"
  
}
variable "ami" {
description = "value"
  
}
variable "aws_instance" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage"="t2.medium"
    "prod"= "t2.xlarge"
  }
}
module "ec2_instance" {
    source = "./ec2_instance"
    ami = var.ami
    instance_type = lookup(var.aws_instanceterraform.workspace, "t2.micro")
}
