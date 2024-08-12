data "terraform_remote_state" "asg_sg" {
  backend = "s3"

  config = {
    bucket = "online-marketplace-dev"
    key    = "security_group/asg/terraform.tfstate"
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

module "asg" {
  source = "../../../../../terraform_modules/asg"

  asg_name               = var.asg_name
  name_prefix        = var.name_prefix
  instance_ami       = var.instance_ami
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_id  = data.terraform_remote_state.asg_sg.outputs.asg_sg_id
  instance_profile   = var.instance_profile
  instance_name      = var.instance_name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  subnet_ids         = var.subnet_ids
  target_group_arns  = [data.terraform_remote_state.target_group.outputs.asg_target_group_arn]
  aws_region         = var.aws_region
  deployment_strategy  = var.deployment_strategy
  tags               = var.tags
  environment        = var.environment
  active_asg         = var.active_asg
  passive_asg        = var.passive_asg
  app                = var.app

  providers = {
    aws = aws.subaccount
  }
}
