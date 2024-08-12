terraform {
  backend "s3" {
    bucket = "online-marketplace-dev"
    key    = "alb/frontend/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}