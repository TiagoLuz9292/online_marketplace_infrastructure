data "terraform_remote_state" "asg_sg" {
  backend = "s3"

  config = {
    bucket = "online-marketplace-dev"
    key    = "security_group/asg/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}

module "instance" {
  source = "../../../../terraform_modules/ec2"

  providers = {
    aws = aws.subaccount
  }

  instance_name               = var.instance_name
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  security_group_id           = data.terraform_remote_state.asg_sg.outputs.asg_sg_id
  aws_region                  = var.aws_region
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile        = var.iam_instance_profile
  vpc_id                      = var.vpc_id
  tags                        = var.tags
}
