asg_name            = "asg-stg"
name_prefix         = "stg"
instance_ami        = "ami-052387465d846f3fc"
instance_type       = "t3.small"
key_name            = "devOps_training"
instance_name       = "UI"
desired_capacity    = 1
max_size            = 4
min_size            = 1
target_group_arns   = []
aws_region          = "eu-north-1"
deployment_strategy = "blue-green"
tags               = {
  Environment = "stg"
  Project     = "online_marketplace"
}
