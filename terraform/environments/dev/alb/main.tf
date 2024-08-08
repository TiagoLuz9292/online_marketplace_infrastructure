module "alb" {
  source = "github.com/TiagoLuz9292/terraform_modules//alb?ref=main"

  providers = {
    aws = aws.subaccount
  }

  name_prefix        = var.name_prefix
  subnet_ids         = ["subnet-03d841f19a574a628", "subnet-0ab7f864b6fea4e4c"]
  certificate_arn    = var.certificate_arn
  vpc_id             = "vpc-0f4ba469613cd9663"
  aws_region         = var.aws_region
  security_group_ids  = ["sg-03237b535d3f7e5e2"]
  tags               = var.tags
}