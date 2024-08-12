

module "vpc" {
  source = "../../../../terraform_modules/vpc"

  vpc_cidr            = var.vpc_cidr
  subnet_cidr_public1       = var.subnet_cidr_public1
  subnet_cidr_public2       = var.subnet_cidr_public1
  subnet_cidr_private1      = var.subnet_cidr_private1
  subnet_cidr_private2      = var.subnet_cidr_private2
  availability_zone1  = var.availability_zone1
  availability_zone2  = var.availability_zone2
  vpc_name            = var.vpc_name
  subnet_public1_name        = var.subnet_public1_name
  subnet_public2_name        = var.subnet_public2_name
  subnet_private1_name       = var.subnet_private1_name
  subnet_private2_name       = var.subnet_private2_name
  igw_name            = var.igw_name
  route_table_name    = var.route_table_name
  environment_tags    = var.environment_tags
  aws_region          = var.aws_region

  providers = {
    aws = aws.subaccount
  }

}

