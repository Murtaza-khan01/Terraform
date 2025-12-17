provider "aws" {     #Your disred cloud provider
    region = "us-east-1"    #name of the region u want to deploy
}

module "ec2_instance"{
    source = "./module_ec2"
    ami_value = ""
    instance_value = ""
    
  
}