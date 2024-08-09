terraform {
  backend "s3" {
    bucket = "online-marketplace-stg"
    key    = "vpc/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}