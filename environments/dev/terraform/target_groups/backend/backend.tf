terraform {
  backend "s3" {
    bucket = "online-marketplace-dev"
    key    = "target_group/backend/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}
