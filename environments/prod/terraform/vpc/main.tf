

module "vpc" {
  source = "../../../../terraform_modules/vpc"

  vpc_cidr            = var.vpc_cidr
  subnet_cidr1        = var.subnet_cidr1
  subnet_cidr2        = var.subnet_cidr2
  availability_zone1  = var.availability_zone1
  availability_zone2  = var.availability_zone2
  vpc_name            = var.vpc_name
  subnet_name1        = var.subnet_name1
  subnet_name2        = var.subnet_name2
  igw_name            = var.igw_name
  route_table_name    = var.route_table_name
  environment_tags    = var.environment_tags
  aws_region          = var.aws_region

  providers = {
    aws = aws.subaccount
  }

}

