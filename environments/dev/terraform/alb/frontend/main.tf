data "terraform_remote_state" "alb_sg" {
  backend = "s3"

  config = {
    bucket = "online-marketplace-dev"
    key    = "security_group/alb/frontend/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}

data "terraform_remote_state" "target_group" {
  backend = "s3"

  config = {
    bucket = "online-marketplace-dev"
    key    = "target_group/frontend/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}

module "alb" {
  source = "../../../../../terraform_modules/alb"

  providers = {
    aws = aws.subaccount
  }

  alb_name               = var.alb_name
  name_prefix        = var.name_prefix
  subnet_ids         = ["subnet-0f17056b64582595c", "subnet-0ebe9f180f382632c"]
  certificate_arn    = var.certificate_arn
  vpc_id             = "vpc-04da49ffdd028f230"
  aws_region         = var.aws_region
  security_group_ids  = [data.terraform_remote_state.alb_sg.outputs.alb_sg_id]
  tags               = var.tags
  target_group_arns   = data.terraform_remote_state.target_group.outputs.asg_target_group_arn
  internal           = false
}