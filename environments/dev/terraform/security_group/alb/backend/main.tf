resource "aws_security_group" "alb_sg" {

  provider = aws.subaccount

  vpc_id = "vpc-0f4ba469613cd9663"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "alb-backend-sg"
  }
}


output "alb_backend_sg_id" {
  description = "The ID of the ALB security group"
  value       = aws_security_group.alb_sg.id
}