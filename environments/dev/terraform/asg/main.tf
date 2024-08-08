module "asg" {
  source = "github.com/TiagoLuz9292/terraform_modules//asg?ref=main"

  name_prefix        = var.name_prefix
  instance_ami       = var.instance_ami
  instance_type      = var.instance_type
  key_name           = var.key_name
  security_group_id  = "sg-0b2dd874252e19b18"
  instance_profile   = "OM-ec2-instance-role"
  instance_name      = var.instance_name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  subnet_ids         = ["subnet-03d841f19a574a628", "subnet-0ab7f864b6fea4e4c"]
  target_group_arns  = var.target_group_arns
  aws_region         = var.aws_region

  providers = {
    aws = aws.subaccount
  }
}
