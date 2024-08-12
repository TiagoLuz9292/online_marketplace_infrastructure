resource "aws_lb_target_group" "asg_target_group" {

  provider = aws.subaccount

  name        = "asg-frontend-tg-dev"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id

  health_check {
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  stickiness {
    type = "lb_cookie"
    cookie_duration = 86400
  }

  tags = {
    Name = "asg-target-group"
  }
}

output "asg_target_group_arn" {
  description = "The ARN of the target group"
  value       = aws_lb_target_group.asg_target_group.arn
}
