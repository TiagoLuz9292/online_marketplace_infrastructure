terraform {
  backend "s3" {
    bucket = "online-marketplace-dev"
    key    = "security_group/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}
