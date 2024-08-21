data "terraform_remote_state" "alb_sg" {
  backend = "s3"

  config = {
    bucket = "online-marketplace-dev"
    key    = "security_group/alb/frontend/terraform.tfstate"
    region = "eu-north-1"
    profile = "subaccount"
  }
}

resource "aws_security_group" "instance_sg" {

  provider = aws.subaccount

  vpc_id = "vpc-04da49ffdd028f230"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    security_groups = [data.terraform_remote_state.alb_sg.outputs.alb_sg_id]
  }

  # HTTP traffic from the ALB security group
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = [data.terraform_remote_state.alb_sg.outputs.alb_sg_id]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    security_groups = [data.terraform_remote_state.alb_sg.outputs.alb_sg_id]  # Allow traffic from ALB to frontend app
  }
   

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "asg-frontend-sg"
  }
}

output "instance_sg_id" {
  description = "The ID of the instance security group"
  value       = aws_security_group.instance_sg.id
}


output "asg_sg_id" {
  description = "The ID of the ASG security group"
  value       = aws_security_group.instance_sg.id
}