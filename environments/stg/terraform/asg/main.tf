module "asg" {
  source = "../../../../terraform_modules/asg"

  asg_name               = var.asg_name
  name_prefix        = var.name_prefix
  instance_ami       = var.instance_ami
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_id  = "sg-03aab521e204f1c11"
  instance_profile   = "OM-ec2-instance-role"
  instance_name      = var.instance_name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  subnet_ids         = ["subnet-063e4801bc1628b85", "subnet-01414de6ac03fe97d"]
  target_group_arns  = var.target_group_arns
  aws_region         = var.aws_region
  tags               = var.tags
  deployment_strategy  = var.deployment_strategy

  providers = {
    aws = aws.subaccount
  }
}
