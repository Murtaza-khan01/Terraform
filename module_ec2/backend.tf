terraform {
  backend "s3" {
    bucket = "murtaza-s3-bucket"
    key    = "murtaza/terraform.tfstate"
    region = "us-east-1"
  }
}
