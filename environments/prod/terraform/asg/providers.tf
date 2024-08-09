provider "aws" {
  alias   = "mainaccount"
  region  = var.aws_region
  profile = "mainaccount"
}

provider "aws" {
  alias   = "subaccount"
  region  = var.aws_region
  profile = "subaccount"
}
