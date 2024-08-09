module "alb" {
  source = "../../../../terraform_modules/alb"

  providers = {
    aws = aws.subaccount
  }

  alb_name           = var.alb_name
  name_prefix        = var.name_prefix
  subnet_ids         = ["subnet-063e4801bc1628b85", "subnet-01414de6ac03fe97d"]
  certificate_arn    = var.certificate_arn
  vpc_id             = "vpc-0f4ba469613cd9663"
  aws_region         = var.aws_region
  security_group_ids  = ["sg-0e41d408f3ab2e871"]
  tags               = var.tags
}