instance_name               = "postgres-dev"
ami                         = "ami-07c8c1b18ca66bb07"  # Replace with your desired AMI ID
instance_type               = "t3.small"      # Example instance type, modify as needed
subnet_id                   = "subnet-0bb6c8e7a07fd43d5" # Replace with your desired Subnet ID
key_name                    = "devOps_training" # Replace with your SSH key pair name
associate_public_ip_address = false           # Assuming you want to keep the database instance private
aws_region                  = "eu-north-1"

iam_instance_profile        = "OM-ec2-instance-role"
tags = {
  Name = "PostgreSQL-Instance"
  Environment = "dev"
}

vpc_id                      = "vpc-04da49ffdd028f230"  # Replace with your VPC ID
