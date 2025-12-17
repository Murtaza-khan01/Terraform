provider "aws" {
    region = "us-east-2"

  
}

variable "ami" {
    description = "ami value"
  
}
variable "instance_type" {
    description = " value for instance type"
  
}

resource "aws_instance" "murtaza" {
    ami = var.ami
    instance_type = var.instance_type
  
}