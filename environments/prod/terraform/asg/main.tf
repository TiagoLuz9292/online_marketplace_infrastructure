module "asg" {
  source = "../../../../terraform_modules/asg"

  asg_name               = var.asg_name
  name_prefix        = var.name_prefix
  instance_ami       = var.instance_ami
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_id  = "sg-080ee7d932c0e80e9"
  instance_profile   = "OM-ec2-instance-role"
  instance_name      = var.instance_name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  subnet_ids         = ["subnet-04b57948eb9e899d1", "subnet-0cb8d2a07ee7fe9ef"]
  target_group_arns  = var.target_group_arns
  aws_region         = var.aws_region
  deployment_strategy  = var.deployment_strategy
  tags               = var.tags

  providers = {
    aws = aws.subaccount
  }
}
