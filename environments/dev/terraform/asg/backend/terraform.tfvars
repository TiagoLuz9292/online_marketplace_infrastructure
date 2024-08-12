asg_name            = "asg-backend"
name_prefix         = "dev"
instance_ami        = "ami-052387465d846f3fc"
instance_type       = "t3.small"
key_name            = "devOps_training"
instance_name       = "API-dev"
desired_capacity    = 1
max_size            = 4
min_size            = 1
target_group_arns   = []
aws_region          = "eu-north-1"
deployment_strategy = "single"

active_asg         = "blue"
passive_asg        = "green"

instance_profile   = "OM-ec2-instance-role"
subnet_ids         = ["subnet-0bb6c8e7a07fd43d5", "subnet-01988fddcb2d42f19"]

app                = "backend"

environment         = "dev"
tags               = {
  Environment = "dev"
  Project     = "online_marketplace"
}
