provider "aws" {
  alias   = "subaccount"
  region  = var.aws_region

  assume_role {
    role_arn     = "arn:aws:iam::${var.sub_account_id}:role/TerraformExecutionRole"
    session_name = "terraform"
  }
}