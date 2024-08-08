terraform {
  backend "s3" {
    bucket = "online-marketplace-dev"
    key    = "vpc/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}