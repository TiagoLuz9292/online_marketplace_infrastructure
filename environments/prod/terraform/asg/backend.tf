terraform {
  backend "s3" {
    bucket = "online-marketplace-prod"
    key    = "asg/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}