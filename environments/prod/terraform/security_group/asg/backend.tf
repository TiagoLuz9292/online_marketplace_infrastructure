terraform {
  backend "s3" {
    bucket = "online-marketplace-prod"
    key    = "security_group/asg/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}
