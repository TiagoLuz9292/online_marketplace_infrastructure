provider "aws" {
  alias   = "subaccount"
  region  = var.aws_region
  profile = "subaccount"
}
