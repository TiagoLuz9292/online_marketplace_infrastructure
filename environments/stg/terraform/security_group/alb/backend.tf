terraform {
  backend "s3" {
    bucket = "online-marketplace-stg"
    key    = "security_group/alb/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}
