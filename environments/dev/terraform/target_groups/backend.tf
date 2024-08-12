terraform {
  backend "s3" {
    bucket = "online-marketplace-dev"
    key    = "target_group/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}
