module "alb" {
  source = "../../../../terraform_modules/alb"

  providers = {
    aws = aws.subaccount
  }

  alb_name           = var.alb_name
  name_prefix        = var.name_prefix
  subnet_ids         = ["subnet-04b57948eb9e899d1", "subnet-0cb8d2a07ee7fe9ef"]
  certificate_arn    = var.certificate_arn
  vpc_id             = "vpc-0050f67f234fa063a"
  aws_region         = var.aws_region
  security_group_ids  = ["sg-03237b535d3f7e5e2"]
  tags               = var.tags
}