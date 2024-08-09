terraform {
  backend "s3" {
    bucket = "online-marketplace-stg"
    key    = "asg/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}