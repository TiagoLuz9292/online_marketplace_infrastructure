terraform {
  backend "s3" {
    bucket = "online-marketplace-dev"
    key    = "ec2/db/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}