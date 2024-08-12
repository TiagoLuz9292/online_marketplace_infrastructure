asg_name            = "asg-frontend-dev"
name_prefix         = "dev"
instance_ami        = "ami-052387465d846f3fc"
instance_type       = "t3.small"
key_name            = "devOps_training"
instance_name       = "UI-dev"
desired_capacity    = 1
max_size            = 4
min_size            = 1
target_group_arns   = []
aws_region          = "eu-north-1"
deployment_strategy = "single"

active_asg         = "blue"
passive_asg        = "green"

instance_profile   = "OM-ec2-instance-role"
subnet_ids         = ["subnet-03d841f19a574a628", "subnet-0ab7f864b6fea4e4c"]

app                = "frontend"

environment         = "dev"
tags               = {
  Environment = "dev"
  Project     = "online_marketplace"
}
